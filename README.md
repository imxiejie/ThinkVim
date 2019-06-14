## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png" width="500" height="400">
</div>

## Commic Custom

| ACG                                                                                                              | 狂赌之渊                                                                                                       |
| ---------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox9thinkvim.png" width="480"  height="300"> | <img src="https://github.com/taigacute/IMG/blob/master/thinkvim/kuangdushenyuan.png" width="480" height="300"> |

## [中文](README-CN.md)

## Feature

- 🚀Fatest StartupTime(Plugins Total:63 40-60ms)
- 💎Modular Plugin Config
- ⚒ Easy to use Easy to hack
- 🌟95% plugins lazyload with dein
- ⚡️Centerd on Coc.nvim, Denite auxiliary
- 🎱Autocompletion by lsp which coc.nvim support
- ⚔️ Fully customizable
- 🌈Comfortable theme gruvbox9

## Required Env

- macos or linux
- neovim >= 0.4.0（cause i used floatwindow,this feature support by neovim 0.4.0 above)
- python3 support
  - pip3 install --user pynvim
- node and yarn
- NerdFont

### Required Tool

- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
- Rouge : `sudo gem install rouge`

## Install

**_1._**

```
git clone --depth=1 https://github.com/taigacute/ThinkVim.git ~/.config/nvim
```

**_2._** open the nvim ,it will auto install dein and plugins,when the plugins install success,it will install coc extensions.  

**_3._** if you see the coc extesions installed success in your vim commandline .Congratulations‼️

## [Language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

- [More about Coc](https://github.com/neoclide/coc.nvim)
- The list is the lsp which coc.nvim support,[Coc Wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- ThinkVim support javascript typescript python.you dont need to install js ts python server.
- [Supported features](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
- [Register custom language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers#register-custom-language-servers)

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
    - [Ruby](https://github.com/neoclide/coc.vim/wiki/Language-servers#ruby)
    - [Scala](https://github.com/neoclide/coc.nvim/wiki/Language-servers#scala)
    - [Latext](https://github.com/neoclide/coc.nvim/wiki/Language-servers#latex)
    - [Elm](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elm)
    - [Fortran](https://github.com/neoclide/coc.nvim/wiki/Language-servers#latex)
    - [clojure](https://github.com/neoclide/coc.nvim/wiki/Language-servers#clojure)
    - [julia](https://github.com/neoclide/coc.nvim/wiki/Language-servers#julia)

## CocExtensions

- The list is coc extensions which i didnt installed,you can found the list that i installed coc extensions under the doc
- **[coc-vetur](https://github.com/neoclide/coc-vetur)** for `vue`, use [vetur](https://github.com/vuejs/vetur).
- **[coc-phpls](https://github.com/marlonfan/coc-phpls)** for `php`, use [intelephense-docs](https://github.com/bmewburn/intelephense-docs).
- **[coc-java](https://github.com/neoclide/coc-java)** for `java`, use [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls).
- **[coc-solargraph](https://github.com/neoclide/coc-solargraph)** for `ruby`, use [solargraph](http://solargraph.org/).
- **[coc-rls](https://github.com/neoclide/coc-rls)** for `rust`, use [Rust Language Server](https://github.com/rust-lang/rls)
- **[coc-yaml](https://github.com/neoclide/coc-yaml)** for `yaml`
- **[coc-yank](https://github.com/neoclide/coc-yank)** provides yank highlights
- **[coc-fsharp](https://github.com/yatli/coc-fsharp)** for `fsharp`.
- **[coc-svg](https://github.com/iamcco/coc-svg)** for `svg`.
- **[coc-tailwindcss](https://github.com/iamcco/coc-tailwindcss)** for `tailwindcss`.
- **[coc-angular](https://github.com/iamcco/coc-angular)** for `angular`.
- **[coc-vimlsp](https://github.com/iamcco/coc-vimlsp)** for `viml`.

## Structure

- [after](~/.config/nvim/after)
  - [ftplugin](~/.config/nvim/after/ftplugin)
    - [go.vim](~/.config/nvim/after/ftplugin/go.vim) - go file
- [autoload](~/.config/nvim/autoload)
  - [lightline](~/.config/nvim/after/autoload/lightline)
    - [colorscheme](~/.config/nvim/after/autoload/lightline/colorscheme) - lightline colorscheme
- [core/](~/.config/nvim/rc) - core config file
  - [dein](~/.config/nvim/rc/dein) - _**Plugins list!**_
    - [dein.toml](~/.config/nvim/rc/dein/dein.toml) - Normal Load Plugins
    - [deinlazy.toml](~/.config/nvim/rc/dein/deinlazy.toml) - LazyLoad Plugins
  - [plugins](~/.config/nvim/rc/plugins) - _**Plugins Config!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath`
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein Config
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim settings
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim keymap
  - [themes](./config/theme.vim) - Colors
- [colors](~/.config/nvim/colors) - Colorscheme
- [ftplugin](~/.config/nvim/ftplugin) - filetypePlugin
- [plugin](~/.config/nvim/plugin) - Some easy plugin

## LoadPlugins

| Name                                                                                      | Description     |
| ----------------------------------------------------------------------------------------- | --------------- |
| [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)                         | Statusline      |
| [mengelbrecht/lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline) | Tabline         |
| [neoclide/coc.nvim](https://github.com/mengelbrecht/lightline-bufferline)                 | Autocompletaion |
| [hona/vim-snippets](https://github.com/hona/vim-snippets)                                 | Snippets        |

## LazyLoadPlugins

| Name                                                                                         | Description                                         |
| -------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)              | Provide ctags/gtags                                 |
| [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                                  | Startify                                            |
| [tyru/caw.vim](https://github.com/tyru/caw.vim)                                              | Comment Plugins                                     |
| [t9md/vim-choosewin](https://github.com/t9md/vim-choosewin)                                  | Easy to jump window                                 |
| [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)                          | Provide the Icons                                   |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                  | Git Plugins                                         |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)                                      | Search File Word                                    |
| [hona/dockerfile.vim](https://github.com/hona/dockerfile.vim)                                | Dockerfile Supporte                                 |
| [junegunn/vim-easyalign](https://github.com/junegunn/vim-easyalign)                          | Easy Align                                          |
| [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim)                                    | Distraction-free writing                            |
| [junegunn/limelight](https://github.com/junegunn/limelight)                                  | Hyperfocus-writing                                  |
| [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                                | Indent Line                                         |
| [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                                      | Operate Repeat                                      |
| [sbdchd/neoformat](https://github.com/sbdchd/neoformat)                                      | Format                                              |
| [yuttie/comfortable-motion.vim](https://github.com/yonchu/yuttie/comfortable-motion.vim)     | Scroll                                              |
| [chemzqm/vim-easygit](https://github.com/chemzqm/vim-easygit)                                | Git wrapper focus on simplity and usability         |
| [chemzqm/denite-git](https://github.com/chemzqm/denite-git)                                  | gitlog, gitstatus and gitchanged sources            |
| [thinca/quickrun](https://github.com/thinca/quickrun)                                        | Quick Run                                           |
| [tpope/vim-markdown](https://github.com/tpope/vim-markdown)                                  | Markdown syntax highlighting                        |
| [junegunn/vim-emoji](https://github.com/junegunn/vim-emoji)                                  | emoji                                               |
| [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo)                          | Ultimate mundo history visualizer                   |
| [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)                            | Create your own text objects                        |
| [kana/vim-operator-user](https://github.com/kana/vim-operator-user)                          | Define your own custom operators                    |
| [osyo-manga/vim-textobj-multiblock](https://github.com/osyo-manga/vim-textobj-multiblock)    | Handle bracket objects                              |
| [rhysd/vim-operator-surround](https://github.com/rhysd/vim-operator-surround)                | Operator to enclose text objects                    |
| [kana/vim-operator-replace](https://github.com/kana/vim-operator-replace)                    | Operator to replace text with register content      |
| [rhysd/accelerated-jk](https://github.com/rhysd/accelerated-jk)                              | Up/down movement acceleration                       |
| [bps/vim-textobj-python](https://github.com/bps/vim-textobj-python)                          | pythontextobject                                    |
| [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)                          | Multiple cursors project                            |
| [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)                    | Visually select increasingly larger regions of text |
| [liuchengxu/vim-which-key](https://github.com/liuchengxu/vim-which-key)                      | Find the key                                        |
| [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)                    | Vim motions on speed                                |
| [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)                                      | Dark powered file explorer implementation           |
| [kristijanhusak/defx-icons](https://github.com/https://github.com/kristijanhusak/defx-icons) | Filetype icons for Defx                             |
| [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)                          | Git status implementation for Defx                  |
| [airblade/vim-rooter](https://github.com/airblade/vim-rooter)                                | Changes Vim working directory to project root       |
| [majutsushi/tagbar](https://github.com/majutsushi/tagbar)                                    | Displays tags in a window, ordered by scope         |
| [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim)                              | Viewer & Finder for LSP symbols and tags            |
| [mattn/emmet-vim](https://github.com/mattn/emmet-vim)                                        | coc-emmet instead                                   |
| [Shougo/denite.nvim](https://github.com/Shougo/denite.nvim)                                  | Dark powered asynchronous unite all interfaces      |
| [w0rp/ale](https://github.com/w0rp/ale)                                                      | Check syntax in Vim asynchronously and fix files    |
| [othree/html5.vim](https://github.com/othree/html5.vim)                                      | HTML5 omnicomplete and syntax Worked with coc-html  |
| [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)                      | js jsx                                              |
| [vim-python/python-syntax](https://github.com/vim-python/python-syntax)                      | Enhanced version of the original Python syntax      |
| [Vimjas/vim-python-pep8-index](https://github.com/Vimjas/vim-python-pep8-index)              | A nicer Python indentation style                    |
| [vim-scripts/python_match.vx](https://github.com/vim-scripts/python_match)                   | Extend the % motion for Python files                |
| [tmhedberg/SimpylFold](https://github.com/tmhedberg/SimpylFold)                              | No-BS Python code folding                           |
| [fatih/vim-go](https://github.com/fatih/vim-go)                                              | go development                                      |
| [elzr/vim-json](https://github.com/elzr/vim-json)                                            | json                                                |
| [cespare/vim-toml](https://github.com/cespare/vim-toml)                                      | toml                                                |
| [vim-scripts/xml.vim](https://github.com/vim-scripts/xml.vim)                                | xml                                                 |

## CoC Extensions

| Name                                                       | Description                                    |
| ---------------------------------------------------------- | ---------------------------------------------- |
| [coc-html](https://github.com/neoclide/coc-html)           | html extensins                                 |
| [coc-emmet](https://github.com/neoclide/coc-emmet)         | emmet                                          |
| [coc-css](https://github.com/neoclide/coc-css)             | css                                            |
| [coc-imselect](https://github.com/neoclide/coc-imselect)   | enhance input                                  |
| [coc-emoji](https://github.com/neoclide/coc-emoji)         | emoji completion                               |
| [coc-lists](https://github.com/neoclide/coc-lists)         | coclists                                       |
| [coc-snippets](https://github.com/neoclide/coc-snippets)   | snippets extension instead Utilsnippets        |
| [coc-prettier](https://github.com/neoclide/coc-prettier)   | Format                                         |
| [coc-eslint](https://github.com/neoclide/coc-eslint)       | eslint check                                   |
| [coc-stylelint](https://github.com/neoclide/coc-stylelint) | stylelint check                                |
| [coc-tsserver](https://github.com/neoclide/coc-tsserver)   | js/ts lsp                                      |
| [coc-pairs](https://github.com/neoclide/coc-pairs)         | pairs completion                               |
| [coc-json](https://github.com/neoclide/coc-json)           | json server                                    |
| [coc-python](https://github.com/neoclide/coc-python)       | Python server                                  |
| [coc-highlight](https://github.com/neoclide/coc-highlight) | Highlight the cursors word, Show the css color |
| [coc-git](https://github.com/neoclide/coc-git)             | git extension                                  |
| [coc-post](https://github.com/iamcco/coc-post)             | easy to use like postman                       |

## ColorScheme

- The theme is [gruvbox9](https://github.com/taigacute/gruvbox9)，Works fine with [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)，I create a new syntax group which provide the highlight of `jsxEndComponentName` in [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve),if you wirte js/jsx, you will find the color very similar like vscode-gruvbox
- The Color of other Languages are same as gruvbox,maybe some little change.

## Statusline

- [Lightline](https://github.com/itchyny/lightline.vim) Theme[gruvbox9](https://github.com/taigacute/gruvbox9)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/normal.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/insert.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/visual.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/replace.png)
- When the file is editing, you will found a pen in statusline .
- When used `coc-prettier`,`coc-tsserver`,`coc-snippet`， the statsuline will show the icon.
  ![](https://github.com/taigacute/IMG/blob/master/thinkvim/statusbar.png)

  | extension    | icon |
  | ------------ | ---- |
  | coc-prettier | `Ⓟ`  |
  | coc-tsserver | `Ⓣ`  |
  | coc-snippet  | `Ⓢ`  |
  | go file      | `Ⓖ`  |

## [Defx.nvim](https://github.com/Shougo/defx.nvim)

- Defx provide more features,The defx is very fatest than nerdtree when you open multifiles.

## Startify

- Startify can only set the header and footer centerd，you can edit the`core/plugins/startify.vim`,changed this number`let g:startify_padding_left = 40` until the file area centerd on your screen

## Operate key

- Default leader `SPACE` localleader`;` ,The vim keymap in `mappings.vim`,Plugins keymap in `core/plugins/allkey.vim`
- Insertkey like emacs
- if you find the keymap doesnt work , Or the keymap doesnt show in this keylist but  in `allkey.vim` ,you can create
  a isse. Welcome PR.

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
| sa          | Normal  | operatore-surround prefix               |
| sd          | Normal  | operatore-surround prefix               |
| sr          | Normal  | operatore-surround prefix               |
| saa         | Normal  | operatore-surround textobj-multiblock-i |
| sdd         | Normal  | operatore-surround textobj-multiblock-a |
| srr         | Normal  | operatore-surround textobj-multiblock-a |
| v           | Visual  | vim-expand-region                       |
| V           | Visual  | vim-expand-region                       |

- Window

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

- Tab

| Keys            | Mode   | Description |
| --------------- | ------ | ----------- |
| `<Leader>` + tn | Normal | create tab  |
| `<Leader>` + te | Normal | edit tab    |
| `<Leader>` + tc | Normal | close tab   |
| `<Leader>` + tm | Normal | move tab    |

- LeaderKey

| Keys                        | Mode   | Description                   |
| --------------------------- | ------ | ----------------------------- |
| `<Leader>` + number         | Normal | number[0-9] choose buffer     |
| `<Leader>` + ca             | Normal | CocDiagnostics                |
| `<Leader>` + cc             | Normal | CocCommands                   |
| `<Leader>` + ce             | Normal | CocExtensions                 |
| `<Leader>` + cj             | Normal | Cocnext                       |
| `<Leader>` + ck             | Normal | CocPrev                       |
| `<Leader>` + co             | Normal | CocOutline                    |
| `<Leader>` + cr             | Normal | CocResume                     |
| `<Leader>` + cs             | Normal | CocIsymbols                   |
| `<Leader>` + G              | Normal | open Goyo                     |
| `<Leader>` + m              | Normal | open mundo                    |
| `<Leader>` + w              | Normal | save file                     |
| `<Leader>` + -              | Normal | ChooseWin                     |
| `<Leader>` + s              | Normal | open Startify                 |
| `<Leader>` + d              | Normal | open Dash                     |
| `<Leader>` + cf             | Normal | coc Format                    |
| `<Leader>` + fc             | Normal | fzf chage vim colorscheme     |
| `<Leader>` + ff             | Normal | fzf find files                |
| `<Leader>` + fr             | Normal | fzf rg search                 |
| `<Leader>` + b              | Normal | fzf find buffer               |
| `<Leader>` + fw             | Normal | fzf rg search the cursor word |
| `<Leader>` + fgc            | Normal | fzf gitcommits                |
| `<Leader>` + fbc            | Normal | fzf gitbcommits               |
| `<Leader>` + `<Leader>` + w | Normal | Easymotion jump to donw       |
| `<Leader>` + `<Leader>` + b | Normal | Easymotion jump to up         |
| `<Leader>` + `<Leader>` + f | Normal | Easymotion search for jump    |
| `<Leader>` + gr             | Normal | vim-go GoRename               |
| `<Leader>` + goi            | Normal | vim-go GoInfo                 |
| `<Leader>` + god            | Normal | vim-go GoDoc                  |
| `<Leader>` + gor            | Normal | vim-go GoRun                  |
| `<Leader>` + gob            | Normal | vim-go GoBuild                |
| `<Leader>` + got            | Normal | vim-go GoTest                 |
| `<Leader>` + goc            | Normal | vim-go GoCoverage             |
| `<Leader>` + gov            | Normal | vim-go GoDef                  |

- LocalLeaderKey

| Keys                 | Mode   | Description             |
| -------------------- | ------ | ----------------------- |
| `<LocalLeader>` + t  | Normal | Open Tagbar             |
| `<LocalLeader>` + r  | Normal | QuickRun                |
| `<LocalLeader>` + v  | Normal | Open Vista              |
| `<LocalLeader>` + da | Normal | TodoAdd Add todo        |
| `<LocalLeader>` + ga | Normal | Gadd                    |
| `<LocalLeader>` + gd | Normal | Gdiff                   |
| `<LocalLeader>` + gc | Normal | Gcommit                 |
| `<LocalLeader>` + gb | Normal | Gblame                  |
| `<LocalLeader>` + gB | Normal | GBrowse                 |
| `<LocalLeader>` + gS | Normal | GStatus                 |
| `<LocalLeader>` + gp | Normal | Gpush                   |
| `<LocalLeader>` + gl | Normal | Denite show all git log |
| `<LocalLeader>` + gh | Normal | Denite show git branch  |

- Denite.Menu

| Keys                | Mode   | Description |
| ------------------- | ------ | ----------- |
| `<LocalLeader>` + m | Normal | Denite Menu |

- Defx

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

- CoC

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
| gs           | Normal        | git chunkinfo             |

- Feature For Go

| Keys | Mode   | Description    |
| ---- | ------ | -------------- |
| zl   | Normal | Denite Outline |
| zT   | Normal | Denite Goroot  |

- TextObject

| Keys | Mode   | Description |
| ---- | ------ | ----------- |
| vif  | Go     | textobject  |
| vaf  | Go     | textobject  |
| aF   | Python | textobject  |
| iF   | Python | textobject  |
## Backers
Do you like ThinkVim? keep it alive by [donating funds](https://salt.bountysource.com/teams/thinkvim-taigacute)😘!  

<a href="https://github.com/dewoller" target="_blank" title="dewoller">
  <img src="https://github.com/dewoller.png?size=64" width="64" height="64" alt="dewoller">
</a>

## Thanks

- [chemzqm](https://github.com/chemzqm)
- [rafi](https://github.com/rafi/vim-config)
- [Shougo](https://github.com/Shougo)
