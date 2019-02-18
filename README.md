## ThinkVim 

<div align="center"><img style="width:300px;height:100px;box-shadow: 10px 10px 5px #888888;" src="https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/thinkvim.png"/></div>



## [Switch Chinese](https://github.com/taigacute/nvim-config/blob/master/README-CN.md)
## Feature


- Modular
- 80% of plugins lazyload
- convenient management
- lsp supprot
- simple customization
## Required
* macos or linux
* neovim
* python3 support
* node and yarn
* NerdFont
### Recommended Tools

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- Universal ctags: [ctags.io](https://ctags.io/)
- Fuzzy file finders: [fzf](https://github.com/junegunn/fzf), [fzy](https://github.com/jhawthorn/fzy), or [peco](https://github.com/peco/peco)

## Install
```
git clone https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
**_1._** Input nvim, it will automatic install [dein](https://github.com/Shougo/dein.nvim)  
**_2._** Then it will automatic install plugins when install complete.  
**_3._** if you want use neosnippet and emmet with coc,you should use `:CocInstall coc-neosnippet` `CocInstall coc-emmet`
**_4._** Enjoy hacking!

## Structure

- [rc/](~/.config/nvim/rc) - Configuration
  - [dein](~/.config/nvim/rc/dein)  - _**Plugins!**_
    - [dein.toml](~/.config/nvim/rc/dein/dein.toml)     - Not Lazy-Load Plugins
    - [deinlazy.toml](~/.config/nvim/rc/dein/deinlazy.toml) - Lazy-Load Plugins
  - [ftplugin](~/.config/nvim/rc/ftplugin) - filetype configuration
  - [plugins](~/.config/nvim/rc/plugins) - _**PluginsConfig!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath` initialization
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein configuration
  - [general.vim](~/.config/nvim/rc/general.vim) - General configuration
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Key-mappings
  - [themes](./config/theme.vim) - Color-scheme and theme setup
- [colors](~/.config/nvim/colors) - ColorScheme



## Non Lazy-Loaded Plugins
Name           | Description
-------------- | ----------------------
[scrooloose/nerdcommenter] | 
[ctrlpvim/ctrlp.vim] | 
[tpope/vim-surround] | 
[tpope/vim-repeat] | 
[itchyny/lightline.vim] | 
[mengelbrecht/lightline-bufferline] | 
[taigacute/spaceline.vim] | 




## Feedback
  * if you have any question,you can ask me at [Giiter](https://gitter.im/thinkvim/community)
