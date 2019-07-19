## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png" width="500" height="400">
</div>

## 二次元赛高

| ACG                                                                                                              | 狂赌之渊                                                                                                       |
| ---------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox9thinkvim.png" width="480"  height="300"> | <img src="https://github.com/taigacute/IMG/blob/master/thinkvim/kuangdushenyuan.png" width="480" height="300"> |

## [English Version](https://github.com/taigacute/nvim-config/blob/master/README-EN.md)

-----有段时间没更新中文的了以英文为主吧有空更新下中文-------------

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

- 当看到 vim 的 commandline 出现了 coc extensions installed success ，恭喜你安装就成功了

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

## 教程

check the [tutorial](/tutorial/tutorial.md) to know more about ThinkVim

## Backers

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

## Donation

- 如果对你有帮助，You Can Buy Me a Coffee By WeChat:)

  <a href="" target="_blank" title="taigacute">
  <img src="https://github.com/taigacute/IMG/blob/master/wechat/mm_reward_qrcode_1556454268864.png" width="300" height="300" alt="taigacute">
  </a>

## Feedback

- 如果你遇到了麻烦可以提 issue 或者 [Gitter](https://gitter.im/thinkvim/community)

## 鸣谢

- [chemzqm](https://github.com/chemzqm)
- [rafi](https://github.com/rafi/vim-config)
- [Shougo](https://github.com/Shougo)
