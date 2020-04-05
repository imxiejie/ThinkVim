# ThinkVim Tutorial

## Structure

The structure of Thinkvim ‼️

- [autoload/](~/.config/nvim/rc) - autoload config about dein and theme
- [core/](~/.config/nvim/rc) - core config file
  - [dein](~/.config/nvim/rc/dein) - _**Plugins list!**_
    - [plugins.yaml](~/.config/nvim/rc/dein/plugins.yaml) - ThinkVim Installed plugins
  - [core.vim](~/.config/nvim/rc/init.vim) - the heart of thinkvim
  - [color.vim](~/.config/nvim/rc/color.vim) - thinkvim custom color
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim settings
  - [filetype.vim](~/.config/nvim/rc/general.vim) - filetype settings
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim keymap
- [colors](~/.config/nvim/colors) - Colorscheme
- [modules](~/.config/nvim/modules) - _**Plugins Config!**_
- [ftplugin](~/.config/nvim/ftplugin) - filetypePlugin
- [plugin](~/.config/nvim/plugin) - Some easy plugin

## User Custom

User custom folder `~/.thinkvim.d`,notice the folder must be in your root path `~`,in this folder you should touch two files `plugins.yaml` and `custom.vim`

## Install plugins

I suggest that most of plugins should lazyload by dein ,There has two ways to install plugins.

- if you are a vim begginer or you want to follow master branch,you should use `plugins.yaml`. like you want use choosewin plugin,you can installed it in `plugins.yaml`(notice thinkvim has installed ,just for example)

```yaml
- repo: t9md/vim-choosewin
  on_map: { n: <Plug> }
  hook_source: source  $VIM_PATH/core/layers/tools/choosewin/config.vim
```

- repo means github repo
- on_map is a dein lazyload feature,that mean the plugin will loading when you trigger `on_map` key,
- hook_source is executed before plugins are sourced

Dein is hard to use for some vim begginers，you can check the `core/dein/plugins.yaml` for use.
more useage about [Dein](https://github.com/Shougo/dein.vim/blob/master/doc/dein.txt).

- if you have vimscript skill and not a vim beginner, want change this config to your own config ,you can edit the `core/dein/plugins.yaml`.

the keymap of plugins you should config it in `custom.vim`,th same as installed plugins,if you want follow master branch use `custom.vim`,if you want change to your own config you can edit the `core/plugins/allkey.vim`.

example:

```viml
if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif
```

- If you want to disable some of the plugins I use, you can overwrite them, e.g.:

```
- { repo: tryu/caw.vim, if: 0 }
```

- Your plugin shortcuts should also be based on this format. used `if dein#tap('pluginname')`
- Notice ‼️ the lazyload feature of dein will not loading the default config of plugins, so you should config the keymap of lazyload plugins

register the `custom` keymap to `whichkey`, there are two settings map.

```viml
let g:which_key_map   for leaderkey
let g:which_key_localmap  for localkey
```

example:

```viml
if dein#tap('defx.nvim')
         nnoremap <silent> <Leader>F
                \ :<C-u>Defx -search=`expand('%:p')` `getcwd()`<CR>
endif
let g:which_key_map.F='test'
```

- if you edit the plugins.yaml ,it doesn't work. you can try to recache the cache. use this function `call dein#recache_runtimepath()`
- you can check [my .thinkvim.d](https://github.com/taigacute/dotfiles/tree/master/thinkvim) for more usage.

## change colorscheme

- ThinkVim provide a easy way to change colorscheme, use this keymap `Leader+tc` then thinkvim will write the colorscheme that your choose into cache file,ThinkVim will read this file to load colorscheme when next startup

- Add your favorite coloscheme file into colors folder

## Spaceline

check out the [spaceline config](https://github.com/taigacute/spaceline.vim)

## Startify

- Custom Startify Header And Footer

this is an example to config straify header and footer on your `custom.vim`.

```viml
let s:header = [
      \ '       o',
      \ '        o   ^__^',
      \ '         o  (oo)\_______',
      \ '            (__)\       )\/\',
      \ '                ||----w |',
      \ '                ||     ||',
      \ ]
let s:footer = [
      \ ' [ test custom footer]',
      \ '',
      \ ]

let g:startify_custom_header = Thinkvim_startify_center(s:header)
let g:startify_custom_header = Thinkvim_startify_center(s:footer)

```

- set this variable value `let g:startify_padding_left`(number) to make startify mid area center.

## Completion

Completion use LanguageServerProtocol by [coc.nvim](https://github.com/neoclide/coc.nvim),These files thinkvim is out of the box.
`Html,Css,Json,Yaml,Javascript,Typescript,Go,Python`

- Python
  - thinkvim used Mpls.it will auto install mpls,if you want use the jedi for python completion change the `python.jediEnable` to true which in coc-settings.json
- Go

```
go get golang.org/x/tools/gopls@latest
```

- Other language support,Please check [wiki of coc](https://github.com/neoclide/coc.nvim/wiki/Language-servers) for help.

## Shortcuts

need update ....................!!!
