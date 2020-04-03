" =============================================================================
" Filename: spaceline.vim
" Author: taigacute
" URL: https://github.com/taigacute/spaceline.vim
" License: MIT License
" =============================================================================
let s:slc={}
let s:slc.yellow = ['fabd2f', 214]
let s:slc.navy = ['242B38', 237]
let s:slc.lightgray= ['d7d7d7', 188]
let s:slc.purple = ['5d4d7a', 261]
let s:slc.orange  = ['af5f00', 130]
let s:slc.red = ['cc241d', 124]
let s:slc.blue = ['0087d7', 32]
let s:slc.lightblue = ['6272a4', 225]
let s:slc.darkpurple = ['5f00af', 55]
let s:slc.green = ['afd700', 148]
let s:slc.gray = ['3c3836', 237]
let s:slc.darknavy=[]

" call spaceline#spaceline#Setmidcolor(s:slc.darknavy)

function! s:setcolor(midcolorname)
   let s:bgcolor = synIDattr(hlID("Normal"), "bg")
   if s:bgcolor ==''
     call add(a:midcolorname,'NONE')
   else
     call add(a:midcolorname, join(split(s:bgcolor,'#'),""))
   endif
   " call add(a:midcolorname, s:bgcolor)
   call add(a:midcolorname, 'NONE')
   echo a:midcolorname
endfunction

call s:setcolor(s:slc.darknavy)

function! spaceline#colorscheme#spacev2#spacev2()
    call spaceline#spaceline#SpaceHL('HomeMode', s:slc, 'navy', 'yellow')
    if get(g:,'spaceline_seperate_style', 'arrow') == 'slant'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'yellow', 'navy')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'purple',  'navy')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'purple',  'darknavy')
    elseif get(g:,'spaceline_seperate_style','arrow') == 'slant-cons'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'yellow', 'navy')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'navy',  'purple')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'purple',  'darknavy')
    elseif get(g:,'spaceline_seperate_style','arrow') == 'slant-fade'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'yellow', 'navy')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'navy',  'purple')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'purple','darknavy')
    elseif get(g:,'spaceline_seperate_style', 'arrow') == 'arrow-fade'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'yellow', 'navy')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'purple','navy')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'navy',  'purple')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'purple',  'darknavy')
    elseif get(g:,'spaceline_seperate_style', 'arrow') == 'curve'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'navy', 'yellow')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'navy',  'purple')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'purple',  'darknavy')
    else
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'navy', 'yellow')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'navy','purple')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'navy',  'purple')
        call spaceline#spaceline#SpaceHL('GitRight',s:slc,  'navy',  'purple')
    endif
    call spaceline#spaceline#SpaceHL('FileName', s:slc, 'lightgray', 'navy')
    call spaceline#spaceline#SpaceHL('Filesize', s:slc, 'lightgray', 'purple')
    call spaceline#spaceline#SpaceHL('HeartSymbol', s:slc, 'orange',  'navy')
    call spaceline#spaceline#SpaceHL('CocError',s:slc,  'red',  'navy')
    call spaceline#spaceline#SpaceHL('CocWarn',s:slc,  'blue',  'navy')
    call spaceline#spaceline#SpaceHL('GitInfo',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('CocBar',s:slc,  'lightblue',  'darknavy')
    call spaceline#spaceline#SpaceHL('LineInfoLeft',s:slc,  'purple',  'darknavy')
    if get(g:,'spaceline_seperate_style', 'arrow') == 'arrow-fade' || get(g:,'spaceline_seperate_style','arrow') == 'slant-cons'
        call spaceline#spaceline#SpaceHL('LineFormatRight',s:slc,  'navy',  'purple')
    else
        call spaceline#spaceline#SpaceHL('LineFormatRight',s:slc,  'purple',  'navy')
    endif
    call spaceline#spaceline#SpaceHL('StatusEncod',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('StatusFileFormat',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('StatusLineinfo',s:slc,  'lightblue',  'navy')
    call spaceline#spaceline#SpaceHL('EndSeperate',s:slc,  'darkpurple',  'yellow')
    call spaceline#spaceline#SpaceHL('VimMode',s:slc,  'green',  'navy')
    call spaceline#spaceline#SpaceHL('emptySeperate1',s:slc,  'navy',  'darknavy')
endfunction
