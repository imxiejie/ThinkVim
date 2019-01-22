## NeoVim-Config 

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/1.jpg)
## Install

## Update 2019.1.22

init.vim的模块
* dein
  * plugins.toml        正常加载插件
  * plugins-lazy.toml   懒加载插件（基于某些命令或文件格式等加载插件）
* plugins
  * 插件配置
* general
  * vim设置
* mappings
  * 键位映射设置，（注意：leader和mapleader必须加载在插件前）
* filetype
  * 文件格式设置
* autoload
  * utils.vim --> airlinetabline 函数
### Step1
安装neovim，这个就很简单了，如果你是mac，那么直接`brew install neovim`就好了，如果你没有`brew`这个包管理软件，那么你需要先安装`brew`。linux也是差不多的方式，只不过需要替换linux的包管理工具。
### Step2
安装插件管理工具，[dein](https://github.com/Shougo/dein.vim)
```
cd .tmp
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh  ~/.config/nvim
```
注意：安装成功后会提示安装的脚本记住dein的路径修改02.dein.vim。
### Step3
```
git clone https://github.com/PendragonSaber/mydotfiles.git ~/.config/nvim
```
### Step4
```
:call dein#install()
```


