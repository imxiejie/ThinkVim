
## [ThinkVim](https://github.com/taigacute/ThinkVim)

![](https://github.com/taigacute/IMG/blob/master/thinkvim/gruvbox.png)




## [Switch English](https://github.com/taigacute/nvim-config/blob/master/README-EN.md) 

## 特性
- 模块插件配置
- 懒加载百分之90插件
- 启动速度快
* 启动时间`nvim --startuptime ~/vimstart.log` :

  PluginTotal    | StartupTime
  -------------- | ----------------------
     50 |   50~63ms

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

## 安装  ---下方有B站安装教程
```
git clone --depth=1 https://github.com/taigacute/ThinkVim.git ~/.config/nvim
```
**_1._** clone完成后打开你的终端或者GUI，输入nvim后一切都会自动安装耐心等待就可以了。   
**_2._** 如果你要使用Denite等需要python3支持的插件，你需要在normal模式输入`:UpdateRemotePlugins`  
**_3._** linux下需要修改下python的路径。修改rc/init.vim pytonhost的路径设置   
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
[itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) | 状态栏
[mengelbrecht/lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline) | 顶部buffer插件
[neoclide/coc.nvim](https://github.com/mengelbrecht/lightline-bufferline) | 补全插件
[hona/vim-snippets](https://github.com/hona/vim-snippets) | 代码片段



## 懒加载插件
Name           | Description
-------------- | ----------------------
[mhinz/vim-startify](https://github.com/mhinz/vim-startify) | 启动画面
[ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) |  字体图标
[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | git插件 
[junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) | 搜索插件
[hona/dockerfile.vim](https://github.com/hona/dockerfile.vim) | Dockerfile支持
[junegunn/vim-easyalign](https://github.com/junegunn/vim-easyalign) | 快速对齐
[junegunn/goyo.vim](https://github.com/junegunn/goyo.vim) | 关灯写代码
[junegunn/limelight](https://github.com/junegunn/limelight) | 关灯写代码
[Yggdroot/indentLine](https://github.com/Yggdroot/indentLine) | 缩进线
[tpope/vim-surround](https://github.com/tpope/vim-surround) |  符号成双成对
[tpope/vim-repeat](https://github.com/tpope/vim-repeat) | 重复上一次操作
[sbdchd/neoformat](https://github.com/sbdchd/neoformat) | 格式化插件
[yonchu/accelerated-smooth-scroll](https://github.com/yonchu/accelerated-smooth-scroll) | 平滑滚动插件 
[chemzqm/vim-easygit](https://github.com/chemzqm/vim-easygit) | 更简单的git操作
[rhysd/git-messenger.vim](https://github.com/rhysd/git-messenger.vim) | git信息查看
[thinca/quickrun](https://github.com/thinca/quickrun) | 快速输出
[tpope/vim-markdown](https://github.com/tpope/vim-markdown) | markdown插件
[junegunn/vim-emoji](https://github.com/junegunn/vim-emoji) | emoji补全
[simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo) | 各种修改查看撤销
[kana/vim-textobj-user](https://github.com/kana/vim-textobj-user) | 文本对象
[bps/vim-textobj-python](https://github.com/bps/vim-textobj-python) | pythontextobject
[mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi) | 多光标操作
[terryma/vim-expand-region](https://github.com/terryma/vim-expand-region) | visual增强
[liuchengxu/vim-which-key](https://github.com/liuchengxu/vim-which-key) | 键位查找
[easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion) | 快速移动
[Shougo/defx.nvim](https://github.com/Shougo/defx.nvim) | 文件资源管理
[kristijanhusak/defx-icons](https://github.com/https://github.com/kristijanhusak/defx-icons) | defx图标
[scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) | 文件管理（已注释插件）
[tiagofumo/vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) | nerdtree高亮（已注释插件）
[airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter) | git信息
[majutsushi/tagbar](https://github.com/majutsushi/tagbar) | 代码变量函数跳转显示插件
[mattn/emmet-vim](https://github.com/mattn/emmet-vim) | 快速生成html插件
[Shougo/denite.nvim](https://github.com/Shougo/denite.nvim) | 搜索插件
[w0rp/ale](https://github.com/w0rp/ale) | 语法检查
[othree/html5.vim](https://github.com/othree/html5.vim) | html5插件
[neoclide/vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve) | js jsx插件
[fatih/vim-go](https://github.com/fatih/vim-go)| go开发必备插件
[elzr/vim-json](https://github.com/elzr/vim-json) | json插件
[cespare/vim-toml](https://github.com/cespare/vim-toml) | toml文件高亮插件

## CoC Extensions
Name           | Description
-------------- | ----------------------
[coc-html](https://github.com/neoclide/coc-html)     | html扩展 
[coc-emmet](https://github.com/neoclide/coc-emmet)    |  emmet使用
[coc-css](https://github.com/neoclide/coc-css)     | css扩展 
[coc-snippets](https://github.com/neoclide/coc-snippets)     | 代码片段 
[coc-prettier](https://github.com/neoclide/coc-prettier)     | 格式化 
[coc-eslint](https://github.com/neoclide/coc-eslint)     | eslint检测
[coc-tsserver](https://github.com/neoclide/coc-tsserver)     | js/ts 语言server
[coc-pairs](https://github.com/neoclide/coc-pairs)     | 符号补全 
[coc-json](https://github.com/neoclide/coc-json)     | json server 
[coc-python](https://github.com/neoclide/coc-python)     | Python server 
[coc-imselect](https://github.com/neoclide/coc-imselect)     | 选择
[coc-highlight](https://github.com/neoclide/coc-highlight)     | 高亮，支持显示css颜色代码
[coc-git](https://github.com/neoclide/coc-git)     | git扩展 
## 选择你的喜好
* [Lightline](https://github.com/itchyny/lightline.vim) Or [Airline](https://github.com/vim-airline/vim-airline)
  * 默认的状态栏插件为lightline，如果你想使用airline，修改deinlazy.toml，取消airline以及vim-airline-theme并注释lightline。  
  _**NOTE!!Airline 需要更多的启动时间相比lightline**_  
* [Defx.nvim](https://github.com/Shougo/defx.nvim)  文件资源管理
  * 抛弃了nerdtree，在多文件打开速度上defx秒杀nerdtree。而且defx提供更多特性，还可以配合denite使用。defx快捷键的设置在allkey.vim
    同样的保留了nerdtree的配置，只不过在deinlazy.toml中注释了nerdtree。你可以根据你的喜欢切换。
## 键位操作  
默认leader为`SPACE` localleader`;` 关于键位的设置在mapping.vim，插件的键位设置在allkey.vim。根据你的习惯修改任意你喜欢的键位  

Keys           | Mode   | Description
-------------- | -------| ----------------
Ctrl + w |Insert | 删除光标下整个单词
Ctrl + h |Insert | 删除映射 `BackSpace`
Ctrl + d |Insert | 删除光标所在字符
Ctrl + u |Insert | 当前光标删除到行首
Ctrl + b |Insert | 向左移动
Ctrl + f |Insert | 向右移动
Ctrl + a |Insert | 移到行首
Ctrl + e |Insert | 移到行尾
Ctrl + p |Command | 向上移动
Ctrl + b |Command | 向左移动
Ctrl + f |Command | 向右移动
Ctrl + a |Command | 移动到行首
Ctrl + e |Command | 移动到行尾
Ctrl + d |Command | 删除光标所在字符
Ctrl + h |Command |  删除映射 `BackSpace`
Ctrl + S |Insert  | 保存
Ctrl + Q |Insert  | 保存并退出
Ctrl + o |Insert  | 生成新行
]    + b |Normal  | 上一个buffer
[    + b |Normal  | 下一个buffer
Ctrl + x |Normal  | 删除当前buffer
Y        |Normal  | 复制到行尾
j        |Normal  | gj
k        |Normal  | gk
j        |Visual  | gj
k        |Visual  | gj
[ + a      |Normal  | Ale下一个错误
] + a      |Normal  | Ale上一个错误
[ + c      |Normal  | coc下一个错误
] + c      |Normal  | coc上一个错误
] + ]      |Normal  | 跳转上一个go函数
[ + [      |Normal  | 跳转下一个go函数
ga        | Normal | EasyAlign 快速对其
ga        | 可视模式 | EasyAlign 快速对其
v        | 可视模式 | vim-expand-region
V       | 可视模式 | vim-expand-region




* Window 

Keys           | Mode   | Description
-------------- | -------| ----------------
Ctrl + h | Normal | 移动到左边窗口
Ctrl + l | Noraml | 移动到右边窗口
Ctrl + j | Normal | 移动到下边窗口
Ctrl + k | Normal | 移动到上边窗口
Ctrl + w [ | Normal | 窗口宽度减3
Ctrl + w ] | Normal | 窗口宽度加3

* Tab  

Keys           | Mode   | Description
-------------- | -------| ----------------
 `<Leader>` + tb  | Normal | 新建tab
 `<Leader>` + te  | Normal | 编辑tab
 `<Leader>` + tc  | Normal | 关闭tab
 `<Leader>` + tm  | Normal | 移动tab

* LeaderKey  

Keys           | Mode   | Description
-------------- | -------| ----------------
 `<Leader>` + 数字 | Normal | 数字[0-9]选择buffer
 `<Leader>` + G   | Normal | 打开Goyo
 `<Leader>` + m   | Normal | 打开mundo
 `<Leader>` + w   | Normal | 保存
 `<Leader>` + s   | Normal | 打开Startify
 `<Leader>` + d   | Normal | 打开Dash
 `<Leader>` + fc   | Normal | fzf vim主题查看更改
 `<Leader>` + ff   | Normal | fzf 在当前路径下文件搜索
 `<Leader>` + fr   | Normal | fzf rg搜索
 `<Leader>` + fw   | Normal | fzf rg搜索光标下的单词
 `<Leader>` + fgc   | Normal | fzf gitcommits记录
 `<Leader>` + fbc   | Normal | fzf gitbcommits记录
 `<Leader>` + `<Leader>` + w   | Normal | Easymotion 向下跳转
 `<Leader>` + `<Leader>` + b  | Normal | Easymotion 向上跳转
 `<Leader>` + `<Leader>` + f   | Normal | Easymotion 搜索跳转
 `<Leader>` + cc   | Normal | NerdComment 注释
 `<Leader>` + cu   | Normal | NerdComment 取消注释
 `<Leader>` + gr   | Normal | vim-go GoRename
 `<Leader>` + goi   | Normal | vim-go GoInfo
 `<Leader>` + god   | Normal | vim-go GoDoc
 `<Leader>` + gor   | Normal | vim-go GoRun
 `<Leader>` + gob   | Normal | vim-go GoBuild
 `<Leader>` + got   | Normal | vim-go GoTest
 `<Leader>` + goc   | Normal | vim-go GoCoverage
 `<Leader>` + gov   | Normal | vim-go GoDef

* LocalLeaderKey  

Keys           | Mode   | Description
-------------- | -------| ----------------
`<LocalLeader>` + ca   | Normal | CocDiagnostics
`<LocalLeader>` + cc   | Normal | CocCommands
`<LocalLeader>` + ce   | Normal | CocExtensions
`<LocalLeader>` + cj   | Normal | Cocnext
`<LocalLeader>` + ck   | Normal | CocPrev
`<LocalLeader>` + co   | Normal | CocOutline
`<LocalLeader>` + cr   | Normal | CocResume
`<LocalLeader>` + cs   | Normal | CocIsymbols
`<LocalLeader>` + b   | Normal | fzf 显示buffer列表
`<LocalLeader>` + t   | Normal | 打开Tagbar
`<LocalLeader>` + r   | Normal | QuickRun 快速运行
`<LocalLeader>` + da   | Normal | TodoAdd 添加
`<LocalLeader>` + dt   | Normal | 打开todolist列表
`<LocalLeader>` + dd   | Normal | 打开已完成的todo列表
`<LocalLeader>` + ga   | Normal | Gadd
`<LocalLeader>` + gd   | Normal | Gdiff
`<LocalLeader>` + gc   | Normal | Gcommit
`<LocalLeader>` + gb   | Normal | Gblame
`<LocalLeader>` + gB   | Normal | GBrowse
`<LocalLeader>` + gS   | Normal | GStatus
`<LocalLeader>` + gp   | Normal | Gpush
`<LocalLeader>` + gm   | Normal | Gitmessage

* Defx 文件资源管理  

Keys           | Mode   | Description
-------------- | -------| ----------------
 `<Leader>` + e | Normal | 打开defx
 N            | Defx | 新建文件
 K           | Defx | 新建文件夹
 `<CR>`     | Defx | 打开目录或打开文件
 l     | Defx | 打开目录或打开文件
 dd        | Defx | 删除
 r         |Defx | 重命名
 .         | Defx | 显示隐藏文件
 h         | Defx | 返回上级目录
 q         | Defx | 退出defx
 s         | Defx | 右侧垂直分屏打开文件
 i         | Defx | 水平打开文件
 yy        | Defx | 复制文件路径
 \         | Defx | 显示当前文件所在路径
 c        | Defx | 复制
 m         | Defx | 移动
 p         | Defx | 粘贴
 `<Space>` | Defx | 多选
 gf        | Defx | 在denite浮动窗口中显示所在文件夹下所有文件
 gr        | Defx | 在denite中搜索
 w         | Defx | 增加defx 宽度
 
* CoC 

Keys           | Mode   | Description
-------------- | -------| ----------------
Tab            | Select | 跳转下一个片段 函数参数跳转
Tab            | Insert | 补全向下筛选
Shit + Tab      |Insert | 补全向上筛选
Ctrl + n       | Insert  |补全向下筛选
Ctrl + p       | Insert  |补全向上筛选
`<CR>`         | Insert/Select | 代码片段确认选择 补全确认选择

 * TextObject 

Keys           | Mode   | Description
-------------- | -------| ----------------
vif           | Go | 快速选择函数体内
vaf           | Go | 快速选择整个函数体
aF            | Python | 快速选择整个函数体
iF            | Python | 快速选择函数体内
 
 
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
   * 你可以在[B站查看使用教程系列](https://space.bilibili.com/321783076/channel/detail?cid=64354)
## 答疑
   > 为什么使用dein而不是vim-plug  
   * dein提供更多的钩子函数，懒加载方面做得也比vim-plug好一些。使用确实很困难。需要看一些dein的资料。关于dein褒贬不一，dein添加了一层缓存接管runtime，有人觉得好有人觉得不好。
   > 使用是否方便
   * 对于新的vimer 建议安装后使用。调整需要学习一些vimscript和dein的使用。
## Feedback
  * 如果你遇到了麻烦可以提issue或者 [Giiter](https://gitter.im/thinkvim/community)
## 鸣谢
* [rafi](https://github.com/rafi/vim-config)
* [Shougo](https://github.com/Shougo)

