
## ThinkVim 

<div align="center"><img style="width:300px;height:100px;box-shadow: 10px 10px 5px #888888;" src="https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/thinkvim.png"/></div>

## [Switch English](https://github.com/taigacute/nvim-config/blob/master/README-EN.md) 

## 特性

- 模块化
- 懒加载百分之80插件
- 完全自定义
- LSP语言服务支持

## 必要
* macos or linux
* neovim
* python3 support
* node and yarn
* NerdFont
### 必要工具

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
- Fuzzy file finders: [fzf](https://github.com/junegunn/fzf), [fzy](https://github.com/jhawthorn/fzy), or [peco](https://github.com/peco/peco)
- Rouge : `gem install rouge`

## 安装
```
git clone https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
**_1._** clone完成后打开你的终端或者GUI，输入nvim，会自动安装dein插件管理  
**_2._** 安装完成后，检测插件是否安装进行安装，由于国内clone较慢建议全局方式科学   
**_3._** 安装coc中间件，在normal模式输入`:CocInstall coc-neosnippet` `CocInstall coc-emmet`  
**_4._** 如果你要使用Defx和Denite等需要python3支持的插件，你需要在normal模式输入`:UpdateRemotePlugins`  
**_For go_** 执行`go get -u github.com/sourcegraph/go-langserver` 安装go server。默认的coc-settings.json已配置goserver

## 结构

- [rc/](~/.config/nvim/rc) - 配置文件目录
  - [dein](~/.config/nvim/rc/dein)  - _**插件安装!**_
    - [dein.toml](~/.config/nvim/rc/dein/dein.toml)     - 正常加载的插件
    - [deinlazy.toml](~/.config/nvim/rc/dein/deinlazy.toml) - 懒加载插件
  - [ftplugin](~/.config/nvim/rc/ftplugin) - 文件类型设置
  - [plugins](~/.config/nvim/rc/plugins) - _**插件设置!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath` 初始化
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein 配置
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim基础设置
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim功能键位绑定
  - [themes](./config/theme.vim) - 主题颜色
- [colors](~/.config/nvim/colors) - 主题文件



## 正常加载插件
Name           | Description
-------------- | ----------------------
[scrooloose/nerdcommenter] | 注释插件
[tpope/vim-surround] |  符号成双成对
[tpope/vim-repeat] | 重复上一次操作
[itchyny/lightline.vim] | 状态栏
[mengelbrecht/lightline-bufferline] | 顶部buffer插件
[taigacute/spaceline.vim] | lightline主题插件自制
[vim-airline/vim-airline]（已注释） | 状态栏
[vim-airline/vim-airline-theme]（已注释）| airline主题插件
[tpope/vim-fugitive] | git插件 
[rking/ag.vim] |  搜索插件
[sbdchd/neoformat] | 格式化插件
[yonchu/accelerated-smooth-scroll] | 平滑滚动插件 
[junegunn/fzf] |  搜索插件
[junegunn/fzf.vim] | 搜索插件
[ryanoasis/vim-devicons] |  字体图标
[mhinz/vim-startify] | 启动画面
[neoclide/coc.nvim] | 补全插件

## 懒加载插件
Name           | Description
-------------- | ----------------------
[Yggdroot/indentLine] | 缩进线
[liuchengxu/vim-which-key] | 键位查找
[easymotion/vim-easymotion] | 快速移动
[scrooloose/nerdtree] （已注释）| 文件管理
[tiagofumo/vim-nerdtree-syntax-highlight]（已注释） | nerdtree高亮
[Shougo/defx.nvim] | 文件管理(更高效)
[kristijanhusak/defx-icons] | defx图标
[airblade/vim-gitgutter] | git信息
[majutsushi/tagbar] | 代码变量函数跳转显示插件
[mattn/emmet-vim] | 快速生成html插件
[Raimondi/delimitMate] | 符号补全插件
[Shougo/neosnippet.vim] | 代码片段
[Shougo/neosnippet-snippets] | 代码片段
[Shougo/denite.nvim] | 搜索插件
[ctrlpvim/ctrlp.vim] |  搜索插件
[w0rp/ale] | 语法检查
[othree/html5.vim] | html5插件 
[pangloss/vim-javascript] |  js插件
[maxmellon/vim-jsx-pretty] |  react插件
[mxw/vim-jsx] | react插件
[hail2u/vim-css3-syntax] | css语法检查
[ap/vim-css-color] | css颜色显示
[fatih/vim-go] | go开发必备插件
[elzr/vim-json] | json插件
[cespare/vim-toml] | toml文件高亮插件

## 选择你的喜好
* [Nerdtree](https://github.com/scrooloose/nerdtree) Or [Defx](https://github.com/Shougo/defx.nvim)
  * 默认文件管理插件为defx，如果你想使用nerdtree，修改deinlazy.toml，取消nerdtree以及nerdtree-syntax-highlint，注释defx，或者同时使用.
* [Lightline](https://github.com/itchyny/lightline.vim) Or [Airline](https://github.com/vim-airline/vim-airline)
  * 默认的状态栏插件为lightline，如果你想使用airline，修改deinlazy.toml，取消airline以及vim-airline-theme并注释lightline。  
  _**NOTE!!Airline 需要更多的启动时间相比lightline**_  
  _**NOTE!!Defx 提供比nerdtree更加优秀的性能**_
## 键位操作
关于键位的设置在mapping.vim，插件的键位设置在allkey.vim。根据你的习惯修改任意你喜欢的键位
## Language Support
语言工具支持，在coc.nvim主页查找你的开发语言server，并修改`coc-settings.json`添加你的语言服务器。
## 自定义
* 插件
   * 你可以添加任何你喜欢的插件,根据需求功能确定为正常加载或者懒加载，我更建议设置懒加载不会降低vim的启动速度也可以避免vim性能损耗卡顿，注意插件的键位设置应该在 `allkey.vim`.
* 颜色
   * 将你喜欢的 `colorscheme` 放到Colors文件夹中，然后修改 `themes/theme.vim`.如果你想修改补全框 `Pmenu` colors. 同样修改 Pmenu 的颜色在 `theme.vim` 
## Feedback
  * 如果你遇到了麻烦可以提issue或者 [Giiter](https://gitter.im/thinkvim/community)
