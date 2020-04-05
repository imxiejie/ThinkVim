![](https://travis-ci.com/hardcoreplayers/ThinkVim.svg?branch=master) [![Gitter](https://badges.gitter.im/thinkvim/Thinkvim.svg)](https://gitter.im/thinkvim/Thinkvim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://raw.githubusercontent.com/taigacute/IMG/master/thinkvim/thinkvim.png" width="960" height="540">
</div>

## Feature

- 🚀Fastest StartupTime(Plugins Total:62 40-60ms)
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
  - mac `brew install --HEAD universal-ctags/universal-ctags/universal-ctags`
  - ubuntu
    ```
    # install libjansson first
    sudo apt-get install libjansson-dev
    # then compile and install ctags
    ```

### Not Required

- bat : [install bat](https://github.com/sharkdp/bat)
- exa : [install exa](https://github.com/ogham/exa)

## Installation

**_1._**

```
1. git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
2. open nvim
```

- Note: If your system sets \$XDG_CONFIG_HOME, use that instead of ~/.config in the code above. Nvim follows the XDG base-directories convention.

**_2._** open the nvim ,it will auto install dein and plugins,when the plugins install success,it will install coc extensions.

**_3._** if you see the coc extesions installed success in your vim commandline .Congratulations‼️

## PluginsDetail

<details open>
  <summary><strong>List</strong> <small><i>(🔎 Click to expand/collapse)</i></small></summary>

### Package Management

| Name                                                  | Description       |
| ----------------------------------------------------- | ----------------- |
| [Shougo/dein.vim](https://github.com/Shougo/dein.vim) | Plugin Management |

### Editor UI

| Name                                                                          | Description                   |
| ----------------------------------------------------------------------------- | ----------------------------- |
| [bagrat/vim-buffet](https://github.com/bagrat/vim-buffet)                     | Buffer Tabline                |
| [taigacute/spaceline.vim](https://github.com/taigacute/spaceline.vim)         | Beautiful statusline          |
| [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)           | Provide the Icons             |
| [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                   | Startify                      |
| [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) | The fastest Neovim colorizer. |
| [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                 | Indent Line                   |
| [luochen1990/rainbow](https://github.com/luochen1990/rainbow)                 | Rainbow paren                 |

### Editor Enhance

| Name                                                                                      | Description                                            |
| ----------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| [rhysd/accelerated-jk](https://github.com/rhysd/accelerated-jk)                           | Up/down movement acceleration                          |
| [psliwka/vim-smoothie](https://github.com/yonchu/psliwka/vim-smoothie)                    | Smooth Scroll                                          |
| [junegunn/vim-easyalign](https://github.com/junegunn/vim-easyalign)                       | Easy Align                                             |
| [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo)                       | Ultimate mundo history visualizer                      |
| [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                                   | Operate Repeat                                         |
| [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)                 | Vim motions on speed                                   |
| [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)                         | Create your own text objects                           |
| [kana/vim-operator-user](https://github.com/kana/vim-operator-user)                       | Define your own custom operators                       |
| [kana/vim-operator-replace](https://github.com/kana/vim-operator-replace)                 | Operator to replace text with register content         |
| [kana/smartchr](https://github.com/kana/smartchr)                                         | Replace input char                                     |
| [kana/vim-textobj-function](https://github.com/kana/vim-textobj-function)                 | Function Textobj                                       |
| [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)                 | Visually select increasingly larger regions of text    |
| [AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)                 | Switch between single-line and multiline forms of code |
| [AndrewRadev/dsf.vim](https://github.com/AndrewRadev/dsf.vim)                             | Delete surrounding function call                       |
| [osyo-manga/vim-textobj-multiblock](https://github.com/osyo-manga/vim-textobj-multiblock) | Textobjects Multiple block                             |

### Coding

| Name                                                      | Description     |
| --------------------------------------------------------- | --------------- |
| [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) | Autocompletaion |
| [hona/vim-snippets](https://github.com/hona/vim-snippets) | Snippets        |
| [sgur/editorconfig](https://github.com/sgur/editorconfig) | Editorconfig    |
| [tyru/caw.vim](https://github.com/tyru/caw.vim)           | Comment Plugins |

### Language

| Name                                                                              | Description                                         |
| --------------------------------------------------------------------------------- | --------------------------------------------------- |
| [fatih/vim-go](https://github.com/fatih/vim-go)                                   | go support                                          |
| [sebdah/vim-delve](https://github.com/sebdah/vim-delve)                           | go debug                                            |
| [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim)                       | rust support                                        |
| [chr4/nginx.vim](https://github.com/chr4/nginx.vim)                               | nginx support                                       |
| [cespare/vim-toml](https://github.com/cespare/vim-toml)                           | toml support                                        |
| [honza/dockerfile.vim](https://github.com/honza/dockerfile.vim)                   | dockerfile support                                  |
| [elzr/vim-json](https://github.com/elzr/vim-json)                                 | json support                                        |
| [pearofducks/ansible-vim](https://github.com/pearofducks/ansible-vim)             | syntax highlighting Ansible's common filetypes      |
| [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)           | javascript react support                            |
| [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim)       | typescript support                                  |
| [peitalin/vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript)     | typescript react support                            |
| [vim-python/python-syntax](https://github.com/vim-python/python-syntax)           | Enhanced version of the original Python syntax      |
| [Vimjas/vim-python-pep8-index](https://github.com/Vimjas/vim-python-pep8-index)   | A nicer Python indentation style                    |
| [vim-scripts/python_match.vx](https://github.com/vim-scripts/python_match)        | Extend the % motion for Python files                |
| [raimon49/requirements.txt.vim](https://github.com/raimon49/requirements.txt.vim) | the Requirements File Format syntax support for Vim |
| [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)             | Markdown syntax highlighting                        |
| [iamcco/markdown-preview.nvim](https://github.com/iamcco/marker-preview.nvim)     | Markdown Preview                                    |

### LanguageServerProtocol

| name                                                     | description                                                   |
| -------------------------------------------------------- | ------------------------------------------------------------- |
| [gopls](https://github.com/golang/go)                    | You need install it by `go get golang.org/x/gopls@latest`     |
| [coc-html](https://github.com/neoclide/coc-html)         | html                                                          |
| [coc-css](https://github.com/neoclide/coc-css)           | css                                                           |
| [coc-tsserver](https://github.com/neoclide/coc-tsserver) | javascript typescript languageserver                          |
| [coc-python](https://github.com/neoclide/coc-python)     | Python Languageserver mpls or pls Defalut is mpls on thinkvim |
| [coc-json](https://github.com/neoclide/coc-json)         | json Languageserver                                           |
| [coc-vetur](https://github.com/neoclide/coc-vetur)       | vue langserver                                                |
| [coc-yaml](https://github.com/neoclide/coc-yaml)         | yaml langserver                                               |

### File Management

| name                                                                                         | description                               |
| -------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [coc-explorer](https://github.com/weirongxu/coc-explorer)                                    | Explorer for coc.nvim                     |
| [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)                                      | Dark powered file explorer implementation |
| [kristijanhusak/defx-icons](https://github.com/https://github.com/kristijanhusak/defx-icons) | Filetype icons for Defx                   |
| [kristijanhusak/defx-git](https://github.com/https://github.com/kristijanhusak/defx-git)     | Git status icons for Defx                 |

### Tools

| Name                                                                                | Description                                |
| ----------------------------------------------------------------------------------- | ------------------------------------------ |
| [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim)                     | Viewer & Finder for LSP symbols and tags   |
| [machakann/vim-sandwich](https://github.com/machakann/vim-sandwich)                 | search/select/edit sandwiched textobjects. |
| [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)     | Provide ctags/gtags                        |
| [thinca/quickrun](https://github.com/thinca/quickrun)                               | Quick Run                                  |
| [mattn/emmet-vim](https://github.com/mattn/emmet-vim)                               | coc-emmet instead                          |
| [t9md/vim-choosewin](https://github.com/t9md/vim-choosewin)                         | Easy to jump window                        |
| [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)                   | Float neovim terminal                      |
| [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Tmux Navigator                             |
| [liuchengxu/vim-which-key](https://github.com/liuchengxu/vim-which-key)             | Find the key                               |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)                             | Search File Word                           |
| [yuki-ycino/fzf-preview.vim](https://github.com/yuki-ycino/fzf-preview.vim)         | Fzf Preview                                |
| [Shougo/neomru.nvim](https://github.com/Shougo/neomru.nvim)                         | Mru files                                  |
| [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim)                           | Distraction-free writing                   |
| [junegunn/limelight](https://github.com/junegunn/limelight)                         | Hyperfocus-writing                         |

### Version Control

| Name                                                            | Description |
| --------------------------------------------------------------- | ----------- |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)     | Git Plugin  |
| [jreybert/vimagit](https://github.com/jreybert/vimagit)         | Git Plugin  |
| [rhysd/committia.vim](https://github.com/rhysd/committia.vim)   | Git Commit  |
| [lambdalisue/gina.vim](https://github.com/lambdalisue/gina.vim) | Git Plugin  |

### CoC Extensions

| Name                                                       | Description                                    |
| ---------------------------------------------------------- | ---------------------------------------------- |
| [coc-tabnine](https://github.com/neoclide/coc-tabnine)     | Smart Completion                               |
| [coc-emmet](https://github.com/neoclide/coc-emmet)         | emmet                                          |
| [coc-yank](https://github.com/neoclide/coc-yank)           | provide yank highlight                         |
| [coc-floaterm](https://github.com/voldikss/coc-floaterm)   | floterm                                        |
| [coc-imselect](https://github.com/neoclide/coc-imselect)   | enhance input                                  |
| [coc-emoji](https://github.com/neoclide/coc-emoji)         | emoji completion                               |
| [coc-lists](https://github.com/neoclide/coc-lists)         | coclists                                       |
| [coc-snippets](https://github.com/neoclide/coc-snippets)   | snippets extension instead Utilsnippets        |
| [coc-prettier](https://github.com/neoclide/coc-prettier)   | Format                                         |
| [coc-eslint](https://github.com/neoclide/coc-eslint)       | eslint check                                   |
| [coc-stylelint](https://github.com/neoclide/coc-stylelint) | stylelint check                                |
| [coc-pairs](https://github.com/neoclide/coc-pairs)         | pairs completion                               |
| [coc-highlight](https://github.com/neoclide/coc-highlight) | Highlight the cursors word, Show the css color |
| [coc-git](https://github.com/neoclide/coc-git)             | git extension                                  |
| [coc-post](https://github.com/iamcco/coc-post)             | easy to use like postman                       |

</details>

## Tutorial

- check the [tutorial](/tutorial/tutorial.md) to know more about ThinkVim

## Backers

Do you like ThinkVim? keep it alive by [donating funds](https://salt.bountysource.com/teams/thinkvim-taigacute)😘!

<a href="https://github.com/emeentag" target="_blank" title="emeentag">
  <img src="https://github.com/emeentag.png?size=64" width="64" height="64" alt="emeentag">
</a>
<a href="https://github.com/dewoller" target="_blank" title="dewoller">
  <img src="https://github.com/dewoller.png?size=64" width="64" height="64" alt="dewoller">
</a>
<a href="https://github.com/baIIoon" target="_blank" title="balloon">
  <img src="https://github.com/baIIoon.png?size=64" width="64" height="64" alt="balloon">
</a>
<a href="https://github.com/gabriel-pena" target="_blank" title="gabriel-pena">
  <img src="https://github.com/gabriel-pena.png?size=64" width="64" height="64" alt="gabriel-pena">
</a>

<a href="https://github.com/gstormlee" target="_blank" title="gstormlee">
  <img src="https://github.com/gstormlee.png?size=64" width="64" height="64" alt="gstormlee">
</a>
<a href="https://github.com/xiaomabetter" target="_blank" title="xiaomabetter">
  <img src="https://github.com/xiaomabetter.png?size=64" width="64" height="64" alt="xiaomabetter">
</a>
<img src="https://github.com/taigacute/IMG/blob/master/wechat/mm_reward_qrcode_1556454268864.png" width="40%"  height="40%">

## Thanks

- [chemzqm](https://github.com/chemzqm)
- [rafi](https://github.com/rafi/vim-config)
- [Shougo](https://github.com/Shougo)
