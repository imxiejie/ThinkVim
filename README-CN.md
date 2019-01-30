## NeoVim-Config 

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/1.jpg)


## 特性

* 模块化
* 懒加载百分之80的插件
* 更容易管理
* lsp语言服务器支持
* 简单可定制化
## 必须
* neovim
* python3 支持
* node and yarn
## 安装
```
git clone https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
1. 输入nvim会自动安装 [dein](https://github.com/Shougo/dein.nvim)插件管理
2. 自动安装插件，出现done代表完成
3. Enjoy hacking!
## 插件
并不是所有插件清单，后续慢慢补上
### [Airline](https://github.com/vim-airline/vim-airline) 
   集成了文件信息，行数，git的状态栏
   ![Airline](https://github.com/taigacute/nvim-config/blob/master/screenshot/airline.png)
   你可以使用`leader+number`在buffer之间移动
   ![Tabline](https://github.com/taigacute/nvim-config/blob/master/screenshot/tabline.png)
### [Coc](https://github.com/neoclide/coc.nvim)
  更加高效的补全插件，它集成了lsp，配置简单，易使用，通过中间件可以结合很多插件使用 [使用方法](https://github.com/neoclide/coc.nvim)
    ![coc](https://github.com/taigacute/nvim-config/blob/master/screenshot/coc.png)
### Git
  Git操作插件包含 [vim-gitgutter](https://github.com/airblade/vim-gitgutter) [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)  
   ![gitgutter](https://github.com/taigacute/nvim-config/blob/master/screenshot/gitgutter.png)
### [Easymotion](https://github.com/easymotion/vim-easymotion)
   快速移动插件  
   ![easymotion](https://github.com/taigacute/nvim-config/blob/master/screenshot/easymotion.png)
### [Tagbar](https://github.com/majutsushi/tagbar)
   方便的代码查看 
   ![tagbar](https://github.com/taigacute/nvim-config/blob/master/screenshot/tagbar.png)
### [Neosnippet](https://github.com/Shougo/neosnippet)
   强大且易配置的代码片段插件  
   ![neosnippet](https://github.com/taigacute/nvim-config/blob/master/screenshot/neosnippet.gif)
### [Denite](https://github.com/Shougo/denite.nvim)
   高度配置的搜索插件不局限于搜索配合source可定制更多功能  
   ![Denite](https://github.com/taigacute/nvim-config/blob/master/screenshot/Denite.png)
## Todo
这是coc补全版本的nvimconfig，如果你是deoplete的忠实用户，请创建关于deoplete的issue，我会上传deoplete版本的nvimconfig！日常我2个都在使用，deoplete写python，coc写go与react

