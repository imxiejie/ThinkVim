## NeoVim-Config 

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/1.jpg)


## Feature

* Modular
* 80% of plugins lazyload
* convenient management
* lsp supprot
* simple customization
## Required
* neovim
* python3 support
* node and yarn
## Install
```
git clone https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
1. Input nvim, it will automatic install [dein](https://github.com/Shougo/dein.nvim)
2. Then it will automatic install plugins when install complete.
3. Enjoy hacking!
## Plugins
### [Airline](https://github.com/vim-airline/vim-airline) 
   Integrated git file information, smarter buffer mobile tabline, you can jump between buffers by `leader+number`
   ![Airline](https://github.com/taigacute/nvim-config/screenshot/airline.png)
   ![Tabline](https://github.com/taigacute/nvim-config/screenshot/tabline.png)
### [Coc](https://github.com/neoclide/coc.nvim)
   Integrated lsp complement plug-in, simple configuration, excellent performance, smarter and faster, you can integrate        emmet, neosnippet, etc. through coc middleware, [more about coc plugin](https://github.com/neoclide/coc.nvim)
    ![coc](https://github.com/taigacute/nvim-config/screenshot/coc.png)
### Git
   Git plugin includes [vim-gitgutter](https://github.com/airblade/vim-gitgutter) [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
   ![gitgutter](https://github.com/taigacute/nvim-config/screenshot/gitgutter.png)
### [Easymotion](https://github.com/easymotion/vim-easymotion)
   Fast mobile plugin
   ![easymotion](https://github.com/taigacute/nvim-config/screenshot/easymotion.png)
### [Tagbar](https://github.com/majutsushi/tagbar)
   ![tagbar](https://github.com/taigacute/nvim-config/screenshot/tagbar.png)
### [Neosnippet](https://github.com/Shougo/neosnippet)
   Provide a more convenient code snippet
   ![neosnippet](https://github.com/taigacute/nvim-config/screenshot/neosnippet.png)
### [Denite](https://github.com/Shougo/denite.nvim)
   Scalable high performance plugin
   ![Denite](https://github.com/taigacute/nvim-config/screenshot/Denite.png)
## Todo
THis is version of complete by coc。 if you want use deoplete，Please create issue for deoplete，I will upload deoplete version！  
这个版本的补全是使用coc，如果你想使用deoplete版本请提issue，我会上传deoplte版本的配置。
所有插件我基本都测试过了，正常使用，如果使用有问题请提issues。



