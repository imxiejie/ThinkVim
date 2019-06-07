## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png" width="500" height="400">
</div>  

## 二次元赛高  

| ACG                                                                         | 狂赌之渊      |
| -------------------------------------------------------------------- | ---------------- |
|<img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox9thinkvim.png" width="480"  height="300">   | <img src="https://github.com/taigacute/IMG/blob/master/thinkvim/kuangdushenyuan.png" width="480" height="300">     |

## [English Version](https://github.com/taigacute/nvim-config/blob/master/README-EN.md)

## 特性

- 快速的启动时间
- 模块插件配置
- 简单易用易修改
- 懒加载百分之 95 插件使用 dein
- 以 coc 为工作核心,denite 辅助
- 基于 coc 支持 lsp 的语言补全
- 完全自定义
- 舒适的配色方案 gruvbox9

## 必要环境

- macos or linux
- neovim >= 0.4.0（配置使用了一些 floatwindow.neovim0.4.0 以上的版本才支持)
- python3 support
  - pip3 install --user pynvim
- node and yarn
- NerdFont

### 必要工具

- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
- Rouge : `sudo gem install rouge`

## 安装

```
git clone --depth=1 https://github.com/taigacute/ThinkVim.git ~/.config/nvim
```

**_1._** clone 完成后打开你的终端，输入 nvim 后一切都会自动安装耐心等待就可以了。

**_2._** 你可以在[B 站查看安装和使用的系列教程](https://space.bilibili.com/321783076)

**_Tmux Zsh_** 如果你也喜欢图上的 tmux 状态栏和 zsh 主题你可以在我的[dotfile 中找到](https://github.com/taigacute/dotfiles/blob/master/.tmux.conf)，主题使用的是 powerlevel10k 异步运行主题。摆脱终端操作 git 命令很慢的困扰
**_VimTheme_** [gruvbox9](https://github.com/taigacute/gruvbox9)

## [Language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

- 以下内容来自于 coc 主页。更多关于 coc 详细的配置参考[Coc 主页](https://github.com/neoclide/coc.nvim)
- 以下为 coc 支持的 languageServer，参照[coc 的 wiki 安装方式](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

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

- 以下为没安装的扩展，有一些扩展我已经安装了，你可以在下面的安装列表中查看。
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

## 结构

- [after](~/.config/nvim/after)
  - [ftplugin](~/.config/nvim/after/ftplugin)
    - [go.vim](~/.config/nvim/after/ftplugin/go.vim) - go 文件设置
- [autoload](~/.config/nvim/autoload)
  - [lightline](~/.config/nvim/after/autoload/lightline)
    - [colorscheme](~/.config/nvim/after/autoload/lightline/colorscheme) - lightline 主题文件夹
- [core/](~/.config/nvim/rc) - 配置文件目录
  - [dein](~/.config/nvim/rc/dein) - _**插件安装!**_
    - [dein.toml](~/.config/nvim/rc/dein/dein.toml) - 正常加载的插件
    - [deinlazy.toml](~/.config/nvim/rc/dein/deinlazy.toml) - 懒加载插件
  - [plugins](~/.config/nvim/rc/plugins) - _**插件设置!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath` 初始化
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein 配置
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim 基础设置
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim 功能键位绑定
  - [themes](./config/theme.vim) - 主题颜色设置
- [colors](~/.config/nvim/colors) - 主题文件
- [ftplugin](~/.config/nvim/ftplugin) - 文件格式设置
- [plugin](~/.config/nvim/plugin) - 一些小功能插件

## LoadPlugins

| Name                                                                                      | Description      |
| ----------------------------------------------------------------------------------------- | ---------------- |
| [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)                         | 状态栏           |
| [mengelbrecht/lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline) | 顶部 buffer 插件 |
| [neoclide/coc.nvim](https://github.com/mengelbrecht/lightline-bufferline)                 | 补全插件         |
| [hona/vim-snippets](https://github.com/hona/vim-snippets)                                 | 代码片段         |

## LazyLoadPlugins

| Name                                                                                         | Description                             |
| -------------------------------------------------------------------------------------------- | --------------------------------------- |
| [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)              | 提供 ctags/gtags 后台数据库自动更新功能 |
| [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                                  | 启动画面                                |
| [tyru/caw.vim](https://github.com/tyru/caw.vim)                                              | 注释插件                                |
| [t9md/vim-choosewin](https://github.com/t9md/vim-choosewin)                                  | 多开窗口跳转的便利插件                  |
| [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)                          | 字体图标                                |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                  | git 插件                                |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)                                      | 搜索插件                                |
| [hona/dockerfile.vim](https://github.com/hona/dockerfile.vim)                                | Dockerfile 支持                         |
| [junegunn/vim-easyalign](https://github.com/junegunn/vim-easyalign)                          | 快速对齐                                |
| [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim)                                    | 关灯写代码                              |
| [junegunn/limelight](https://github.com/junegunn/limelight)                                  | 关灯写代码                              |
| [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                                | 缩进线                                  |
| [tpope/vim-surround](https://github.com/tpope/vim-surround)                                  | 符号成双成对                            |
| [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                                      | 重复上一次操作                          |
| [sbdchd/neoformat](https://github.com/sbdchd/neoformat)                                      | 格式化插件                              |
| [yuttie/comfortable-motion.vim](https://github.com/yonchu/yuttie/comfortable-motion.vim)     | 平滑滚动插件                            |
| [chemzqm/vim-easygit](https://github.com/chemzqm/vim-easygit)                                | 更简单的 git 操作                       |
| [chemzqm/denite-git](https://github.com/chemzqm/denite-git)                                  | denite 的 gitsource                     |
| [thinca/quickrun](https://github.com/thinca/quickrun)                                        | 快速输出                                |
| [tpope/vim-markdown](https://github.com/tpope/vim-markdown)                                  | markdown 插件                           |
| [junegunn/vim-emoji](https://github.com/junegunn/vim-emoji)                                  | emoji 补全                              |
| [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo)                          | 各种修改查看撤销                        |
| [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)                            | 文本对象                                |
| [bps/vim-textobj-python](https://github.com/bps/vim-textobj-python)                          | pythontextobject                        |
| [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)                          | 多光标操作                              |
| [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)                    | visual 增强                             |
| [liuchengxu/vim-which-key](https://github.com/liuchengxu/vim-which-key)                      | 键位查找                                |
| [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)                    | 快速移动                                |
| [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)                                      | 文件资源管理                            |
| [kristijanhusak/defx-icons](https://github.com/https://github.com/kristijanhusak/defx-icons) | defx 图标                               |
| [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)                          | git 信息                                |
| [majutsushi/tagbar](https://github.com/majutsushi/tagbar)                                    | 代码变量函数跳转显示插件                |
| [liuchengxu/visita.vim](https://github.com/liuchengxu/visita.vim)                            | 支持 lsp 的代码导航                     |
| [mattn/emmet-vim](https://github.com/mattn/emmet-vim)                                        | 快速生成 html 插件                      |
| [Shougo/denite.nvim](https://github.com/Shougo/denite.nvim)                                  | 搜索插件                                |
| [w0rp/ale](https://github.com/w0rp/ale)                                                      | 语法检查                                |
| [othree/html5.vim](https://github.com/othree/html5.vim)                                      | html5 插件                              |
| [neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)                      | js jsx 插件                             |
| [fatih/vim-go](https://github.com/fatih/vim-go)                                              | go 开发必备插件                         |
| [elzr/vim-json](https://github.com/elzr/vim-json)                                            | json 插件                               |
| [cespare/vim-toml](https://github.com/cespare/vim-toml)                                      | toml 文件高亮插件                       |

## CoC Extensions

| Name                                                       | Description                 |
| ---------------------------------------------------------- | --------------------------- |
| [coc-html](https://github.com/neoclide/coc-html)           | html 扩展                   |
| [coc-emmet](https://github.com/neoclide/coc-emmet)         | emmet 使用                  |
| [coc-css](https://github.com/neoclide/coc-css)             | css 扩展                    |
| [coc-imselect](https://github.com/neoclide/coc-imselect)   | 输入增强                    |
| [coc-emoji](https://github.com/neoclide/coc-emoji)         | emoji 补全                  |
| [coc-lists](https://github.com/neoclide/coc-lists)         | coclists                    |
| [coc-snippets](https://github.com/neoclide/coc-snippets)   | 代码片段                    |
| [coc-prettier](https://github.com/neoclide/coc-prettier)   | 格式化                      |
| [coc-eslint](https://github.com/neoclide/coc-eslint)       | eslint 检测                 |
| [coc-stylelint](https://github.com/neoclide/coc-stylelint) | stylelint 检测              |
| [coc-tsserver](https://github.com/neoclide/coc-tsserver)   | js/ts 语言 server           |
| [coc-pairs](https://github.com/neoclide/coc-pairs)         | 符号补全                    |
| [coc-json](https://github.com/neoclide/coc-json)           | json server                 |
| [coc-python](https://github.com/neoclide/coc-python)       | Python server               |
| [coc-imselect](https://github.com/neoclide/coc-imselect)   | 选择                        |
| [coc-highlight](https://github.com/neoclide/coc-highlight) | 高亮，支持显示 css 颜色代码 |
| [coc-git](https://github.com/neoclide/coc-git)             | git 扩展                    |
| [coc-post](https://github.com/iamcco/coc-post)             | 类似 postman                |

## 主题 ColorScheme

- 主题为[gruvbox9](https://github.com/taigacute/gruvbox9)，完美支持[neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve)，因为我添加了新的 react 高亮语法组到[neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve),定制的制作了这个主题，如果你是写 js，jsx 的你会看到和 vscode-gruvbox 一样的体验。

## 状态栏 Statusline

- [Lightline](https://github.com/itchyny/lightline.vim) 主题也是定做的在[gruvbox9](https://github.com/taigacute/gruvbox9)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/normal.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/insert.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/visual.png)
  ![](https://github.com/taigacute/IMG/blob/master/gruvbox9/replace.png)
- 当文件处于编辑状态时，lightline 会显示一根笔的符号，保存后会消失。
- 当使用 coc-prettier,coc-tsserver,coc-snippet， 会在 statusline 上显示对应的图标.
  ![](https://github.com/taigacute/IMG/blob/master/thinkvim/statusbar.png)

  | extension    | icon |
  | ------------ | ---- |
  | coc-prettier | `Ⓟ`  |
  | coc-tsserver | `Ⓣ`  |
  | coc-snippet  | `Ⓢ`  |
  | go 文件      | `Ⓖ`  |

## 文件资源管理[Defx.nvim](https://github.com/Shougo/defx.nvim)

- 抛弃了 nerdtree，在多文件打开速度上 defx 秒杀 nerdtree。而且 defx 提供更多特性，还可以配合 denite 使用。

## Startify

- Startify 只能设置 header 和 footer 居中，中间文件列表区域是没办法控制的。所以你需要调整下对于你的屏幕的尺寸，在`core/plugins/startify.vim`修改`let g:startify_padding_left = 40` 这个数字调整适合你屏幕的数字

## 键位操作

- 默认 leader 为`SPACE` localleader`;` 关于键位的设置在 mapping.vim，插件的键位设置在 allkey.vim。
- 部分键位按照 emacs 键位
- 键位的修改尽量不要改动太多默认的键位，默认的键位有时很有用也方便他人上手。

| Keys        | Mode    | Description          |
| ----------- | ------- | -------------------- |
| Ctrl + w    | Insert  | 删除光标下整个单词   |
| Ctrl + h    | Insert  | 删除映射 `BackSpace` |
| Ctrl + d    | Insert  | 删除光标所在字符     |
| Ctrl + u    | Insert  | 当前光标删除到行首   |
| Ctrl + b    | Insert  | 向左移动             |
| Ctrl + f    | Insert  | 向右移动             |
| Ctrl + a    | Insert  | 移到行首             |
| Ctrl + e    | Insert  | 移到行尾             |
| Ctrl + p    | Command | 向上移动             |
| Ctrl + b    | Command | 向左移动             |
| Ctrl + f    | Command | 向右移动             |
| Ctrl + a    | Command | 移动到行首           |
| Ctrl + e    | Command | 移动到行尾           |
| Ctrl + d    | Command | 删除光标所在字符     |
| Ctrl + h    | Command | 删除映射 `BackSpace` |
| Ctrl + S    | Insert  | 保存                 |
| Ctrl + Q    | Insert  | 保存并退出           |
| Ctrl + o    | Insert  | 生成新行             |
| ] + b       | Normal  | 上一个 buffer        |
| [ + b       | Normal  | 下一个 buffer        |
| Ctrl + x    | Normal  | 删除当前 buffer      |
| Y           | Normal  | 复制到行尾           |
| j           | Normal  | gj                   |
| k           | Normal  | gk                   |
| j           | Visual  | gj                   |
| k           | Visual  | gj                   |
| -           | Visual  | 选择窗口             |
| , + `Space` | Normal  | 删除尾部空格         |
| [ + a       | Normal  | Ale 下一个错误       |
| ] + a       | Normal  | Ale 上一个错误       |
| [ + c       | Normal  | coc 下一个错误       |
| ] + c       | Normal  | coc 上一个错误       |
| ] + ]       | Normal  | 跳转上一个 go 函数   |
| [ + [       | Normal  | 跳转下一个 go 函数   |
| gc          | Normal  | caw.vim 快速注释     |
| gcc         | Normal  | caw.vim 取消注释     |
| ga          | Normal  | EasyAlign 快速对其   |
| ga          | Visual  | EasyAlign 快速对其   |
| v           | Visual  | vim-expand-region    |
| V           | Visual  | vim-expand-region    |

- Window

| Keys       | Mode   | Description                  |
| ---------- | ------ | ---------------------------- |
| Ctrl + h   | Normal | 移动到左边窗口               |
| Ctrl + l   | Noraml | 移动到右边窗口               |
| Ctrl + j   | Normal | 移动到下边窗口               |
| Ctrl + k   | Normal | 移动到上边窗口               |
| Ctrl + w [ | Normal | 窗口宽度减 3                 |
| Ctrl + w ] | Normal | 窗口宽度加 3                 |
| Ctrl + f   | Normal | 窗口向下滚动整屏包括浮动窗口 |
| Ctrl + b   | Normal | 窗口向上滚动整屏包括浮动窗口 |
| Ctrl + d   | Normal | 窗口向下滚动半屏             |
| Ctrl + u   | Normal | 窗口向上滚动半屏             |

- Tab

| Keys            | Mode   | Description |
| --------------- | ------ | ----------- |
| `<Leader>` + tb | Normal | 新建 tab    |
| `<Leader>` + te | Normal | 编辑 tab    |
| `<Leader>` + tc | Normal | 关闭 tab    |
| `<Leader>` + tm | Normal | 移动 tab    |

- LeaderKey

| Keys                        | Mode   | Description              |
| --------------------------- | ------ | ------------------------ |
| `<Leader>` + 数字           | Normal | 数字[0-9]选择 buffer     |
| `<Leader>` + ca             | Normal | CocDiagnostics           |
| `<Leader>` + cc             | Normal | CocCommands              |
| `<Leader>` + ce             | Normal | CocExtensions            |
| `<Leader>` + cj             | Normal | Cocnext                  |
| `<Leader>` + ck             | Normal | CocPrev                  |
| `<Leader>` + co             | Normal | CocOutline               |
| `<Leader>` + cr             | Normal | CocResume                |
| `<Leader>` + cs             | Normal | CocIsymbols              |
| `<Leader>` + G              | Normal | 打开 Goyo                |
| `<Leader>` + m              | Normal | 打开 mundo               |
| `<Leader>` + w              | Normal | 保存                     |
| `<Leader>` + -              | Normal | ChooseWin 选择窗口       |
| `<Leader>` + s              | Normal | 打开 Startify            |
| `<Leader>` + d              | Normal | 打开 Dash                |
| `<Leader>` + cf             | Normal | coc 格式化               |
| `<Leader>` + fc             | Normal | fzf vim 主题查看更改     |
| `<Leader>` + ff             | Normal | fzf 在当前路径下文件搜索 |
| `<Leader>` + fr             | Normal | fzf rg 搜索              |
| `<Leader>` + fw             | Normal | fzf rg 搜索光标下的单词  |
| `<Leader>` + fgc            | Normal | fzf gitcommits 记录      |
| `<Leader>` + fbc            | Normal | fzf gitbcommits 记录     |
| `<Leader>` + `<Leader>` + w | Normal | Easymotion 向下跳转      |
| `<Leader>` + `<Leader>` + b | Normal | Easymotion 向上跳转      |
| `<Leader>` + `<Leader>` + f | Normal | Easymotion 搜索跳转      |
| `<Leader>` + cc             | Normal | NerdComment 注释         |
| `<Leader>` + cu             | Normal | NerdComment 取消注释     |
| `<Leader>` + gr             | Normal | vim-go GoRename          |
| `<Leader>` + goi            | Normal | vim-go GoInfo            |
| `<Leader>` + god            | Normal | vim-go GoDoc             |
| `<Leader>` + gor            | Normal | vim-go GoRun             |
| `<Leader>` + gob            | Normal | vim-go GoBuild           |
| `<Leader>` + got            | Normal | vim-go GoTest            |
| `<Leader>` + goc            | Normal | vim-go GoCoverage        |
| `<Leader>` + gov            | Normal | vim-go GoDef             |

- LocalLeaderKey

| Keys                 | Mode   | Description                |
| -------------------- | ------ | -------------------------- |
| `<LocalLeader>` + b  | Normal | fzf 显示 buffer 列表       |
| `<LocalLeader>` + t  | Normal | 打开 Tagbar                |
| `<LocalLeader>` + r  | Normal | QuickRun 快速运行          |
| `<LocalLeader>` + v  | Normal | 打开 Vista                 |
| `<LocalLeader>` + da | Normal | TodoAdd 添加               |
| `<LocalLeader>` + ga | Normal | Gadd                       |
| `<LocalLeader>` + gd | Normal | Gdiff                      |
| `<LocalLeader>` + gc | Normal | Gcommit                    |
| `<LocalLeader>` + gb | Normal | Gblame                     |
| `<LocalLeader>` + gB | Normal | GBrowse                    |
| `<LocalLeader>` + gS | Normal | GStatus                    |
| `<LocalLeader>` + gp | Normal | Gpush                      |
| `<LocalLeader>` + gl | Normal | Denite 显示所有 git log    |
| `<LocalLeader>` + gh | Normal | Denite 显示所有 git branch |

- Denite.Menu

| Keys                | Mode   | Description      |
| ------------------- | ------ | ---------------- |
| `<LocalLeader>` + m | Normal | 打开 Denite Menu |

- Defx 文件资源管理

| Keys           | Mode   | Description                                  |
| -------------- | ------ | -------------------------------------------- |
| `<Leader>` + e | Normal | 打开 defx                                    |
| N              | Defx   | 新建文件                                     |
| K              | Defx   | 新建文件夹                                   |
| `<CR>`         | Defx   | 打开目录或打开文件                           |
| l              | Defx   | 打开目录或打开文件                           |
| dd             | Defx   | 删除                                         |
| r              | Defx   | 重命名                                       |
| .              | Defx   | 显示隐藏文件                                 |
| h              | Defx   | 返回上级目录                                 |
| q              | Defx   | 退出 defx                                    |
| s              | Defx   | 右侧垂直分屏打开文件                         |
| i              | Defx   | 水平打开文件                                 |
| yy             | Defx   | 复制文件路径                                 |
| \              | Defx   | 显示当前文件所在路径                         |
| c              | Defx   | 复制                                         |
| m              | Defx   | 移动                                         |
| p              | Defx   | 粘贴                                         |
| `<Space>`      | Defx   | 多选                                         |
| gf             | Defx   | 在 denite 浮动窗口中显示所在文件夹下所有文件 |
| gr             | Defx   | 在 denite 中搜索                             |
| w              | Defx   | 增加 defx 宽度                               |

- CoC

| Keys         | Mode          | Description                   |
| ------------ | ------------- | ----------------------------- |
| Tab          | Select        | 跳转下一个片段 函数参数跳转   |
| Tab          | Insert        | 补全向下筛选                  |
| Shit + Tab   | Insert        | 补全向上筛选                  |
| Ctrl + n     | Insert        | 补全向下筛选                  |
| Ctrl + p     | Insert        | 补全向上筛选                  |
| Ctrl + Space | Normal        | 强制触发补全                  |
| `<CR>`       | Insert/Select | 代码片段确认选择 补全确认选择 |
| K            | Normal        | 显示方法函数 doc              |
| gd           | Normal        | 跳转到定义                    |
| gy           | Normal        | 跳转类型定义                  |
| gi           | Normal        | 跳转到实现                    |
| gr           | Normal        | 跳转到引用                    |
| `[` + g      | Normal        | coc-git-prechunk              |
| `]` + g      | Normal        | coc-git-nextchunk             |
| gs           | Normal        | git chunkinfo                 |

- Feature For Go

| Keys | Mode   | Description            |
| ---- | ------ | ---------------------- |
| zl   | Normal | 使用 Denite 的 Outline |
| zT   | Normal | 使用 Denite 的 Goroot  |

- TextObject

| Keys | Mode   | Description        |
| ---- | ------ | ------------------ |
| vif  | Go     | 快速选择函数体内   |
| vaf  | Go     | 快速选择整个函数体 |
| aF   | Python | 快速选择整个函数体 |
| iF   | Python | 快速选择函数体内   |

## 教程

- 你可以在[B 站查看使用教程系列](https://space.bilibili.com/321783076/channel/detail?cid=64354)

## Backers

## Donation

- 如果对你有帮助，You Can Buy Me a Coffee By WeChat:)

  <a href="" target="_blank" title="taigacute">
  <img src="https://github.com/taigacute/IMG/blob/master/wechat/mm_reward_qrcode_1556454268864.png" width="300" height="300" alt="taigacute">
  </a>

## Feedback

- 如果你遇到了麻烦可以提 issue 或者 [Giiter](https://gitter.im/thinkvim/community)

## 鸣谢

- [chemzqm](https://github.com/chemzqm)
- [rafi](https://github.com/rafi/vim-config)
- [Shougo](https://github.com/Shougo)
