
## ThinkVim 

![](https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png)




## [Switch English](https://github.com/taigacute/nvim-config/blob/master/README-EN.md) 

## 特性
- 模块插件配置
- 懒加载百分之90插件
- 启动速度快
* 启动时间`nvim --startuptime ~/vimstart.log` :

  PluginTotal    | StartupTime
  -------------- | ----------------------
     55 |   50~63ms

- 完全自定义
- LSP语言服务支持
  - 默认支持js jsx python 其他语言开发者需要去[coc的主页查看语言的server](https://github.com/neoclide/coc.nvim/wiki/Language-servers)在coc-settins.json中配置即可。默认的json文件包含的是gopls，go语言开发server。可以根据自己的语言替换。

## 必要环境
* macos or linux  (windows上需要修改一些变量）
* neovim > 0.4.0
* python3 support
  - pip3 install --user pynvim
* node and yarn
* NerdFont
### 必要工具

- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
- Rouge : `sudo gem install rouge`

## 安装
```
git clone --depth=1 https://github.com/taigacute/ThinkVim.git ~/.config/nvim
```
**_1._** clone完成后打开你的终端或者GUI，输入nvim，会自动安装dein插件管理  
**_2._** 安装完成后，检测插件是否安装进行安装，由于国内clone较慢建议全局方式科学   
**_3._** 如果你要使用Denite等需要python3支持的插件，你需要在normal模式输入`:UpdateRemotePlugins`  
**_4._** 默认json中带了go开发的server不写go的删除替换。gopher安装[gopls](https://github.com/saibing/tools)


## 结构
- [after](~/.config/nvim/after)
  - [ftplugin](~/.config/nvim/after/ftplugin)
    - [go.vim](~/.config/nvim/after/ftplugin/go.vim)  - go文件设置
- [autoload](~/.config/nvim/autoload)
  - [lightline](~/.config/nvim/after/autoload/lightline)
    - [colorscheme](~/.config/nvim/after/autoload/lightline/colorscheme)  - lightline主题文件夹
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
  - [themes](./config/theme.vim) - 主题颜色设置
- [colors](~/.config/nvim/colors) - 主题文件
- [ftplugin](~/.config/nvim/ftplugin) - 文件格式设置
- [plugin](~/.config/nvim/plugin) - 一些小功能插件

## 正常加载插件
Name           | Description
-------------- | ----------------------
[itchyny/lightline.vim] | 状态栏
[mengelbrecht/lightline-bufferline] | 顶部buffer插件
[neoclide/coc.nvim] | 补全插件
[hona/vim-snippets] | 代码片段



## 懒加载插件
Name           | Description
-------------- | ----------------------
[mhinz/vim-startify] | 启动画面
[ryanoasis/vim-devicons] |  字体图标
[tpope/vim-fugitive] | git插件 
[junegunn/fzf.vim] | 搜索插件
[hona/dockerfile.vim] | Dockerfile支持
[junegunn/vim-easyalign] | 快速对齐
[junegunn/goyo.vim] | 关灯写代码
[junegunn/limelight] | 关灯写代码
[Yggdroot/indentLine] | 缩进线
[tpope/vim-surround] |  符号成双成对
[tpope/vim-repeat] | 重复上一次操作
[sbdchd/neoformat] | 格式化插件
[yonchu/accelerated-smooth-scroll] | 平滑滚动插件 
[chemzqm/vim-easygit] | 更简单的git操作
[rhysd/git-messenger.vim] | git信息查看
[thinca/quickrun] | 快速输出
[tpope/vim-markdown] | markdown插件
[junegunn/vim-emoji] | emoji补全
[simnalamburt/vim-mundo] | 各种修改查看撤销
[kana/vim-textobj-user] | 文本对象
['bps/vim-textobj-python'] | pythontextobject
[mg979/vim-visual-multi] | 多光标操作
[terryma/vim-expand-region] | visual增强
[liuchengxu/vim-which-key] | 键位查找
[easymotion/vim-easymotion] | 快速移动
[scrooloose/nerdtree] | 文件管理
[tiagofumo/vim-nerdtree-syntax-highlight] | nerdtree高亮
[airblade/vim-gitgutter] | git信息
[majutsushi/tagbar] | 代码变量函数跳转显示插件
[mattn/emmet-vim] | 快速生成html插件
[Raimondi/delimitMate] | 符号补全插件
[Shougo/denite.nvim] | 搜索插件
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
* [Lightline](https://github.com/itchyny/lightline.vim) Or [Airline](https://github.com/vim-airline/vim-airline)
  * 默认的状态栏插件为lightline，如果你想使用airline，修改deinlazy.toml，取消airline以及vim-airline-theme并注释lightline。  
  _**NOTE!!Airline 需要更多的启动时间相比lightline**_  
* 文件管理Defx
  * 抛弃了nerdtree，在多文件打开速度上defx秒杀nerdtree。而且defx提供更多特性，还可以配合denite使用。defx快捷键的设置在allkey.vim
    同样的保留了nerdtree的配置，只不过在deinlazy.toml中注释了nerdtree。你可以根据你的喜欢切换。
## 键位操作
默认leader为`SPACE` localleader`;` 关于键位的设置在mapping.vim，插件的键位设置在allkey.vim。根据你的习惯修改任意你喜欢的键位
## Language Support
语言工具支持，在coc.nvim主页查找你的开发语言server，并修改`coc-settings.json`添加你的语言服务器。
## 自定义
* 插件
   * 你可以添加任何你喜欢的插件,根据需求功能确定为正常加载或者懒加载，我更建议设置懒加载不会降低vim的启动速度也可以避免vim性能损耗卡顿，注意插件的键位设置应该在 `allkey.vim`.
* 颜色
   * 将你喜欢的 `colorscheme` 放到Colors文件夹中，然后修改 `themes/theme.vim`.colors文件夹中已经装了很多主题可以更换
## Backers


## Donation
  * 如果对你有帮助，You Can Buy Me a Coffee By WeChat:)
  <a href="" target="_blank" title="taigacute">
  <img src="https://github.com/taigacute/IMG/blob/master/wechat/mm_reward_qrcode_1556454268864.png" width="300" height="300" alt="taigacute">
  </a>

## 教程
   * 你可以在[B站查看使用教程](https://www.bilibili.com/video/av43675350/)
## Feedback
  * 如果你遇到了麻烦可以提issue或者 [Giiter](https://gitter.im/thinkvim/community)
## 鸣谢
* [rafi](https://github.com/rafi/vim-config)
* [Shougo](https://github.com/Shougo)

