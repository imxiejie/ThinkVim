" For startify
let g:startify_padding_left = 40

let s:header = [
      \ '',
      \ '     __         _    _        _    _      _         _      ',
      \ '    / /    ___ | |_ ( ) ___  | |_ | |__  (_) _ __  | | __  ',
      \ '   / /    / _ \| __||/ / __| | __|| |_ \ | || |_ \ | |/ /  ',
      \ '  / /___ |  __/| |_    \__ \ | |_ | | | || || | | ||   <   ',
      \ '  \____/  \___| \__|   |___/  \__||_| |_||_||_| |_||_|\_\  ',
      \ '                                                           ',
      \ '               [ ThinkVim   Author:taigacute ]             ',
      \ '',
      \ ]

let s:footer = [
      \ ' +-------------------------------------------+',
      \ ' |            ThinkVim ^_^                   |',
      \ ' |    Talk is cheap Show me the code         |',
      \ ' |                                           |',
      \ ' |            GitHub:taigacute               |',
      \ ' +-------------------------------------------+',
      \ ]

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
