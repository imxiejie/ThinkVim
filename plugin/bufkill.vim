" bufkill.vim
" Maintainer:	John Orr (john undersc0re orr yah00 c0m)
" Version:	1.14
" Last Change:	29 Apr 2020

" Credits:
" Lucas Arantes and others for helping resolve a long-standing, hopefully
"   spurious warning
" David Emett - for some major bug fixes and logic improvements.
"               (I'm still most impressed you understood the thing)
" D Barsam, and others, for suggestions about optional mappings and commands.
" Dimitar Dimitrov - for improvements in mappings and robustness
" A few people who pointed out bugs I'd fixed but not made public.
" Magnus Thor Torfason - for improvements relating to the 'confirm' setting.
" Keith Roberts - for many hours of email discussions, ideas and suggestions
"   to try to get the details as good as possible.
" Someone from http://www.cs.albany.edu, who described the functionality of
"   this script in tip #622.

" Possible Improvements:
" If you're particularly interested in any of these, let me know - some are
" definitely planned to happen when time permits:
"
" - Provide a function to save window variables as global variables,
"   in order to have them preserved by session saving/restoring commands,
"   and then restore the globals to window variables with another function.
"
" Changelog:
" 1.14 - Convert warning to debug message for certain types of buffers, which
"        appear to be un-named, eg floating windows for fzf in neovim,
"        tabnew, and no doubt others.
" 1.13 - Improve error message behaviour thanks to louwers@github.
"        Fix error when debug enabled thanks to nkgm@github and pavoljuhas@github.
" 1.12 - Convert to bundle format prior to uploading to github
" 1.11 - Major bug fixes by David Emett, especially relating to
"        the creation of new buffers when the last buffer is killed.
"        Also improved restoring of column on console vim.
"        Key mappings can be disabled by setting g:BufKillCreateMappings to 0
" 1.10 - Various fixes, eg relating to quicklists
" 1.9  - Remove unnecessary mapping delays, and a debug message
" 1.8  - Improved mapping handling, and robustness
" 1.7  - Minor improvements.
" 1.6  - Added (opt-in) Ctrl-^ override support to preserve cursor column
" 1.5  - Improved honouring of the 'confirm' vim option.
" 1.4  - Add buffer navigation, support for scratch buffer removal
" 1.3  - Convert to vim 7 lists instead of string-based lists
" 1.2  - Add column-saving support, to ensure returning to a buffer means
"        positioning the cursor not only at the right line, but also column,
"        and prompting the user when removing modified buffers
" 1.1  - Fix handling of modified, un-named buffers
" 1.0  - initial functionality
"
" Implementation Notes:
" w:BufKillList stores the list of buffers accessed so far, in order
"      of most recent access, for each respective window.
" w:BufKillColumnList store the list of columns the cursor was in when
"      a buffer was left.  It follows that since w:BufKillList lists
"      all buffers ever entered, but w:BufKillColumnList lists columns
"      only for those exited, the latter is expected to be one element
"      shorted than the former (since the current buffer should only be
"      entered, but not yet exited).
" w:BufKillIndex stores the current index into the w:BufKillList array

" Reload guard and 'compatible' handling {{{1
let s:save_cpo = &cpo
set cpo&vim

if v:version < 700
  echoe "bufkill.vim requires vim version 7.00 or greater (mainly because it uses the new lists functionality)"
  finish
endif

if exists("loaded_bufkill")
  if !exists('g:Debug')
  finish
  endif " Debug
endif
let loaded_bufkill = 1

function! s:Debug(level, ...) "{{{1
  " Arguments: First argument is always a level value                                (Debug)
  " Subsequent arguments can be any type.                                            (Debug)
  " If they are a string, and that string represents the name of a global            (Debug)
  " variable, the variable name, and it's value, will be printed.                    (Debug)
  " Lists and dictionaries should be handled.                                        (Debug)
  if !exists('g:Debug') || g:Debug < a:level                                       " (Debug)
    return " (Debug) "
  endif                                                                            " (Debug)
                                                                                   " (Debug)
  let s = ''                                                                       " (Debug)
  let i = 1                                                                        " (Debug)
  while i <= a:0                                                                   " (Debug)
    if exists('DebugArg')                                                          " (Debug)
      unlet DebugArg                                                               " (Debug)
    endif                                                                          " (Debug)
    exec "let DebugArg = a:" . i
    let argType = type(DebugArg)                                                   " (Debug)
    if argType == 1  " String                                                        (Debug)
      " String may be a variable name, in which case we print the name first         (Debug)
      if exists(DebugArg)                                                          " (Debug)
        " The string is indeed the name of a variable                                (Debug)
        " Get the name of the variable, then set DebugArg to the value of that variable
        let s = s . DebugArg . " = "                                               " (Debug)
        exec 'let arg2 = ' . DebugArg
        unlet DebugArg                                                             " (Debug)
        let DebugArg = arg2   " Necessary to change the type of DebugArg             (Debug)
      endif                                                                        " (Debug)
    endif                                                                          " (Debug)
    " Now print the value itself                                                     (Debug)
    let s = s . string(DebugArg)                                                   " (Debug)
    if i < a:0                                                                     " (Debug)
      let s = s . ', '                                                             " (Debug)
    endif                                                                          " (Debug)
    let i = i + 1                                                                  " (Debug)
  endwhile                                                                         " (Debug)
  autocmd! CursorHold * echom '--------- Debug ---------'
  let g:DebugEcho = 'echom'
  exec g:DebugEcho . ' s'
endfunction                                                                        " (Debug)

" User configurable variables {{{1
" The following variables can be set in your .vimrc/_vimrc file to override
" those in this file, such that upgrades to the script won't require you to
" re-edit these variables.

" g:BufKillActionWhenBufferDisplayedInAnotherWindow {{{2
" If the buffer you are attempting to kill in one window is also displayed
" in another, you may not want to kill it afterall.  This option lets you
" decide how this situation should be handled, and can take one of the following
" values:
"   'kill' - kill the buffer regardless, always
"   'confirm' - ask for confirmation before removing it
"   'cancel' - don't kill it
" Regardless of the setting of this variable, the buffer will always be
" killed if you add an exclamation mark to the command, eg :BD!
if !exists('g:BufKillActionWhenBufferDisplayedInAnotherWindow')
  let g:BufKillActionWhenBufferDisplayedInAnotherWindow = 'confirm'
endif
call s:Debug(2, 'g:BufKillActionWhenBufferDisplayedInAnotherWindow')

" g:BufKillFunctionSelectingValidBuffersToDisplay {{{2
" When a buffer is removed from a window, the script finds the previous
" buffer displayed in the window.  However, that buffer may have been
" unloaded/deleted/wiped by some other mechanism, so it may not be a
" valid choice.  For some people, an unloaded buffer may be a valid choice,
" for others, no.
" - If unloaded buffers should be displayed, set this
"   variable to 'bufexists'.
" - If unloaded buffers should not be displayed, set this
"   variable to 'buflisted' (default).
" - Setting this variable to 'auto' means that the command :BW will use
"   'bufexists' to decide if a buffer is valid to display, whilst using
"   :BD or :BUN will use 'buflisted'
if !exists('g:BufKillFunctionSelectingValidBuffersToDisplay')
  let g:BufKillFunctionSelectingValidBuffersToDisplay = 'buflisted'
endif
call s:Debug(2, 'g:BufKillFunctionSelectingValidBuffersToDisplay')

" g:BufKillActionWhenModifiedFileToBeKilled {{{2
" When a request is made to kill (wipe, delete, or unload) a modified buffer
" and the "bang" (!) wasn't included in the commend, two possibilities exist:
" 1) Fail in the same way as :bw or :bd would, or
" 2) Prompt the user to save, not save, or cancel the request.
" Possible values are 'fail' (for options 1), and 'confirm' for option 2
" This is similar to the vim 'confirm' option.  Thus, if this variable
" isn't defined, the 'confirm' setting will be adopted.  Since we want
" the most current value of 'confirm', no default value need be set
" for this variable, and it needn't exist.

" g:BufKillOverrideCtrlCaret {{{2
" The standard vim functionality for Ctrl-^ or Ctrl-6 (swap to alternate
" buffer) swaps to the alternate file, and preserves the line within that file,
" but does not preserve the column within the line - instead it goes to the
" start of the line.  If you prefer to go to the same column as well,
" set this variable to 1.
if !exists('g:BufKillOverrideCtrlCaret')
  let g:BufKillOverrideCtrlCaret = 0
endif
call s:Debug(2, 'g:BufKillOverrideCtrlCaret')

" g:BufKillVerbose {{{2
" If set to 1, prints extra info about what's being done, why, and how to
" change it
if !exists('g:BufKillVerbose')
  let g:BufKillVerbose = 1
endif
call s:Debug(2, 'g:BufKillVerbose')

" g:BufKillCreateMappings {{{2
" If set to 1, creates the various mapleader-based mappings.  By default this
" is set to 1 ('true') but users may want to set to 0 ('false') in order to
" define their own mappings or to fix a mapping conflict with another plugin.
let s:BufKillCreateMappings = get(g:,'BufKillCreateMappings',0)

call s:Debug(2, 'g:BufKillCreateMappings')

" g:BufKillCommandPrefix {{{2
" A string that will act as the prefix to all BufKill user commands.  The
" string must adhere to the user command guidelines established in the vim
" help (see :help user-commands).  By default this is set to 'B' but users
" may want to change this in order to define their own commands or to fix
" a command conflict with another plugin.
if !exists('g:BufKillCommandPrefix')
  let g:BufKillCommandPrefix = 'B'
endif
call s:Debug(2, 'g:BufKillCommandPrefix')

" Commands {{{1
"
function! <SID>CreateUniqueCommand(lhs, rhs)
  let command = g:BufKillCommandPrefix.a:lhs
  if exists(':'.command) < 2
    exe 'command -bang '.command.' '.a:rhs
  endif
endfunction
call <SID>CreateUniqueCommand('A'   , ':call <SID>GotoBuffer(''#'',"<bang>")')
call <SID>CreateUniqueCommand('B'   , ':call <SID>GotoBuffer(''bufback'',"<bang>")')
call <SID>CreateUniqueCommand('F'   , ':call <SID>GotoBuffer(''bufforward'',"<bang>")')
call <SID>CreateUniqueCommand('D'   , ':call <SID>BufKill(''bd'',"<bang>")')
call <SID>CreateUniqueCommand('UN'  , ':call <SID>BufKill(''bun'',"<bang>")')
call <SID>CreateUniqueCommand('D'   , ':call <SID>BufKill(''bd'',"<bang>")')
call <SID>CreateUniqueCommand('W'   , ':call <SID>BufKill(''bw'',"<bang>")')
call <SID>CreateUniqueCommand('UNDO', ':call <SID>UndoKill()')

" Keyboard mappings {{{1
"

noremap <Plug>BufKillAlt         :call <SID>GotoBuffer('#', '')<CR>
noremap <Plug>BufKillBangAlt     :call <SID>GotoBuffer('#', '!')<CR>
noremap <Plug>BufKillBack        :call <SID>GotoBuffer('bufback', '')<CR>
noremap <Plug>BufKillBangBack    :call <SID>GotoBuffer('bufback', '!')<CR>
noremap <Plug>BufKillForward     :call <SID>GotoBuffer('bufforward', '')<CR>
noremap <Plug>BufKillBangForward :call <SID>GotoBuffer('bufforward', '!')<CR>
noremap <Plug>BufKillBun         :call <SID>BufKill('bun', '')<CR>
noremap <Plug>BufKillBangBun     :call <SID>BufKill('bun', '!')<CR>
noremap <Plug>BufKillBd          :call <SID>BufKill('bd', '')<CR>
noremap <Plug>BufKillBangBd      :call <SID>BufKill('bd', '!')<CR>
noremap <Plug>BufKillBw          :call <SID>BufKill('bw', '')<CR>
noremap <Plug>BufKillBangBw      :call <SID>BufKill('bw', '!')<CR>
noremap <Plug>BufKillUndo        :call <SID>UndoKill()<CR>

if s:BufKillCreateMappings == 1

  function! <SID>CreateUniqueMapping(lhs, rhs, ...)
    if hasmapto(a:rhs) && !(a:0 == 1 && a:1 == 'AllowDuplicate')
      " The user appears to have defined an alternate mapping for this command
      return
    elseif maparg(a:lhs, 'n') != ""
      " The user appears to have defined a mapping for a:lhs already
      return
    endif
    exec 'nmap <silent> <unique> '.a:lhs.' '.a:rhs
  endfunction

  call <SID>CreateUniqueMapping('<Leader>bb',   '<Plug>BufKillBack')
  call <SID>CreateUniqueMapping('<Leader>bf',   '<Plug>BufKillForward')
  call <SID>CreateUniqueMapping('<Leader>bun',  '<Plug>BufKillBun')
  call <SID>CreateUniqueMapping('<Leader>!bun', '<Plug>BufKillBangBun')
  call <SID>CreateUniqueMapping('<Leader>bd',   '<Plug>BufKillBd')
  call <SID>CreateUniqueMapping('<Leader>!bd',  '<Plug>BufKillBangBd')
  call <SID>CreateUniqueMapping('<Leader>bw',   '<Plug>BufKillBw')
  call <SID>CreateUniqueMapping('<Leader>!bw',  '<Plug>BufKillBangBw')
  call <SID>CreateUniqueMapping('<Leader>bundo','<Plug>BufKillUndo')
  call <SID>CreateUniqueMapping('<Leader>ba',   '<Plug>BufKillAlt')
  if g:BufKillOverrideCtrlCaret == 1
    call <SID>CreateUniqueMapping('<C-^>', '<Plug>BufKillAlt', 'AllowDuplicate')
  endif
endif

function! <SID>BufKill(cmd, bang) "{{{1
" The main function that sparks the buffer change/removal
  let DebugF = 'BufKill'
  call s:Debug(1, DebugF, a:cmd, a:bang)
  if !exists('w:BufKillList')
    echoe "BufKill Error: array w:BufKillList does not exist!"
    echoe "Restart vim and retry, and if problems persist, notify the author!"
    return
  endif
  call s:Debug(2, DebugF, 'w:BufKillList')

  call <SID>SaveWindowPos()

  " Get the buffer to delete - the current one obviously
  let s:BufKillBufferToKill = bufnr('%')
  let s:BufKillBufferToKillPath = expand('%:p')
  call s:Debug(2, DebugF, 's:BufKillBufferToKill')

  " Just to make sure, check that this matches the buffer currently pointer to
  " by w:BufKillIndex - else I've stuffed up
  if s:BufKillBufferToKill != w:BufKillList[w:BufKillIndex]
    echom "BufKill Warning: bufferToKill = ".s:BufKillBufferToKill." != element ".w:BufKillIndex." in the list: (".string(w:BufKillList).")"
    echom "Please notify the author of the circumstances of this message!"
  endif

  " If the buffer is modified, and a:bang is not set, give the same kind of
  " error (or confirmation) as normal bun/bw/bd
  if &modified && strlen(a:bang) == 0
    if exists('g:BufKillActionWhenModifiedFileToBeKilled')
      let s:BufKillActionWhenModifiedFileToBeKilled = g:BufKillActionWhenModifiedFileToBeKilled
    else
      if &confirm
        let s:BufKillActionWhenModifiedFileToBeKilled = 'confirm'
      else
        let s:BufKillActionWhenModifiedFileToBeKilled = 'fail'
      endif
    endif
    if s:BufKillActionWhenModifiedFileToBeKilled =~ '[Ff][Aa][Ii][Ll]'
      echohl ErrorMsg
      echo "No write since last change for buffer '" . bufname(s:BufKillBufferToKill) . "' (add ! to override)"
      echohl None
      return
    elseif s:BufKillActionWhenModifiedFileToBeKilled =~ '[Cc][Oo][Nn][Ff][Ii][Rr][Mm]'
      let options = "&Yes\n&No\n&Cancel"
      let actionAdjustment = 0
      let bufname = bufname(winbufnr(winnr()))
      if bufname == ''
        let bufname = '[No File]'
        let options = "&No\n&Cancel"
        let actionAdjustment = 1
      endif
      let action=confirm("Save Changes in " . bufname . " before removing it?", options)
      if action + actionAdjustment == 1
        " Yes - try to save - if there is an error, cancel
        let v:errmsg = ""
        silent w
        if v:errmsg != ""
          echoerr "Unable to write buffer!"
          return
        endif
      elseif action + actionAdjustment == 2
        " No, abandon changes
        set nomodified
      else
        " Cancel (or any other result), don't do the open
        return
      endif
    else
      echoe "Illegal value (' . s:BufKillActionWhenModifiedFileToBeKilled . ') stored in variable s:BufKillActionWhenModifiedFileToBeKilled, please notify the author"
    endif
  endif

  " Get a list of all windows which have this buffer loaded
  let s:BufKillWindowListWithBufferLoaded = []
  let i = 1
  let buf = winbufnr(i)
  while buf != -1
    if buf == s:BufKillBufferToKill
      let s:BufKillWindowListWithBufferLoaded += [i]
      call s:Debug(2, DebugF, 'Added window ' . i . ' to', 's:BufKillWindowListWithBufferLoaded')
    endif
    let i = i + 1
    let buf = winbufnr(i)
  endwhile
  call s:Debug(2, DebugF, 's:BufKillWindowListWithBufferLoaded')

  " Handle the case where the buffer is displayed in multiple windows
  if len(s:BufKillWindowListWithBufferLoaded) > 1 && strlen(a:bang) == 0
    if g:BufKillActionWhenBufferDisplayedInAnotherWindow =~ '[Cc][Aa][Nn][Cc][Ee][Ll]'
      if g:BufKillVerbose
        echom "Buffer '" . bufname(s:BufKillBufferToKill) . "' displayed in multiple windows - " . a:cmd . " cancelled (add ! to kill anywawy, or set g:BufKillActionWhenBufferDisplayedInAnotherWindow to 'confirm' or 'kill')"
      endif
      return
    elseif g:BufKillActionWhenBufferDisplayedInAnotherWindow =~ '[Cc][Oo][Nn][Ff][Ii][Rr][Mm]'
      let choice = confirm("Buffer '" . bufname(s:BufKillBufferToKill) . "' displayed in multiple windows - " . a:cmd . " it anyway?", "&Yes\n&No", 1)
      if choice != 1
        return
      endif
    elseif g:BufKillActionWhenBufferDisplayedInAnotherWindow =~ '[Rr][Ee][Mm][Oo][Vv][Ee]'
      if g:BufKillVerbose
        echom "Buffer '" . bufname(s:BufKillBufferToKill) . "' displayed in multiple windows - executing " . a:cmd . " anyway."
      endif
      " Fall through and continue
    endif
  endif

  " For each window that the file is loaded in, go to the previous buffer from its list
  let i = 0
  while i < len(s:BufKillWindowListWithBufferLoaded)
    let win = s:BufKillWindowListWithBufferLoaded[i]
    call s:Debug(2, DebugF, 'Got window ' . win . ' from', 's:BufKillWindowListWithBufferLoaded', 'position ' . i)

    " Go to the right window in which to perform the action
    if win > 0
      call s:Debug(2, DebugF, 'Goto window ' . win)
      exec 'normal! ' . win . 'w'
      call s:Debug(2, DebugF, 'Current window ' . winnr())
    endif

    " Go to the previous buffer for this window
    call <SID>GotoBuffer(a:cmd, a:bang)

    let i = i + 1
  endwhile

  " Restore the cursor to the correct window _before_ removing the buffer,
  " since the buffer removal could have side effects on the windows (eg
  " minibuffer disappearing due to not enough buffers)
  call <SID>RestoreWindowPos()

  " Kill the old buffer, but save info about it for undo purposes
  let s:BufKillLastWindowListWithBufferLoaded = s:BufKillWindowListWithBufferLoaded
  let s:BufKillLastBufferKilledPath = s:BufKillBufferToKillPath
  let s:BufKillLastBufferKilledNum = s:BufKillBufferToKill
  " In some cases (eg when deleting the quickfix buffer) the buffer will
  " already have been deleted by the switching to another buffer in its
  " window.  Thus we must check before deleting.
  if bufexists(s:BufKillBufferToKill)
    let killCmd = a:cmd . a:bang . s:BufKillBufferToKill
    call s:Debug(2, DebugF, 'killCmd = ' . killCmd)
    exec killCmd
  else " Debug
    call s:Debug(2, DebugF, 'buffer #'.s:BufKillBufferToKill.' removed during GotoBuffer step')
  endif

  " Restore position if saved.  Needed on console vim, at least, to restore correct column
  call <SID>RestoreView()

  call s:Debug(2, DebugF, 'Exiting')
endfunction

function! <SID>IsBufferNew(buf) "{{{1
  return (bufname(a:buf) == '') && !getbufvar(a:buf, '&modified')
endfunction

function! <SID>SwitchToNewBuffer(bang) "{{1
  let old_bufnum = bufnr('%')

  " if we already have a "new" buffer, switch to it
  for bufnum in range(1, bufnr('$'))
    if bufexists(bufnum) && <SID>IsBufferNew(bufnum) && (bufnum != old_bufnum)
      exec 'b' . a:bang . bufnum
      return
    endif
  endfor

  " try to create a new buffer
  exec 'enew' . a:bang
  if bufnr('%') != old_bufnum
    return
  endif

  " sometimes vim doesn't bother creating a new buffer, eg if you do two enews
  " in a row. it's possible to workaround this by modifying the current buffer
  " before doing the enew...
  let &modifiable = 1
  normal! iforce enew to create a new buffer
  enew!
  let new_bufnum = bufnr('%')
  exec 'b' . old_bufnum
  silent normal! u
  exec 'b' . new_bufnum
endfunction

function! <SID>GotoBuffer(cmd, bang) "{{{1
  "Function to display the previous buffer for the specified window
  " a:cmd is one of
  "     bun - Unloading the current buffer
  "     bd - Deleting the current buffer
  "     bw - Wiping the current buffer
  "     bufback - stepping back through the list
  "     bufforward - stepping forward through the list
  "     # - swap to alternate buffer, if one exists. Use this instead of
  "         Ctrl-^, in order to swap to the previous column of the alternate
  "         file, which does not happen with regular Ctrl-^.
  let DebugF = 'GotoBuffer'
  call s:Debug(1, DebugF, a:cmd)
  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')

  if (a:cmd=='bun' || a:cmd=='bd' || a:cmd=='bw')
    let killing = 1
  else
    let killing = 0
  endif

  if killing
    " Handle the 'auto' setting for
    " g:BufKillFunctionSelectingValidBuffersToDisplay
    let validityFunction = g:BufKillFunctionSelectingValidBuffersToDisplay
    if validityFunction == 'auto'
      " The theory here is that if a person usually uses bd, then buffers
      " they've intended to delete will still exist, but not be listed.  Hence
      " we use buflisted to check if they've deleted the buffer already, so as
      " not to show the ones they've deleted.  If instead they use bw,
      " then the assumption is that to really delete buffers they use bw, so
      " if they've used bd, they were meaning to hide the file from view - but
      " keep it around - hence we should find it if it's only been deleted,
      " hence we use bufexists to look for it.  Yes, it's weak logic - but you
      " can always override it! ;)
      if a:cmd == 'bw'
        let validityFunction = 'bufexists'
      else
        let validityFunction = 'buflisted'
      endif
    endif
    let w:BufKillIndex -= 1
  else
    " Should only be used with undeleted (and unwiped) buffers
    let validityFunction = 'buflisted'

    if a:cmd == 'bufforward'
      let w:BufKillIndex += 1
    elseif a:cmd == 'bufback'
      let w:BufKillIndex -= 1
    elseif a:cmd == '#'
      let bufnum = bufnr('#')
      if bufnum == -1
        echom "E23: No alternate file (error simulated by bufkill.vim)"
        return
      endif
      if bufnum == bufnr('%')
        " If the alternate buffer is also the current buffer, do nothing
        return
      elseif !buflisted(bufnum)
        " Vim just ignores the command in this case, so we'll do likewise
        " Update: it seems it no longer ignores the command in this case
        " but in my experience, I don't want to jump to an unlisted
        " buffer via this command - so I'll continue to ignore it - but notify
        " the user...
        echom "bufkill: Alternate buffer is unlisted buffer ".bufnum." ("
          \ .bufname(bufnum).") - ignoring request"
        return
      endif
      " Find this buffer number in the w:BufKillList
      let w:BufKillIndex = index(w:BufKillList, bufnum)
    endif
  endif

  while 1
    if w:BufKillIndex < 0
      let w:BufKillIndex = 0
    elseif w:BufKillIndex > (len(w:BufKillList) - 1)
      let w:BufKillIndex = len(w:BufKillList) - 1
    endif

    if w:BufKillList[w:BufKillIndex] == bufnr('%')
      if !killing
        echom 'BufKill: already at the limit of the BufKill list'
        return
      endif

      " we're going to kill the current buffer -- we want to switch to a
      " different one...
      if w:BufKillIndex == 0
        if len(w:BufKillList) == 1
          " there are no other buffers in our list. switch to a "new" one
          call <SID>SwitchToNewBuffer(a:bang)
          call <SID>SaveView()
          return
        endif
        let w:BufKillIndex += 1
      else
        let w:BufKillIndex -= 1
      endif
    endif

    let newBuffer = w:BufKillList[w:BufKillIndex]
    let newColumn = w:BufKillColumnList[w:BufKillIndex]

    call s:Debug(2, DebugF, 'newBuffer = ' . newBuffer . ', newColumn = ' . newColumn)
    exec 'let validityResult = '.validityFunction.'(newBuffer)'
    if validityResult
      " buffer is valid: switch to it...
      exec 'b' . a:bang . newBuffer . "|call cursor(line('.')," . newColumn . ')'
      call <SID>SaveView()
      return
    endif

    " buffer isn't valid: remove it from the list
    call remove(w:BufKillList, w:BufKillIndex)
    call remove(w:BufKillColumnList, w:BufKillIndex)
    if a:cmd != 'bufforward'
      let w:BufKillIndex -= 1
      " No change needed for bufforward since we just deleted the element
      " being pointed to, so effectively, we moved forward one spot
    endif
  endwhile

  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')
  call s:Debug(2, DebugF, 'Exiting')
  " redraw  " To hide call Debug messages for now!
endfunction   " GotoBuffer

function! <SID>UpdateList(event) "{{{1
  " Function to update the window list with info about the current buffer
  let DebugF = 'UpdateList'
  call s:Debug(1, DebugF, 'Entering(' . a:event . '): win = ' . winnr() . ', buf = ' . bufnr('%') . ' (' . bufname('%') . ')')
  if !exists('w:BufKillList')
    let w:BufKillList = []
  endif
  if !exists('w:BufKillColumnList')
    let w:BufKillColumnList = []
  endif
  if !exists('w:BufKillIndex')
    let w:BufKillIndex = -1
  endif
  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')
  let bufferNum = bufnr('%')

  if (w:BufKillIndex == -1) || (w:BufKillList[w:BufKillIndex] != bufferNum)
    " Increment index
    let w:BufKillIndex += 1
    if w:BufKillIndex < len(w:BufKillList)
      " The branch is diverging, remove the end of the list
      call remove(w:BufKillList, w:BufKillIndex, -1)
      " Same for column list
      if w:BufKillIndex < len(w:BufKillColumnList)
        call remove(w:BufKillColumnList, w:BufKillIndex, -1)
      endif
    endif
    " Now remove any pre-existing instances of the buffer in the list
    let existingIndex = index(w:BufKillList, bufferNum)
    if existingIndex != -1
      call remove(w:BufKillList, existingIndex)
      let w:BufKillIndex -= 1
      if existingIndex < len(w:BufKillColumnList)
        call remove(w:BufKillColumnList, existingIndex)
      endif
    endif
    " Now add the buffer to the list, at the end
    let w:BufKillList += [bufferNum]
  endif

  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')
  call s:Debug(1, DebugF, 'Exiting (' . a:event . '): ', 'w:BufKillList')
  " redraw  " To hide call Debug messages for now!
endfunction   " UpdateList

function! <SID>UpdateLastColumn(event) "{{{1
  " Function to save the current column and buffer and window numbers,
  let DebugF = 'UpdateColumnList'
  call s:Debug(1, DebugF, 'Entering(' . a:event . '): win = ' . winnr() . ', buf = ' . bufnr('%') . ' (' . bufname('%') . ')')
  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')
  if !exists('w:BufKillList')
    " Just give up for now.
    return
  endif
  let index = index(w:BufKillList, bufnr('%'))
  if index != -1
    " Extend list if required, then set the value
    let w:BufKillColumnList += repeat([0], index - len(w:BufKillColumnList) + 1)
    let w:BufKillColumnList[index] = col('.')
  else
    call s:Debug(2, DebugF, 'UpdateLastColumn failed to find bufnr ' . bufnr('%') . ' in w:BufKillList')
  endif
  call s:Debug(2, DebugF, 'w:BufKillList')
  call s:Debug(2, DebugF, 'w:BufKillColumnList')
  call s:Debug(2, DebugF, 'w:BufKillIndex')
  call s:Debug(1, DebugF, 'Exiting (' . a:event . ')')
  " redraw  " To hide call Debug messages for now!
endfunction

function! <SID>UndoKill() "{{{1
  let DebugF = 'UndoKill'
  call s:Debug(1, DebugF)

  if !exists('s:BufKillLastBufferKilledNum') || !exists('s:BufKillLastBufferKilledPath') || s:BufKillLastBufferKilledNum == -1 || s:BufKillLastBufferKilledPath == ''
    echoe 'BufKill: nothing to undo (only one level of undo is supported)'
  else
    if bufexists(s:BufKillLastBufferKilledNum)
      let cmd = 'b' . s:BufKillLastBufferKilledNum
    elseif filereadable(s:BufKillLastBufferKilledPath)
      let cmd = 'e ' . s:BufKillLastBufferKilledPath
    else
      unlet s:BufKillLastBufferKilledNum
      unlet s:BufKillLastBufferKilledPath
      unlet s:BufKillLastWindowListWithBufferLoaded
      echoe 'BufKill: unable to undo. Neither buffer (' . s:BufKillLastBufferKilledNum . ') nor file (' . s:BufKillLastBufferKilledPath . ') could be found.'
    endif

    " For each window the buffer was removed from, show it again
    call <SID>SaveWindowPos()
    let i = 0
    while i < len(s:BufKillLastWindowListWithBufferLoaded)
      let win = s:BufKillLastWindowListWithBufferLoaded[i]
      call s:Debug(2, DebugF, 'Got window ' . win . ' from', 's:BufKillLastWindowListWithBufferLoaded', 'position ' . i)
      call s:Debug(2, DebugF, 'Goto window ' . win)
      exec 'normal! ' . win . 'w'
      call s:Debug(2, DebugF, 'Current window ' . winnr())
      exec cmd
      let i = i + 1
    endwhile
    call <SID>RestoreWindowPos()

    unlet s:BufKillLastBufferKilledNum
    unlet s:BufKillLastBufferKilledPath
    unlet s:BufKillLastWindowListWithBufferLoaded
  endif
  call s:Debug(2, DebugF, 'Exiting')
endfunction

function! <SID>SaveWindowPos() "{{{1
  " Save the current window, to be able to come back to it after doing things
  " in other windows
  let DebugF = 'SaveWindowPos'
  let s:BufKillWindowPos = winnr()
  call s:Debug(2, DebugF, 'Saving with winnr = ', 's:BufKillWindowPos')
endfunction

function! <SID>RestoreWindowPos() "{{{1
  " Restore the window from it's saved config variable
  let DebugF = 'RestoreWindowPos'
  call s:Debug(2, DebugF, 'Restoring to = ', 's:BufKillWindowPos')
  exec 'normal! ' . s:BufKillWindowPos . 'w'
endfunction

function! <SID>SaveView() "{{{1
  " Function to save the current view to w:BufKillSavedView.  This has been
  " found necessary on console vim in particular, in order return to the
  " correct column when killing a file.
  let DebugF = 'SaveView'
  if exists("*winsaveview")
    let w:BufKillSavedView = winsaveview()
    call s:Debug(2, DebugF, 'SavedView = ', 'w:BufKillSavedView')
  else
    call s:Debug(1, DebugF, 'winsaveview not in this version of Vim, column not reliably saved.')
  endif
endfunction   " SaveView

function! <SID>RestoreView() "{{{1
  " Matching restore function to SaveView
  let DebugF = 'RestoreView'
  if exists("*winrestview") && exists('w:BufKillSavedView')
    call winrestview(w:BufKillSavedView)
    call s:Debug(2, DebugF, 'Restoring to = ', 'w:BufKillSavedView')
    unlet w:BufKillSavedView
  endif
endfunction   " RestoreView

" Autocommands {{{1
"
augroup BufKill
autocmd!
autocmd BufKill WinEnter * call <SID>UpdateList('WinEnter')
autocmd BufKill BufEnter * call <SID>UpdateList('BufEnter')
autocmd BufKill BufAdd * call <SID>UpdateList('BufAdd')
autocmd BufKill WinLeave * call <SID>UpdateLastColumn('WinLeave')
autocmd BufKill BufLeave * call <SID>UpdateLastColumn('BufLeave')
augroup END

" Cleanup and modelines {{{1
let &cpo = s:save_cpo

" vim:ft=vim:fdm=marker:fen:fmr={{{,}}}:
