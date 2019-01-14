## NeoVim-Config 
我平时主要是写`go`，`react`，`vue`，所以这个配置完全适合这些语言，当然对前端开发也有很好的支持，`JS`,`JSX`,`HTML`,`CSS`等。如果你是New Vimer想快速上手vim，我更推荐你去试试`spacevim`、`vim-plus`等长期维护且配置完善的vim框架，或者[PegasusWang](https://github.com/PegasusWang/vim-config)的这个配置，他在知乎vim的专栏经常会发布一些关于vim的视频，推荐你去看看。如果你想彻底的了解vim从零构建一个属于你自己的编辑器，那么你可以试试我的这套配置，并没有太多的改键，只是稍微映射了一些快捷键提高编码的效率。以下的安装方法比较适合mac，或者linux。
![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/1.jpg)
## Install
### Step1
安装neovim，这个就很简单了，如果你是mac，那么直接`brew install neovim`就好了，如果你没有`brew`这个包管理软件，那么你需要先安装`brew`。linux也是差不多的方式，只不过需要替换linux的包管理工具。
### Step2
安装插件管理工具，[dein](https://github.com/Shougo/dein.vim)
```
cd .tmp
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh  ~/.config/nvim
```
### Step3
```
git clone https://github.com/imjustfly/nvimrc.git ~/.config/nvim
```
### Step4
```
:call dein#install()
```

## 截图

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/sceenshot.gif)

