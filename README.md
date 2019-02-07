## NeoVim-Config 

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/nvim1.png)

## [Switch Chinese](https://github.com/taigacute/nvim-config/blob/master/README-CN.md)
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
* NerdFont
## Install
```
git clone https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
1. Input nvim, it will automatic install [dein](https://github.com/Shougo/dein.nvim)
2. Then it will automatic install plugins when install complete.
3. Enjoy hacking!
## Plugins
Did not list all plugins, follow-up plans
### [Airline](https://github.com/vim-airline/vim-airline) or lightline
   >If you need a faster startup speed, you may need to use lightline, the default option is lightline. The starting speed is 119ms. If you want to use airline, you may have to sacrifice some time, it is about 170ms.
   Integrated git file information, smarter buffer mobile tabline
   ![Airline](https://github.com/taigacute/nvim-config/blob/master/screenshot/airline.png)
   you can jump between buffers by `leader+number`
   ![Tabline](https://github.com/taigacute/nvim-config/blob/master/screenshot/tabline.png)
### [Coc](https://github.com/neoclide/coc.nvim)
   Integrated lsp complement plug-in, simple configuration, excellent performance, smarter and faster, you can integrate        emmet, neosnippet, etc. through coc middleware, [more about coc plugin](https://github.com/neoclide/coc.nvim)
    ![coc](https://github.com/taigacute/nvim-config/blob/master/screenshot/coc.png)
### Git
   Git plugin includes [vim-gitgutter](https://github.com/airblade/vim-gitgutter) [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)  
   ![gitgutter](https://github.com/taigacute/nvim-config/blob/master/screenshot/gitgutter.png)
### [Easymotion](https://github.com/easymotion/vim-easymotion)
   Fast mobile plugin  
   ![easymotion](https://github.com/taigacute/nvim-config/blob/master/screenshot/easymotion.png)
### [Tagbar](https://github.com/majutsushi/tagbar)
   Convenient code view  
   ![tagbar](https://github.com/taigacute/nvim-config/blob/master/screenshot/tagbar.png)
### [Neosnippet](https://github.com/Shougo/neosnippet)
   Provide a more convenient code snippet  
   ![neosnippet](https://github.com/taigacute/nvim-config/blob/master/screenshot/neosnippet.gif)
### [Denite](https://github.com/Shougo/denite.nvim)
   Scalable high performance plugin  
   ![Denite](https://github.com/taigacute/nvim-config/blob/master/screenshot/Denite.png)
## Todo
THis is version of complete by coc。 if you want use deoplete，Please create issue for deoplete，I will upload deoplete version！  
