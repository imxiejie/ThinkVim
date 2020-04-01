# ThinkVim Tutorial

## Structure

The structure of Thinkvim ‼️

- [autoload/](~/.config/nvim/rc) - autoload config about dein and theme
- [core/](~/.config/nvim/rc) - core config file
  - [dein](~/.config/nvim/rc/dein) - _**Plugins list!**_
    - [plugins.yaml](~/.config/nvim/rc/dein/plugins.yaml) - ThinkVim Installed plugins
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath`
  - [color.vim](~/.config/nvim/rc/color.vim) - thinkvim custom color
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim settings
  - [filetype.vim](~/.config/nvim/rc/general.vim) - filetype settings
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim keymap
- [colors](~/.config/nvim/colors) - Colorscheme
- [modules](~/.config/nvim/modules) - _**Plugins Config!**_
- [ftplugin](~/.config/nvim/ftplugin) - filetypePlugin
- [plugin](~/.config/nvim/plugin) - Some easy plugin

## User Custom

User custom folder `~/.thinkvim.d`,notice the folder must be in your root path `~`,in this folder you should touch two files `plugins.yaml` and `custom.vim`

## How to Install plugins?

I suggest that most of plugins should lazyload by dein ,There has two ways to install plugins.

- if you are a vim begginer or you want to follow master branch,you should use `plugins.yaml`. like you want use choosewin plugin,you can installed it in `plugins.yaml`(notice thinkvim has installed ,just for example)

```yaml
- repo: t9md/vim-choosewin
  on_map: { n: <Plug> }
  hook_source: source  $VIM_PATH/core/layers/tools/choosewin/config.vim
```

- repo means github repo
- on_map is a dein lazyload feature,that mean the plugin will loading when you trigger `on_map` key,
- hook_source is executed before plugins are sourced

Dein is hard to use for some vim begginers，you can check the `core/dein/plugins.yaml` for use.
more useage about [Dein](https://github.com/Shougo/dein.vim/blob/master/doc/dein.txt).

- if you have vimscript skill and not a vim beginner, want change this config to your own config ,you can edit the `core/dein/plugins.yaml`.

the keymap of plugins you should config it in `custom.vim`,th same as installed plugins,if you want follow master branch use `custom.vim`,if you want change to your own config you can edit the `core/plugins/allkey.vim`.

example:

```viml
if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif
```

- If you want to disable some of the plugins I use, you can overwrite them, e.g.:

```
- { repo: tryu/caw.vim, if: 0 }
```

- Your plugin shortcuts should also be based on this format. used `if dein#tap('pluginname')`
- Notice ‼️ the lazyload feature of dein will not loading the default config of plugins, so you should config the keymap of lazyload plugins

register the `custom` keymap to `whichkey`, there are two settings map.

```viml
let g:which_key_map   for leaderkey
let g:which_key_localmap  for localkey
```

example:

```viml
if dein#tap('defx.nvim')
         nnoremap <silent> <Leader>F
                \ :<C-u>Defx -search=`expand('%:p')` `getcwd()`<CR>
endif
let g:which_key_map.F='test'
```

- if you edit the plugins.yaml ,it doesn't work. you can try to recache the cache. use this function `call dein#recache_runtimepath()`
- you can check  [my .thinkvim.d](https://github.com/taigacute/dotfiles/tree/master/thinkvim) for more usage.

## How to install or change colorscheme

- ThinkVim provide a easy way to change colorscheme, use this keymap `Leader+fc` then thinkvim will write the colorscheme that your choose into cache file,ThinkVim will read this file to load colorscheme when next startup

- Add your favorite coloscheme file into colors folder

## How to use the spaceline

check out the [spaceline config](https://github.com/taigacute/spaceline.vim)

## How to set the Startify

- Custom Header check here [startify doc](https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt#L601)
- Startify can only set the header and footer centered，set this `let g:startify_padding_left = {number}` into your `custom.vim`,change the value until the file area centered on your screen

## How to config completion

- Completion use LanguageServerProtocol by CoC.nvim.
- ThinkVim has provide the python,go,javascript,typescript support.

  - For python thinkvim used Mpls.it will auto install mpls,if you want use the jedi for python completion change the `python.jediEnable` to true which in coc-settings.json
  - For go used the gopls,you need install the gopls

  ```
  go get golang.org/x/tools/gopls@latest
  ```

  - For javascript/typescript used the coc-tsserver.

- Whats is [Language servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- [Supported features](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
- [Register language servers in coc-settings.json](https://github.com/neoclide/coc.nvim/wiki/Language-servers#register-custom-language-servers)
- Checkout the language server protocol list which coc.nvim support,[Coc Wiki](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- the coc has some language support by coc-extensions,just installed that coc-extensions.

  - [Dart](https://github.com/neoclide/coc.nvim/wiki/Language-servers#dart)
  - [C/C++/Objective-C](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c)
  - [Rust](https://github.com/neoclide/coc.nvim/wiki/Language-servers#rust)
  - [Go](https://github.com/neoclide/coc.nvim/wiki/Language-servers#go)
  - [PHP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#php)
  - [Dockerfile](https://github.com/neoclide/coc.nvim/wiki/Language-servers#dockerfile)
  - [Bash](https://github.com/neoclide/coc.nvim/wiki/Language-servers#bash)
  - [Lua](https://github.com/neoclide/coc.nvim/wiki/Language-servers#lua)
  - [OCaml and ReasonML](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ocaml-and-reasonml)
  - [PureScript](https://github.com/neoclide/coc.nvim/wiki/Language-servers#purescript)
  - [Flow](https://github.com/neoclide/coc.nvim/wiki/Language-servers#flow)
  - [Haskell](https://github.com/neoclide/coc.nvim/wiki/Language-servers#haskell)
  - [vim/erb/markdown](https://github.com/neoclide/coc.nvim/wiki/Language-servers#vimerbmarkdown)
  - [Elixir](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elixir)
  - [Python](https://github.com/neoclide/coc.nvim/wiki/Language-servers#python)
  - [Ruby](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ruby)
  - [Scala](https://github.com/neoclide/coc.nvim/wiki/Language-servers#scala)
  - [Latex](https://github.com/neoclide/coc.nvim/wiki/Language-servers#latex)
  - [Elm](https://github.com/neoclide/coc.nvim/wiki/Language-servers#elm)
  - [Fortran](https://github.com/neoclide/coc.nvim/wiki/Language-servers#fortran)
  - [Clojure](https://github.com/neoclide/coc.nvim/wiki/Language-servers#clojure)
  - [Julia](https://github.com/neoclide/coc.nvim/wiki/Language-servers#julia)

[More about Coc](https://github.com/neoclide/coc.nvim)❤️ , thinkvim is centered on coc with coc-extensions,so you should learn more about coc and coc-extensions

### Coc Extensions

Extensions are more powerful than a configured language server. Check out
[Using coc extensions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions).

- **[coc-json](https://github.com/neoclide/coc-json)** for `json`.
- **[coc-tsserver](https://github.com/neoclide/coc-tsserver)** for `javascript`
  and `typescript`.
- **[coc-html](https://github.com/neoclide/coc-html)** for `html`, `handlebars`
  and `razor`.
- **[coc-css](https://github.com/neoclide/coc-css)** for `css`, `scss` and `less`.
- **[coc-vetur](https://github.com/neoclide/coc-vetur)** for `vue`, use [vetur](https://github.com/vuejs/vetur).
- **[coc-phpls](https://github.com/marlonfan/coc-phpls)** for `php`, use [intelephense-docs](https://github.com/bmewburn/intelephense-docs).
- **[coc-java](https://github.com/neoclide/coc-java)** for `java`, use [eclipse.jdt.ls](https://github.com/eclipse/eclipse.jdt.ls).
- **[coc-solargraph](https://github.com/neoclide/coc-solargraph)** for `ruby`,
  use [solargraph](http://solargraph.org/).
- **[coc-rls](https://github.com/neoclide/coc-rls)** for `rust`, use
  [Rust Language Server](https://github.com/rust-lang/rls)
- **[coc-r-lsp](https://github.com/neoclide/coc-r-lsp)** for `r`, use [R languageserver](https://github.com/REditorSupport/languageserver).
- **[coc-yaml](https://github.com/neoclide/coc-yaml)** for `yaml`
- **[coc-python](https://github.com/neoclide/coc-python)** for `python`, extension forked from [vscode-python](https://github.com/Microsoft/vscode-python).
- **[coc-highlight](https://github.com/neoclide/coc-highlight)** provides default
  document symbol highlighting and color support.
- **[coc-emmet](https://github.com/neoclide/coc-emmet)** provides emmet
  suggestions in completion list.
- **[coc-snippets](https://github.com/neoclide/coc-snippets)** provides snippets
  solution.
- **[coc-lists](https://github.com/neoclide/coc-lists)** provides some basic
  lists like fzf.vim.
- **[coc-git](https://github.com/neoclide/coc-git)** provides git integration.
- **[coc-yank](https://github.com/neoclide/coc-yank)** provides yank highlights & history.
- **[coc-fsharp](https://github.com/yatli/coc-fsharp)** for `fsharp`.
- **[coc-svg](https://github.com/iamcco/coc-svg)** for `svg`.
- **[coc-tailwindcss](https://github.com/iamcco/coc-tailwindcss)** for `tailwindcss`.
- **[coc-angular](https://github.com/iamcco/coc-angular)** for `angular`.
- **[coc-vimlsp](https://github.com/iamcco/coc-vimlsp)** for `viml`.
- **[coc-xml](https://github.com/fannheyward/coc-xml)** for `xml`, use [lsp4xml](https://github.com/angelozerr/lsp4xml).
- **[coc-elixir](https://github.com/amiralies/coc-elixir)** for `elixir`, based on [elixir-ls](https://github.com/JakeBecker/elixir-ls/).
- **[coc-tabnine](https://github.com/neoclide/coc-tabnine)** for [tabnine](https://tabnine.com/).
- **[coc-powershell](https://github.com/yatli/coc-powershell)** for PowerShellEditorService integration.
- **[coc-omnisharp](https://github.com/yatli/coc-omnisharp)** for `csharp` and `visualbasic`.

Plus more! To get a full list of coc extensions, [search coc.nvim on npm](https://www.npmjs.com/search?q=keywords%3Acoc.nvim),
or use [coc-marketplace](https://github.com/fannheyward/coc-marketplace), which can search and install extensions in coc.nvim directly.

**Note:** use `:CocConfig` to edit the configuration file. Completion & validation are supported after `coc-json` is installed. ThinkVim has installed some cocextensions you can check it in pluginDetail

## KeyMap

- Default leader `SPACE` localleader`;` ,The vim keymap in `mappings.vim`,Plugins keymap in `core/plugins/allkey.vim`
- Insertkey like emacs
- if you find the keymap doesn't work , Or the keymap doesn't show in this keylist but in `allkey.vim` ,you can create
  a issue. Welcome PR.

<details><summary><code>Operation</code>👈 Click</summary>
<p>

| Keys                                       | Mode    | Description                             |
| ------------------------------------------ | ------- | --------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>w</kbd>             | Insert  | delete the whole word                   |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>             | Insert  | delete `BackSpace`                      |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>             | Insert  | delete a single char                    |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>             | Insert  | delete to the beginning of the line     |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>             | Insert  | move left                               |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>             | Insert  | move right                              |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>             | Insert  | move the head of line                   |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>             | Insert  | move the end of line                    |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>             | Command | move up                                 |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>             | Command | move left                               |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>             | Command | move right                              |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>             | Command | move the head of line                   |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>             | Command | move the end of line                    |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>             | Command | move the cursors char                   |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>             | Command | delete `BackSpace`                      |
| <kbd>Ctrl</kbd> + <kbd>S</kbd>             | Insert  | save                                    |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd>             | Insert  | save and exit                           |
| <kbd>Ctrl</kbd> + <kbd>o</kbd>             | Insert  | create a new line                       |
| <kbd>]</kbd> + <kbd>b</kbd>                | Normal  | pre buffer                              |
| <kbd>[</kbd> + <kbd>b</kbd>                | Normal  | next buffer                             |
| <kbd>Ctrl</kbd> + <kbd>x</kbd>             | Normal  | delete buffer                           |
| <kbd>Y</kbd>                               | Normal  | copy utils the end                      |
| <kbd>j</kbd>                               | Normal  | gj                                      |
| <kbd>k</kbd>                               | Normal  | gk                                      |
| <kbd>j</kbd>                               | Visual  | gj                                      |
| <kbd>k</kbd>                               | Visual  | gj                                      |
| <kbd>-</kbd>                               | Normal  | ChooseWin                               |
| <kbd>,</kbd> + <kbd>Space</kbd>            | Normal  | Delete trailing spaces                  |
| <kbd>[</kbd> + <kbd>a </kbd>               | Normal  | Ale next                                |
| <kbd>]</kbd> + <kbd>a </kbd>               | Normal  | Ale pre                                 |
| <kbd>[</kbd> + <kbd>c </kbd>               | Normal  | coc next                                |
| <kbd>]</kbd> + <kbd>c </kbd>               | Normal  | coc prev                                |
| <kbd>]</kbd> + <kbd>] </kbd>               | Normal  | jump to prev go func                    |
| <kbd>[</kbd> + <kbd>[ </kbd>               | Normal  | jump to next go func                    |
| <kbd>g</kbd> + <kbd>c</kbd>                | Normal  | caw.vim comment                         |
| <kbd>g</kbd> + <kbd>c</kbd> + <kbd>c</kbd> | Normal  | caw.vim uncomment                       |
| <kbd>g</kbd> + <kbd>a</kbd>                | Normal  | EasyAlign                               |
| <kbd>g</kbd> + <kbd>a</kbd>                | Visual  | EasyAlign                               |
| <kbd>s</kbd> + <kbd>a</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>d</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>r</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>d</kbd> + <kbd>b</kbd> | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>r</kbd> + <kbd>b</kbd> | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>v</kbd>                               | Visual  | vim-expand-region                       |
| <kbd>V</kbd>                               | Visual  | vim-expand-region                       |
| <kbd>z</kbd> + <kbd>l</kbd>                | Normal  | Denite Outline for golang               |
| <kbd>z</kbd> + <kbd>T</kbd>                | Normal  | Denite Goroot for golang                |

</p>
</details>

<details><summary><code>Window</code>👈 Click</summary>
<p>

| Keys                                          | Mode   | Description                       |
| --------------------------------------------- | ------ | --------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>                | Normal | move to left window               |
| <kbd>Ctrl</kbd> + <kbd>l</kbd>                | Normal | move to right window              |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                | Normal | move to down window               |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>                | Normal | move to up window                 |
| <kbd>Ctrl</kbd> + <kbd>w</kbd> + <kbd>[</kbd> | Normal | the width of window reduce 3      |
| <kbd>Ctrl</kbd> + <kbd>w</kbd> + <kbd>]</kbd> | Normal | the width of window increase 3    |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>                | Normal | Window scrolling down             |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>                | Normal | Window scrolling up               |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>                | Normal | Window scrolls down half a screen |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>                | Normal | Window scrolls up half a screen   |

</p>
</details>

<details><summary><code>Tab</code>👈 Click</summary>
<p>

| Keys                                            | Mode   | Description |
| ----------------------------------------------- | ------ | ----------- |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>n</kbd> | Normal | create tab  |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>e</kbd> | Normal | edit tab    |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>m</kbd> | Normal | move tab    |

</p>
</details>

<details><summary><code>LeaderKey</code>👈 Click</summary>
<p>

| Keys                                                           | Mode   | Description                           |
| -------------------------------------------------------------- | ------ | ------------------------------------- |
| <kbd>Leader</kbd> + <kbd>number</kbd>                          | Normal | number[0-9] choose buffer             |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>a</kbd>                | Normal | CocDiagnostics                        |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>c</kbd>                | Normal | CocCommands                           |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>e</kbd>                | Normal | CocExtensions                         |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>j</kbd>                | Normal | Cocnext                               |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>k</kbd>                | Normal | CocPrev                               |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>o</kbd>                | Normal | CocOutline                            |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>r</kbd>                | Normal | CocResume                             |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>s</kbd>                | Normal | CocIsymbols                           |
| <kbd>Leader</kbd> + <kbd>G</kbd>                               | Normal | open Goyo                             |
| <kbd>Leader</kbd> + <kbd>m</kbd>                               | Normal | open mundo                            |
| <kbd>Leader</kbd> + <kbd>w</kbd>                               | Normal | save file                             |
| <kbd>Leader</kbd> + <kbd>-</kbd>                               | Normal | ChooseWin                             |
| <kbd>Leader</kbd> + <kbd>s</kbd>                               | Normal | open Startify                         |
| <kbd>Leader</kbd> + <kbd>d</kbd>                               | Normal | open Dash                             |
| <kbd>Leader</kbd> + <kbd>p</kbd>                               | Normal | Edit the file which in plugins folder |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>f</kbd>                | Normal | coc Format                            |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>c</kbd>                | Normal | fzf chage vim colorscheme             |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>f</kbd>                | Normal | fzf find files                        |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>r</kbd>                | Normal | fzf rg search                         |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>v</kbd>                | Normal | fzf Vista Finder                      |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>b</kbd>                | Normal | fzf find buffer                       |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>w</kbd>                | Normal | fzf rg search the cursor word         |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>g</kbd> + <kbd>c</kbd> | Normal | fzf gitcommits                        |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>b</kbd> + <kbd>c</kbd> | Normal | fzf gitbcommits                       |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>w</kbd>           | Normal | Easymotion jump to donw               |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>b</kbd>           | Normal | Easymotion jump to up                 |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>f</kbd>           | Normal | Easymotion search for jump            |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>d</kbd>                | Normal | Gdiff                                 |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>c</kbd>                | Normal | Gcommit                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>b</kbd>                | Normal | Gblame                                |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>B</kbd>                | Normal | GBrowse                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>S</kbd>                | Normal | GStatus                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>p</kbd>                | Normal | Git push                              |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>l</kbd>                | Normal | Denite show all git log               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>h</kbd>                | Normal | Denite show git branch                |

</p>
</details>

<details><summary><code>LocalLeaderKey</code>👈 Click</summary>
<p>

| Keys                                              | Mode   | Description        |
| ------------------------------------------------- | ------ | ------------------ |
| <kbd>LocalLeader</kbd> + <kbd>t</kbd>             | Normal | Open Tagbar        |
| <kbd>LocalLeader</kbd> + <kbd>r</kbd>             | Normal | QuickRun           |
| <kbd>LocalLeader</kbd> + <kbd>v</kbd>             | Normal | Open Vista         |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>i</kbd> | Normal | vim-go GoImpl      |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>d</kbd> | Normal | vim-go GoDescribe  |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>c</kbd> | Normal | vim-go GoCallees   |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>C</kbd> | Normal | vim-go GoCallers   |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>s</kbd> | Normal | vim-go GoCallstack |

</p>
</details>

<details><summary><code>Denite</code>👈 Click</summary>
<p>

| Keys                                  | Mode                 | Description        |
| ------------------------------------- | -------------------- | ------------------ |
| <kbd>LocalLeader</kbd> + <kbd>m</kbd> | Normal               | Denite Menu        |
| `<CR>`                                | Denite               | Doaction           |
| <kbd>i</kbd>                          | Denite               | Open filter buffer |
| <kbd>d</kbd>                          | Denite               | Delete             |
| <kbd>p</kbd>                          | Denite               | Preview            |
| <kbd>s</kbd> + <kbd>t</kbd>           | Denite               | tabopen            |
| <kbd>s</kbd> + <kbd>v</kbd>           | Denite               | Vsplit             |
| <kbd>s</kbd> + <kbd>i</kbd>           | Denite               | Split              |
| <kbd>'</kbd>                          | Denite               | QuickMove          |
| <kbd>q</kbd>                          | Denite               | Quit               |
| <kbd>r</kbd>                          | Denite               | RedRaw             |
| <kbd>y</kbd> + <kbd>y</kbd>           | Denite               | Yank               |
| <kbd>Esc</kbd>                        | Denite               | Quit               |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>        | Denite               | Restore Source     |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>        | Denite               | call Defx          |
| <kbd>Ctrl</kbd> + <kbd>x</kbd>        | Denite               | Choose Action      |
| <kbd>Space</kbd>                      | Denite               | Toggle Select      |
| <kbd>Esc</kbd>                        | Denite Filter        | Quit               |
| <kbd>q</kbd>                          | Denite Filter        | Quit               |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>        | Denite Filter        | Quit filter        |
| <kbd>k</kbd> + <kbd>k</kbd>           | Denite Filter insert | move window        |
| <kbd>k</kbd> + <kbd>k</kbd>           | Denite Filter normal | move window        |
| <kbd>j</kbd> + <kbd>j</kbd>           | Denite Filter insert | move window        |
| <kbd>j</kbd> + <kbd>j</kbd>           | Denite Filter normal | move window        |

</p>
</details>

<details><summary><code>Fzf</code>👈 Click</summary>
<p>

| Keys           | Mode   | Description |
| -------------- | ------ | ----------- |
| <kbd>C-X</kbd> | Normal | tab split   |
| <kbd>C-v</kbd> | Normal | split       |
| <kbd>C-t</kbd> | Normal | vsplit      |
| <kbd>C-d</kbd> | Normal | pagedown    |
| <kbd>C-u</kbd> | Normal | pageup      |

</p>
</details>

<details><summary><code>Defx</code>👈 Click</summary>
<p>

| Keys                             | Mode   | Description                                                                                |
| -------------------------------- | ------ | ------------------------------------------------------------------------------------------ |
| <kbd>Leader</kbd> + <kbd>e</kbd> | Normal | open defx                                                                                  |
| <kbd>N</kbd>                     | Defx   | touch new file                                                                             |
| <kbd>K</kbd>                     | Defx   | touch new folder                                                                           |
| `<CR>`                           | Defx   | open file or folder                                                                        |
| `l`                              | Defx   | open file or folder                                                                        |
| <kbd>d</kbd> + <kbd>d</kbd>      | Defx   | delete ([Send2Trash](https://github.com/neoclide/coc.nvim/wiki/Language-servers) required) |
| <kbd>r</kbd>                     | Defx   | rename                                                                                     |
| <kbd>.</kbd>                     | Defx   | show ignore files                                                                          |
| <kbd>h</kbd>                     | Defx   | Return to the parent directory                                                             |
| <kbd>q</kbd>                     | Defx   | exit defx                                                                                  |
| <kbd>s</kbd>                     | Defx   | Open in rightwindow vs                                                                     |
| <kbd>i</kbd>                     | Defx   | Open file sp                                                                               |
| <kbd>y</kbd> + <kbd>y</kbd>      | Defx   | copy the path of file                                                                      |
| <kbd>\</kbd>                     | Defx   | show the path of file                                                                      |
| <kbd>c</kbd>                     | Defx   | copy                                                                                       |
| <kbd>m</kbd>                     | Defx   | move                                                                                       |
| <kbd>p</kbd>                     | Defx   | paste                                                                                      |
| <kbd>Space</kbd>                 | Defx   | multi                                                                                      |
| <kbd>g</kbd> + <kbd>f</kbd>      | Defx   | open in denite                                                                             |
| <kbd>g</kbd> + <kbd>r</kbd>      | Defx   | search in denite                                                                           |
| <kbd>w</kbd>                     | Defx   | increase the width                                                                         |

</p>
</details>

<details><summary><code>CoC</code>👈 Click</summary>
<p>

| Keys                               | Mode          | Description               |
| ---------------------------------- | ------------- | ------------------------- |
| <kbd>Tab</kbd>                     | Select        | Jump                      |
| <kbd>Tab</kbd>                     | Insert        | completion donw           |
| <kbd>Shit</kbd> + <kbd>Tab</kbd>   | Insert        | completion up             |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>     | Insert        | completion down           |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>     | Insert        | completion up             |
| <kbd>Ctrl</kbd> + <kbd>Space</kbd> | Normal        | Forced trigger completion |
| `<CR>`                             | Insert/Select | Confirm                   |
| <kbd>K</kbd>                       | Normal        | Show the function doc     |
| <kbd>g</kbd> + <kbd>d</kbd>        | Normal        | jump to defined           |
| <kbd>g</kbd> + <kbd>y</kbd>        | Normal        | coc-type-definition       |
| <kbd>g</kbd> + <kbd>i</kbd>        | Normal        | coc-implementation        |
| <kbd>g</kbd> + <kbd>r</kbd>        | Normal        | coc-references            |
| <kbd>[</kbd> + <kbd>g</kbd>        | Normal        | coc-git-prechunk          |
| <kbd>]</kbd> + <kbd>g</kbd>        | Normal        | coc-git-nextchunk         |

</p>
</details>
