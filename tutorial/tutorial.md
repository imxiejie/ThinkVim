# ThinkVim Tutorial

## Structure

The structure of Thinkvim ‼️

- [core/](~/.config/nvim/rc) - core config file
  - [dein](~/.config/nvim/rc/dein) - _**Plugins list!**_
    - [plugins.yaml](~/.config/nvim/rc/dein/plugins.yaml) - ThinkVim Installed plugins
  - [local](/local) - your custom settings
    - [local_plugins.yaml](/local/local_plugins.yaml) - your plugins
    - [local_settings.vim](/local/local_settings.vim) - your vim settings
  - [plugins](~/.config/nvim/rc/plugins) - _**Plugins Config!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath`
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein Config
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim settings
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim keymap
  - [themes](./config/theme.vim) - Colors
- [colors](~/.config/nvim/colors) - Colorscheme
- [ftplugin](~/.config/nvim/ftplugin) - filetypePlugin
- [plugin](~/.config/nvim/plugin) - Some easy plugin

## User Custom

User custom folder `~/.thinkvim.d`,notice the folder must be in your root path `~`,in this folder you should touch two files `local_plugins.yaml` and `local_settings.vim`

## How to Install plugins?

I suggest that most of plugins should lazyload by dein ,There has two ways to install plugins.

- if you are a vim begginer or you want to follow master branch,you should use `local_plugins.yaml`. like you want use choosewin plugin,you can installed it in `local_plugins.yaml`(notice thinkvim has installed ,just for exmaple)

```yaml
- repo: t9md/vim-choosewin
  on_map: { n: <Plug> }
  hook_source: source  $VIMPATH/core/plugins/vim-choosewin.vim
```

- repo means github repo
- on_map is a dein lazyload feature,that mean the plugin will loading when you trigger `on_map` key,
- hook_source is executed before plugins are sourced

Dein is hard to use for some vim begginers，you can check the `core/dein/plugins.yaml` for use.
more useage about [Dein](https://github.com/Shougo/dein.vim/blob/master/doc/dein.txt).

- if you have vimscript skill and not a vim begginer, want change this config to your own config ,you can edit the `core/dein/plugins.yaml`.

the keymap of plugins you should config it in `local_settings.vim`,th same as intalled plugins,if you want follow master branch use `local_settings.vim`,if you want change to your own config you can edit the `core/plugins/allkey.vim`.

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

register the `local_settings` keymap to `whichkey`, there are two settings map.

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

Here are some plugins that are not installed in Thinkvim, but retain their configuration,If you want to use them, you can install them in `local_plugins.yaml`,like `nerdtree`

```yaml
- repo: scrooloose/nerdtree
  on_map: { n: <Plug> }
  trusted: 1
  hook_post_source: source  $VIMPATH/core/plugins/nerdtree.vim
- repo: tiagofumo/vim-nerdtree-syntax-highlight
  hook_add: |
    let g:NERDTreeSyntaxDisableDefaultExtensions = 1
    let g:NERDTreeDisableExactMatchHighlight = 1
    let g:NERDTreeDisablePatternMatchHighlight = 1
    let g:NERDTreeSyntaxEnabledExtensions = ['go', 'py', 'html', 'css', 'jsx', 'js', 'vim','json','md','c','cpp','java','php','groovy']
- { repo: Xuyuanp/nerdtree-git-plugin, on_source: nerdtree }
```

- local_settings.vim

```viml
if dein#tap('nerdtree')
        "nerdtree
        nnoremap <silent><localleader>e :NERDTreeToggle <CR>
        nnoremap <silent> <localleader>f :NERDTreeFind<CR>
endif
```

- if you edit the plugins.yaml ,it doesnt work. you can try to recache the cache. use this function `call dein#recache_runtimepath()`, or use thinkvim menu `;+m` trigger menu,then choose dein,and choose `ReacheRuntimePath`

## How to install or change colorscheme

- ThinkVim provide a easy way to change colorscheme, use this keymap `Leader+fc` then thinkvim will write the colorscheme that your choose into cache file,ThinkVim will read this file to load colorscheme when next startup

- Add your favorite coloscheme file into colors folder

## How to use the spaceline

check out the [spaceline config](https://github.com/taigacute/spaceline.vim)

## How to set the Startify

Startify can only set the header and footer centerd，set this `let g:startify_padding_left = 40` into your `local_settings.vim`,change the value until the file area centerd on your screen

## How to config completion

- Completion use LanguageServerProtocol by CoC.nvim.
- Whats is [Language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- ThinkVim support javascript typescript python.you dont need to install js ts python server(python you need jedi or Mpls).
- [Supported features](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
- [Register language servers in coc-settings.json](https://github.com/neoclide/coc.nvim/wiki/Language-servers#register-custom-language-servers)
- Checkout the languageserverprotocol list which coc.nvim support,[Coc Wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- the coc has some language support by coc-extensins,just installed that coc-extensins.

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

[More about Coc](https://github.com/neoclide/coc.nvim)❤️ , thinkvim is centerd on coc with coc-extensins,so you should learn more about coc and coc-extensions

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

- Default leader `SPACE` localleader`;` ,The vim keymap in `mappings.vim`,Plugins keymap in `core/plugins/allkey.vim`
- Insertkey like emacs
- if you find the keymap doesnt work , Or the keymap doesnt show in this keylist but in `allkey.vim` ,you can create
  a isse. Welcome PR.

<details><summary><code>Operation</code>👈 Click</summary>
<p>

| Keys        | Mode    | Description                             |
| ----------- | ------- | --------------------------------------- |
| Ctrl + w    | Insert  | delete the whole word                   |
| Ctrl + h    | Insert  | delete `BackSpace`                      |
| Ctrl + d    | Insert  | delete a single char                    |
| Ctrl + u    | Insert  | delete to the beginning of the line     |
| Ctrl + b    | Insert  | move left                               |
| Ctrl + f    | Insert  | move rght                               |
| Ctrl + a    | Insert  | move the head of line                   |
| Ctrl + e    | Insert  | move the end of line                    |
| Ctrl + p    | Command | move up                                 |
| Ctrl + b    | Command | move left                               |
| Ctrl + f    | Command | move right                              |
| Ctrl + a    | Command | move the head of line                   |
| Ctrl + e    | Command | move the end of line                    |
| Ctrl + d    | Command | move the cursors char                   |
| Ctrl + h    | Command | delete `BackSpace`                      |
| Ctrl + S    | Insert  | save                                    |
| Ctrl + Q    | Insert  | save and exit                           |
| Ctrl + o    | Insert  | create a new line                       |
| ] + b       | Normal  | pre buffer                              |
| [ + b       | Normal  | next buffer                             |
| Ctrl + x    | Normal  | delte buffer                            |
| Y           | Normal  | copy utils the end                      |
| j           | Normal  | gj                                      |
| k           | Normal  | gk                                      |
| j           | Visual  | gj                                      |
| k           | Visual  | gj                                      |
| -           | Noraml  | ChooseWin                               |
| , + `Space` | Normal  | Delete trailing spaces                  |
| [ + a       | Normal  | Ale next                                |
| ] + a       | Normal  | Ale pre                                 |
| [ + c       | Normal  | coc next                                |
| ] + c       | Normal  | coc prev                                |
| ] + ]       | Normal  | jump to prev go func                    |
| [ + [       | Normal  | jump to next go func                    |
| gc          | Normal  | caw.vim comment                         |
| gcc         | Normal  | caw.vim uncomment                       |
| ga          | Normal  | EasyAlign                               |
| ga          | Visual  | EasyAlign                               |
| sa          | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| sd          | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| sr          | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| sdb         | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| srb         | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| v           | Visual  | vim-expand-region                       |
| V           | Visual  | vim-expand-region                       |
| zl          | Normal  | Denite Outline for golang               |
| zT          | Normal  | Denite Goroot for golang                |

</p>
</details>

<details><summary><code>Window</code>👈 Click</summary>
<p>

| Keys       | Mode   | Description                       |
| ---------- | ------ | --------------------------------- |
| Ctrl + h   | Normal | move to left window               |
| Ctrl + l   | Noraml | move to right window              |
| Ctrl + j   | Normal | move to down window               |
| Ctrl + k   | Normal | move to up window                 |
| Ctrl + w [ | Normal | the width of window reduce 3      |
| Ctrl + w ] | Normal | the width of window increase 3    |
| Ctrl + f   | Normal | Window scrolling down             |
| Ctrl + b   | Normal | Window scrolling up               |
| Ctrl + d   | Normal | Window scrolls down half a screen |
| Ctrl + u   | Normal | Window scrolls up half a screen   |

</p>
</details>

<details><summary><code>Tab</code>👈 Click</summary>
<p>

| Keys            | Mode   | Description |
| --------------- | ------ | ----------- |
| `<Leader>` + tn | Normal | create tab  |
| `<Leader>` + te | Normal | edit tab    |
| `<Leader>` + tm | Normal | move tab    |

</p>
</details>

<details><summary><code>LeaderKey</code>👈 Click</summary>
<p>

| Keys                        | Mode   | Description                           |
| --------------------------- | ------ | ------------------------------------- |
| `<Leader>` + number         | Normal | number[0-9] choose buffer             |
| `<Leader>` + ca             | Normal | CocDiagnostics                        |
| `<Leader>` + cc             | Normal | CocCommands                           |
| `<Leader>` + ce             | Normal | CocExtensions                         |
| `<Leader>` + cj             | Normal | Cocnext                               |
| `<Leader>` + ck             | Normal | CocPrev                               |
| `<Leader>` + co             | Normal | CocOutline                            |
| `<Leader>` + cr             | Normal | CocResume                             |
| `<Leader>` + cs             | Normal | CocIsymbols                           |
| `<Leader>` + G              | Normal | open Goyo                             |
| `<Leader>` + m              | Normal | open mundo                            |
| `<Leader>` + w              | Normal | save file                             |
| `<Leader>` + -              | Normal | ChooseWin                             |
| `<Leader>` + s              | Normal | open Startify                         |
| `<Leader>` + d              | Normal | open Dash                             |
| `<Leader>` + p              | Normal | Edit the file which in plugins folder |
| `<Leader>` + cf             | Normal | coc Format                            |
| `<Leader>` + fc             | Normal | fzf chage vim colorscheme             |
| `<Leader>` + ff             | Normal | fzf find files                        |
| `<Leader>` + fr             | Normal | fzf rg search                         |
| `<Leader>` + fv             | Normal | fzf Vista Finder                      |
| `<Leader>` + fb             | Normal | fzf find buffer                       |
| `<Leader>` + fw             | Normal | fzf rg search the cursor word         |
| `<Leader>` + fgc            | Normal | fzf gitcommits                        |
| `<Leader>` + fbc            | Normal | fzf gitbcommits                       |
| `<Leader>` + `<Leader>` + w | Normal | Easymotion jump to donw               |
| `<Leader>` + `<Leader>` + b | Normal | Easymotion jump to up                 |
| `<Leader>` + `<Leader>` + f | Normal | Easymotion search for jump            |
| `<Leader>` + gd             | Normal | Gdiff                                 |
| `<Leader>` + gc             | Normal | Gcommit                               |
| `<Leader>` + gb             | Normal | Gblame                                |
| `<Leader>` + gB             | Normal | GBrowse                               |
| `<Leader>` + gS             | Normal | GStatus                               |
| `<Leader>` + gp             | Normal | Git push                              |
| `<Leader>` + gl             | Normal | Denite show all git log               |
| `<Leader>` + gh             | Normal | Denite show git branch                |

</p>
</details>

<details><summary><code>LocalLeaderKey</code>👈 Click</summary>
<p>

| Keys                 | Mode   | Description        |
| -------------------- | ------ | ------------------ |
| `<LocalLeader>` + t  | Normal | Open Tagbar        |
| `<LocalLeader>` + r  | Normal | QuickRun           |
| `<LocalLeader>` + v  | Normal | Open Vista         |
| `<LocalLeader>` + gi | Normal | vim-go GoImpl      |
| `<LocalLeader>` + gd | Normal | vim-go GoDescribe  |
| `<LocalLeader>` + gc | Normal | vim-go GoCallees   |
| `<LocalLeader>` + gC | Normal | vim-go GoCallers   |
| `<LocalLeader>` + gs | Normal | vim-go GoCallstack |

</p>
</details>

<details><summary><code>Denite</code>👈 Click</summary>
<p>

| Keys                | Mode                 | Description        |
| ------------------- | -------------------- | ------------------ |
| `<LocalLeader>` + m | Normal               | Denite Menu        |
| <CR>                | Denite               | Doaction           |
| i                   | Denite               | Open filter buffer |
| d                   | Denite               | Delete             |
| p                   | Denite               | Preview            |
| st                  | Denite               | tabopen            |
| sv                  | Denite               | Vsplit             |
| si                  | Denite               | Split              |
| `'`                 | Denite               | QuickMove          |
| q                   | Denite               | Quit               |
| r                   | Denite               | RedRaw             |
| yy                  | Denite               | Yank               |
| `<Esc>`             | Denite               | Quit               |
| `<C-u>`             | Denite               | Restore Source     |
| `<C-f>`             | Denite               | call Defx          |
| `<C-x>`             | Denite               | Choose Action      |
| `<Space>`           | Denite               | Toggle Select      |
| `<Esc>`             | Denite Filter        | Quit               |
| q                   | Denite Filter        | Quit               |
| `<C-c>`             | Denite Filter        | Quit filter        |
| `<kk>`              | Denite Filter insert | move window        |
| `<kk>`              | Denite Filter normal | move window        |
| `<jj>`              | Denite Filter insert | move window        |
| `<jj>`              | Denite Filter normal | move window        |

</p>
</details>

<details><summary><code>Defx</code>👈 Click</summary>
<p>

| Keys           | Mode   | Description                    |
| -------------- | ------ | ------------------------------ |
| `<Leader>` + e | Normal | open defx                      |
| N              | Defx   | touch new file                 |
| K              | Defx   | touch new folder               |
| `<CR>`         | Defx   | open file or folder            |
| `l`            | Defx   | open file or folder            |
| dd             | Defx   | delete                         |
| r              | Defx   | rename                         |
| .              | Defx   | show ignore files              |
| h              | Defx   | Return to the parent directory |
| q              | Defx   | exit defx                      |
| s              | Defx   | Open in rightwindow vs         |
| i              | Defx   | Open file sp                   |
| yy             | Defx   | copy the path of file          |
| \              | Defx   | show the path of file          |
| c              | Defx   | copy                           |
| m              | Defx   | move                           |
| p              | Defx   | paste                          |
| `<Space>`      | Defx   | multi                          |
| gf             | Defx   | open in denite                 |
| gr             | Defx   | search in denite               |
| w              | Defx   | increase the width             |

</p>
</details>

<details><summary><code>CoC</code>👈 Click</summary>
<p>

| Keys         | Mode          | Description               |
| ------------ | ------------- | ------------------------- |
| Tab          | Select        | Jump                      |
| Tab          | Insert        | completion donw           |
| Shit + Tab   | Insert        | completion up             |
| Ctrl + n     | Insert        | completion down           |
| Ctrl + p     | Insert        | completion up             |
| Ctrl + Space | Normal        | Forced trigger completion |
| `<CR>`       | Insert/Select | Confirm                   |
| K            | Normal        | Show the function doc     |
| gd           | Normal        | jump to defined           |
| gy           | Normal        | coc-type-definition       |
| gi           | Normal        | coc-implementation        |
| gr           | Normal        | coc-references            |
| `[` + g      | Normal        | coc-git-prechunk          |
| `]` + g      | Normal        | coc-git-nextchunk         |

</p>
</details>
