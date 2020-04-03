# ThinkVim Tutorial

## Structure

The structure of Thinkvim ‼️

- [autoload/](~/.config/nvim/rc) - autoload config about dein and theme
- [core/](~/.config/nvim/rc) - core config file
  - [dein](~/.config/nvim/rc/dein) - _**Plugins list!**_
    - [plugins.yaml](~/.config/nvim/rc/dein/plugins.yaml) - ThinkVim Installed plugins
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath`
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

## How to Install plugins?

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
- you can check  [my .thinkvim.d](https://github.com/taigacute/dotfiles/tree/master/thinkvim) for more usage.

## How to install or change colorscheme

- ThinkVim provide a easy way to change colorscheme, use this keymap `Leader+fc` then thinkvim will write the colorscheme that your choose into cache file,ThinkVim will read this file to load colorscheme when next startup

- Add your favorite coloscheme file into colors folder

## How to use the spaceline

check out the [spaceline config](https://github.com/taigacute/spaceline.vim)

## How to set the Startify

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
-  set this variable value `let g:startify_padding_left`(number) to make startify mid area center. 

## How to config completion

- Completion use LanguageServerProtocol by CoC.nvim.
- ThinkVim has provide the python,go,javascript,typescript support.

  - For python thinkvim used Mpls.it will auto install mpls,if you want use the jedi for python completion change the `python.jediEnable` to true which in coc-settings.json
  - For go used the gopls,you need install the gopls

  ```
  go get golang.org/x/tools/gopls@latest
  ```

  - For javascript/typescript used the coc-tsserver.

- Whats is [Language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- [Supported features](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
- [Register language servers in coc-settings.json](https://github.com/neoclide/coc.nvim/wiki/Language-servers#register-custom-language-servers)
- Checkout the language server protocol list which coc.nvim support,[Coc Wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- the coc has some language support by coc-extensions,just installed that coc-extensions.

  - [Dart](https://github.com/neoclide/coc.nvim/wiki/Language-servers#dart)
  - [C/C++/Objective-C](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c)
  - [Rust](https://github.com/neoclide/coc.nvim/wiki/Language-servers#rust)
  - [Go](https://github.com/neoclide/coc.nvim/wiki/Language-servers#go)
  - [PHP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#php)
  - [Dockerfile](https://github.com/neoclide/coc.nvim/wiki/Language-servers#dockerfile)
  - [Bash](https://github.com/neoclide/coc.nvim/wiki/Language-servers#bash)
  - [Lua](https://github.com/neoclide/coc.nvim/wiki/Language-servers#lua)
  - [OCaml and ReasonML](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ocaml-and-reasonml)
  - [PureScript](https://github.com/neoclide/coc.nvim/wiki/Language-servers#purescript)
  - [Flow](https://github.com/neoclide/coc.nvim/wiki/Language-servers#flow)
  - [Haskell](https://github.com/neoclide/coc.nvim/wiki/Language-servers#haskell)
  - [vim/erb/markdown](https://github.com/neoclide/coc.nvim/wiki/Language-servers#vimerbmarkdown)
  - [Elixir](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elixir)
  - [Python](https://github.com/neoclide/coc.nvim/wiki/Language-servers#python)
  - [Ruby](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ruby)
  - [Scala](https://github.com/neoclide/coc.nvim/wiki/Language-servers#scala)
  - [Latex](https://github.com/neoclide/coc.nvim/wiki/Language-servers#latex)
  - [Elm](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elm)
  - [Fortran](https://github.com/neoclide/coc.nvim/wiki/Language-servers#fortran)
  - [Clojure](https://github.com/neoclide/coc.nvim/wiki/Language-servers#clojure)
  - [Julia](https://github.com/neoclide/coc.nvim/wiki/Language-servers#julia)

[More about Coc](https://github.com/neoclide/coc.nvim)❤️ , thinkvim is centered on coc with coc-extensions,so you should learn more about coc and coc-extensions

### Coc Extensions

Extensions are more powerful than a configured language server. Check out
[Using coc extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions).

- **[coc-json](https://github.com/neoclide/coc-json)** for `json`.
- **[coc-tsserver](https://github.com/neoclide/coc-tsserver)** for `javascript`
  and `typescript`.
- **[coc-html](https://github.com/neoclide/coc-html)** for `html`, `handlebars`
  and `razor`.
- **[coc-css](https://github.com/neoclide/coc-css)** for `css`, `scss` and `less`.
- **[coc-vetur](https://github.com/neoclide/coc-vetur)** for `vue`, use [vetur](https://github.com/vuejs/vetur).
- **[coc-phpls](https://github.com/marlonfan/coc-phpls)** for `php`, use [intelephense-docs](https://github.com/bmewburn/intelephense-docs).
- **[coc-java](https://github.com/neoclide/coc-java)** for `java`, use [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls).
- **[coc-solargraph](https://github.com/neoclide/coc-solargraph)** for `ruby`,
  use [solargraph](http://solargraph.org/).
- **[coc-rls](https://github.com/neoclide/coc-rls)** for `rust`, use
  [Rust Language Server](https://github.com/rust-lang/rls)
- **[coc-r-lsp](https://github.com/neoclide/coc-r-lsp)** for `r`, use [R languageserver](https://github.com/REditorSupport/languageserver).
- **[coc-yaml](https://github.com/neoclide/coc-yaml)** for `yaml`
- **[coc-python](https://github.com/neoclide/coc-python)** for `python`, extension forked from [vscode-python](https://github.com/Microsoft/vscode-python).
- **[coc-highlight](https://github.com/neoclide/coc-highlight)** provides default
  document symbol highlighting and color support.
- **[coc-emmet](https://github.com/neoclide/coc-emmet)** provides emmet
  suggestions in completion list.
- **[coc-snippets](https://github.com/neoclide/coc-snippets)** provides snippets
  solution.
- **[coc-lists](https://github.com/neoclide/coc-lists)** provides some basic
  lists like fzf.vim.
- **[coc-git](https://github.com/neoclide/coc-git)** provides git integration.
- **[coc-yank](https://github.com/neoclide/coc-yank)** provides yank highlights & history.
- **[coc-fsharp](https://github.com/yatli/coc-fsharp)** for `fsharp`.
- **[coc-svg](https://github.com/iamcco/coc-svg)** for `svg`.
- **[coc-tailwindcss](https://github.com/iamcco/coc-tailwindcss)** for `tailwindcss`.
- **[coc-angular](https://github.com/iamcco/coc-angular)** for `angular`.
- **[coc-vimlsp](https://github.com/iamcco/coc-vimlsp)** for `viml`.
- **[coc-xml](https://github.com/fannheyward/coc-xml)** for `xml`, use [lsp4xml](https://github.com/angelozerr/lsp4xml).
- **[coc-elixir](https://github.com/amiralies/coc-elixir)** for `elixir`, based on [elixir-ls](https://github.com/JakeBecker/elixir-ls/).
- **[coc-tabnine](https://github.com/neoclide/coc-tabnine)** for [tabnine](https://tabnine.com/).
- **[coc-powershell](https://github.com/yatli/coc-powershell)** for PowerShellEditorService integration.
- **[coc-omnisharp](https://github.com/yatli/coc-omnisharp)** for `csharp` and `visualbasic`.

Plus more! To get a full list of coc extensions, [search coc.nvim on npm](https://www.npmjs.com/search?q=keywords%3Acoc.nvim),
or use [coc-marketplace](https://github.com/fannheyward/coc-marketplace), which can search and install extensions in coc.nvim directly.

**Note:** use `:CocConfig` to edit the configuration file. Completion & validation are supported after `coc-json` is installed. ThinkVim has installed some cocextensions you can check it in pluginDetail

## KeyMap


