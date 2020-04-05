![](https://travis-ci.com/hardcoreplayers/ThinkVim.svg?branch=master) [![Gitter](https://badges.gitter.im/thinkvim/Thinkvim.svg)](https://gitter.im/thinkvim/Thinkvim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

## <div align="center"> [ThinkVim](https://github.com/taigacute/ThinkVim)</div>

<div align="center">
<img src="https://raw.githubusercontent.com/taigacute/IMG/master/thinkvim/thinkvim.png" width="960" height="540">
</div>

[See here for more screenshots](https://github.com/hardcoreplayers/ThinkVim/wiki/Screenshots)

## Feature

- 🚀Fastest StartupTime(Plugins Total:62 40-60ms)
- 💎Modular Plugin Config
- ⚒ Easy to use Easy to hack
- 🌟95% plugins lazyload with dein
- ⚡️Centerd on Coc.nvim, Denite auxiliary
- 🎱Autocompletion by lsp which coc.nvim support
- ⚔️ Fully customizable
- 🌈Comfortable theme gruvbox9

## Required Env

- macos or linux
- neovim >= 0.4.0（cause i used floatwindow,this feature support by neovim 0.4.0 above)
- python3 support
  - pip3 install --user pynvim
- node and yarn
- NerdFont

### Required Tool

- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
  - mac `brew install --HEAD universal-ctags/universal-ctags/universal-ctags`
  - ubuntu
    ```
    # install libjansson first
    sudo apt-get install libjansson-dev
    # then compile and install ctags
    ```

### Not Required

- bat : [install bat](https://github.com/sharkdp/bat)
- exa : [install exa](https://github.com/ogham/exa)

## Installation

**_1._**

```
1. git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
2. open nvim
```

- Note: If your system sets \$XDG_CONFIG_HOME, use that instead of ~/.config in the code above. Nvim follows the XDG base-directories convention.

**_2._** open the nvim ,it will auto install dein and plugins,when the plugins install success,it will install coc extensions.

**_3._** if you see the coc extesions installed success in your vim commandline .Congratulations‼️

## PluginsDetail

Check this [wiki page](https://github.com/hardcoreplayers/ThinkVim/wiki/Plugins-Detail) to know all plugins that thinkvim installed.

## Tutorial

- check the [tutorial](/tutorial/tutorial.md) to know more about ThinkVim

## Backers

Do you like ThinkVim? keep it alive by [donating funds](https://salt.bountysource.com/teams/thinkvim-taigacute)😘!

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
<img src="https://github.com/taigacute/IMG/blob/master/wechat/mm_reward_qrcode_1556454268864.png" width="40%"  height="40%">

## Thanks

- [chemzqm](https://github.com/chemzqm)
- [rafi](https://github.com/rafi/vim-config)
- [Shougo](https://github.com/Shougo)
