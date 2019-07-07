let s:slc={}
let s:slc.yellow = ['fabd2f', 214]
let s:slc.black = ['000000', 0]
let s:slc.lightgray= ['d7d7d7', 188]
let s:slc.purple = ['5d4d7a', 261]
let s:slc.orange  = ['af5f00', 130]
let s:slc.red = ['cc241d', 124]
let s:slc.blue = ['0087d7', 32]
let s:slc.lightblue = ['6272a4', 225]
let s:slc.darkpurple = ['5f00af', 55]
let s:slc.green = ['afd700', 148]
let s:slc.gray = ['3c3836', 237]
function! spaceline#colorscheme#space#space()
    call spaceline#spaceline#SpaceHL('HomeMode', s:slc, 'black', 'yellow')
    if get(g:,'spaceline_seperate_style', 'arrow') == 'slant'
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'yellow', 'black')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'purple','black')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'purple','black')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'purple',  'black')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,  'purple',  'gray')
    else
        call spaceline#spaceline#SpaceHL('HomeModeRight',s:slc,  'black', 'yellow')
        call spaceline#spaceline#SpaceHL('FileNameRight',s:slc, 'black','purple')
        call spaceline#spaceline#SpaceHL('FileSizeRight',s:slc, 'black','purple')
        call spaceline#spaceline#SpaceHL('GitLeft',s:slc,  'black',  'purple')
        call spaceline#spaceline#SpaceHL('Gitright',s:slc,  'gray',  'purple')
    endif
    call spaceline#spaceline#SpaceHL('FileName', s:slc, 'lightgray', 'black')
    call spaceline#spaceline#SpaceHL('Filesize', s:slc, 'lightgray', 'purple')
    call spaceline#spaceline#SpaceHL('HeartSymbol', s:slc, 'orange',  'black')
    call spaceline#spaceline#SpaceHL('CocError',s:slc,  'red',  'black')
    call spaceline#spaceline#SpaceHL('CocWarn',s:slc,  'blue',  'black')
    call spaceline#spaceline#SpaceHL('GitInfo',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('CocBar',s:slc,  'lightblue',  'gray')
    call spaceline#spaceline#SpaceHL('LineInfoLeft',s:slc,  'purple',  'gray')
    call spaceline#spaceline#SpaceHL('StatusEncod',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('StatusFileFormat',s:slc,  'lightgray',  'purple')
    call spaceline#spaceline#SpaceHL('LineFormatRight',s:slc,  'purple',  'black')
    call spaceline#spaceline#SpaceHL('StatusLineinfo',s:slc,  'lightblue',  'black')
    call spaceline#spaceline#SpaceHL('EndSeperate',s:slc,  'darkpurple',  'yellow')
    call spaceline#spaceline#SpaceHL('VimMode',s:slc,  'green',  'black')
    call spaceline#spaceline#SpaceHL('emptySeperate1',s:slc,  'black',  'gray')
endfunction
