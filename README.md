## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png" width="500" height="400">
</div>



|                                                                                                       |                                                                                                |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| <img src="https://raw.githubusercontent.com/taigacute/IMG/master/thinkvim/thinkvim-ayu.png" width="480"  height="300"> | <img src="https://github.com/taigacute/IMG/blob/master/spaceline/spaceline.png" width="480" height="300"> |

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
- bat : [install bat](https://github.com/sharkdp/bat)

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

<details><summary><code>Normal Load Plugins</code>👈 Click</summary>
<p>

| Name                                                                      | Description     |
| ------------------------------------------------------------------------- | --------------- |
| [taigacute/spaceline.vim](https://github.com/taigacute/spaceline.vim)     | spaceline       |
| [neoclide/coc.nvim](https://github.com/mengelbrecht/lightline-bufferline) | Autocompletaion |


</p>
</details>

<details><summary><code>Lazy Load Plugins</code>👈 Click</summary>
<p>

| Name                                                                                                  | Description                                                                        |
| ----------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)                       | Provide ctags/gtags                                                                |
| [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                                           | Startify                                                                           |
| [hona/vim-snippets](https://github.com/hona/vim-snippets)                 | Snippets        |
| [tyru/caw.vim](https://github.com/tyru/caw.vim)                                                       | Comment Plugins                                                                    |
| [t9md/vim-choosewin](https://github.com/t9md/vim-choosewin)                                           | Easy to jump window                                                                |
| [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)                                   | Provide the Icons                                                                  |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                           | Git Plugins                                                                        |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)                                               | Search File Word                                                                   |
| [hona/dockerfile.vim](https://github.com/hona/dockerfile.vim)                                         | Dockerfile Supporte                                                                |
| [junegunn/vim-easyalign](https://github.com/junegunn/vim-easyalign)                                   | Easy Align                                                                         |
| [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim)                                             | Distraction-free writing                                                           |
| [junegunn/limelight](https://github.com/junegunn/limelight)                                           | Hyperfocus-writing                                                                 |
| [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                                         | Indent Line                                                                        |
| [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                                               | Operate Repeat                                                                     |
| [sbdchd/neoformat](https://github.com/sbdchd/neoformat)                                               | Format                                                                             |
| [yuttie/comfortable-motion.vim](https://github.com/yonchu/yuttie/comfortable-motion.vim)              | Scroll                                                                             |
| [chemzqm/vim-easygit](https://github.com/chemzqm/vim-easygit)                                         | Git wrapper focus on simplity and usability                                        |
| [chemzqm/denite-git](https://github.com/chemzqm/denite-git)                                           | gitlog, gitstatus and gitchanged sources                                           |
| [thinca/quickrun](https://github.com/thinca/quickrun)                                                 | Quick Run                                                                          |
| [tpope/vim-markdown](https://github.com/tpope/vim-markdown)                                           | Markdown syntax highlighting                                                       |
| [junegunn/vim-emoji](https://github.com/junegunn/vim-emoji)                                           | emoji                                                                              |
| [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo)                                   | Ultimate mundo history visualizer                                                  |
| [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)                                     | Create your own text objects                                                       |
| [kana/vim-operator-user](https://github.com/kana/vim-operator-user)                                   | Define your own custom operators                                                   |
| [osyo-manga/vim-textobj-multiblock](https://github.com/osyo-manga/vim-textobj-multiblock)             | Handle bracket objects                                                             |
| [machakann/vim-sandwich](https://github.com/rhysd/machakann/vim-sandwich)                             | set of operatorandtextobject plugins to search/select/edit sandwiched textobjects. |
| [kana/vim-operator-replace](https://github.com/kana/vim-operator-replace)                             | Operator to replace text with register content                                     |
| [rhysd/accelerated-jk](https://github.com/rhysd/accelerated-jk)                                       | Up/down movement acceleration                                                      |
| [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)                                   | Multiple cursors project                                                           |
| [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)                             | Visually select increasingly larger regions of text                                |
| [liuchengxu/vim-which-key](https://github.com/liuchengxu/vim-which-key)                               | Find the key                                                                       |
| [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)                             | Vim motions on speed                                                               |
| [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)                                               | Dark powered file explorer implementation                                          |
| [kristijanhusak/defx-icons](https://github.com/https://github.com/kristijanhusak/defx-icons)          | Filetype icons for Defx                                                            |
| [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)                                         | File manager                                                                       |
| [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)                         | Nerdtree git plugin                                                                |
| [tiagofumo/vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) | Nerdtree Synatax Highlight                                                         |
| [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)                                         | File manager                                                                       |
| [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                   | Git status implementation for Defx                                                 |
| [airblade/vim-rooter](https://github.com/airblade/vim-rooter)                                         | Changes Vim working directory to project root                                      |
| [majutsushi/tagbar](https://github.com/majutsushi/tagbar)                                             | Displays tags in a window, ordered by scope                                        |
| [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim)                                       | Viewer & Finder for LSP symbols and tags                                           |
| [mattn/emmet-vim](https://github.com/mattn/emmet-vim)                                                 | coc-emmet instead                                                                  |
| [Shougo/denite.nvim](https://github.com/Shougo/denite.nvim)                                           | Dark powered asynchronous unite all interfaces                                     |
| [w0rp/ale](https://github.com/w0rp/ale)                                                               | Check syntax in Vim asynchronously and fix files                                   |
| [othree/html5.vim](https://github.com/othree/html5.vim)                                               | HTML5 omnicomplete and syntax Worked with coc-html                                 |
| [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)                               | js jsx                                                                             |
| [vim-python/python-syntax](https://github.com/vim-python/python-syntax)                               | Enhanced version of the original Python syntax                                     |
| [Vimjas/vim-python-pep8-index](https://github.com/Vimjas/vim-python-pep8-index)                       | A nicer Python indentation style                                                   |
| [vim-scripts/python_match.vx](https://github.com/vim-scripts/python_match)                            | Extend the % motion for Python files                                               |
| [tmhedberg/SimpylFold](https://github.com/tmhedberg/SimpylFold)                                       | No-BS Python code folding                                                          |
| [fatih/vim-go](https://github.com/fatih/vim-go)                                                       | go development                                                                     |
| [elzr/vim-json](https://github.com/elzr/vim-json)                                                     | json                                                                               |
| [cespare/vim-toml](https://github.com/cespare/vim-toml)                                               | toml                                                                               |
| [vim-scripts/xml.vim](https://github.com/vim-scripts/xml.vim)                                         | xml                                                                                |

 </p>
 </details>

<details><summary><code>CoC Extensions</code>👈 Click</summary>
<p>

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

</p>
</details>

## Tutorial

- check the [tutorial](/tutorial/tutorial.md) to know more about ThinkVim
- check the [wiki gitworkflow](https://github.com/taigacute/ThinkVim/wiki/Git-WorkFlow)

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
