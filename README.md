## NeoVim-Config 
我平时主要是写`go`，`react`，`vue`，所以这个配置完全适合这些语言，当然对前端开发也有很好的支持，`JS`,`JSX`,`HTML`,`CSS`等。如果你是New Vimer想快速上手vim，我更推荐你去试试`spacevim`、`vim-plus`等长期维护且配置完善的vim框架，或者[PegasusWang](https://github.com/PegasusWang/vim-config)的这个配置，他在知乎vim的专栏经常会发布一些关于vim的视频，推荐你去看看。如果你想彻底的了解vim从零构建一个属于你自己的编辑器，那么你可以试试我的这套配置，并没有太多的改键，只是稍微映射了一些快捷键提高编码的效率。以下的安装方法比较适合mac，或者linux。

## Install
### Step1
安装neovim，这个就很简单了，如果你是mac，那么直接`brew install neovim`就好了，如果你没有`brew`这个包管理软件，那么你需要先安装`brew`。linux也是差不多的方式，只不过需要替换linux的包管理工具。
### Step2
安装插件管理工具，我这里是使用的[vim-plug](https://github.com/junegunn/vim-plug)，这个插件管理工具安装速度快，并且还可以设置哪种文件去加载这个插件，提升启动速度，只需要一条命令就可以安装这个工具。
```
$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### Step3
首先你需要了解neovim和vim的不同，在配置文件上虽然neovim也可以使用vim的配置文件vimrc，但是它是有自己的配置文件就是init.vim，放置在~/.config/nvim文件夹下，所以你可以直接将我的config文件里的内容拷贝到你的.config文件夹。如果你想安装最新的插件，你可以将我的`init.vim`文件拷贝过去，注意！！！在我的`init.vim`中`call plug#begin('~/.local/share/nvim/plugged')`我设置了插件的path，如果你想更换path只需要将括号内的path修改成你自己的就可以了。然后在终端中输入`nvim`打开nvim，在`normal`模式输入`:PlugInstall`安装插件即可。这里必须是全局科学上网安装插件。
### Step4
`vim-go` 会安装一些`go tools` 如果你安装失败，可以将我的`go tools`的文件下的二进制文件拷贝到你的`gopath`的`bin`目录下，前提是你的 `go version`在1.10.4，如果你是其他版本的go，择需要重新构建`go tools`，安装`go tools`的过程由于一些插件在墙外，所以是必须全局科学上网。
### Step5
`Javascript`的补全是基于`ternjs`和`node`环境，如果你没有node环境，`brew install node`，安装`cnpm`淘宝镜像可以解决很多包不能顺利下载的情况
`$ npm install -g cnpm --registry=https://registry.npm.taobao.org`即可。当然挂了科学的话就不需要通过`cnpm`了。
```
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern'}
Plug 'ternjs/tern_for_vim', { 'do': 'npm install'}
```
在所有插件安装完成后它会执行后面的`do`命令 安装`tern`。这里很容易采坑，正确的方法，在你顺利正常的安装了所有插件且执行了所有`do`命令后，如果`遇到npm`install失败，你可以将`npm`替换成`cnpm` ，成功安装后在`~`目录下创建`.tern-project`文件，它是一个json格式的文件负责和tern服务器进行通信，所以这个文件很重要，没有正确的`.tern-project`文件是没有办法收集到元模型数据完成js补全的，同样你可以在你的项目根目录创建这个文件，也是可以生效的。不过这样的设置是全局设置。你可以参考我的`tern-project`文件，如果你有其他的需求可以到[tern](http://ternjs.net/)阅读相关文档。
```
 {
   "libs": [
     "browser",
     "jquery",
     "react"
   ],
   "plugins": {
       "doc_comment": null,
       "angular": {},
       "node": {}
   }
 }
```
### Step6
`JavaScript`的语法检查，在上述插件全部正常安装后，你可以通过`npm`或者`yarn`（比npm更快，更高效包管理工具），`yarn`的安装`brew install yarn`，然后安装`JavaScript`的语法检查工具以及`CSS,LESS`的检查工具，通过`yarn add --dev eslint babel-eslint eslint-plugin-react stylelint`，然后执行`eslint --init`,生成`eslintrc`的配置文件，它会需要你确认一些信息。如下
```
? Are you using ECMAScript 6 features? Yes
? Are you using ES6 modules? Yes
? Where will your code run? Browser,Node
? Do you use CommonJS? No
? Do you use JSX? Yes
? Do you use React Yes
? What style of indentation do you use? Spaces
? What quotes do you use for strings? Single
? What line endings do you use? Unix
? Do you require semicolons? No
? What format do you want your config file to be in? JS
```
生成的`eslintrc.js`文件,其实这里我不是很懂只是参考了一些网上的教程来的，如果你有更好的设置请告诉我。
```
module.exports = {
    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true,
        "node": true
    },
    "extends": "eslint:recommended",
    "parserOptions": {
        "ecmaFeatures": {
            "jsx": true
        },
        "ecmaVersion": 2018,
        "sourceType": "module"
    },
    "plugins": [
        "react"
    ],
    "rules": {
        "indent": [
            "error",
            4
        ],
        "linebreak-style": [
            "error",
            "unix"
        ],
        "quotes": [
            "error",
            "single"
        ],
        "semi": [
            "error",
            "never"
        ]
    }
};
```
### Step7
`JavaScript`的代码格式化。通过`yarn global add prettier` 配合`neoformat`插件就很好的使用了，我的设置是在`:w`保存的时候自动保存，当然你也可以映射快捷键来格式你的代码，在我的init.vim中 你可以在` React js补全设置`那里找到修改`autocmd BufWritePre *.js,*.jsx,*.less,*.css Neoformat`
### Step
`JavaScript`的代码格式化。通过`yarn global add prettier` 配合`neoformat`插件就很好的使用了，我的设置是在`:w`保存的时候自动保存，当然你也可以映射快捷键来格式你的代码，在我的init.vim中 你可以在` React js补全设置`那里找到修改`autocmd BufWritePre *.js,*.jsx,*.less,*.css Neoformat`
### Step8
经过上面的步骤，如果你已经都是正常的安装了，那么恭喜你可以愉快的编写go和js了，你还要修改的地方就是`Nerdtree`的设置，我在这里`map <leader>f :NERDTreeToggle /Users/marblues/workspace/src<CR>`每次打开NERDtree的目录设置为了我的工作文件夹，你可以修改成你自己的
### Step9
在我的`config/nvim/autoload`文件夹下有个`utils`文件，你需要将这个文件拷贝到你的`autoload`文件夹下，这个文件是一个`airline`的`tabline`的一个函数文件，有了这个文件你可以通过`\+数字`在`buffer`上选择你打开的文件进行跳转。
### 其他的说明
   1.补充  主题`onedark`。这个文件是我修改过的，Pmenu的一些配色。如果你想用和我同样的主题，可以将我的`onedark`主题拷贝到你的插件安装目录下。
我会慢慢补充一些插件的用法和说明以及我的设置。写的手累
## 截图
![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/sceenshot.png)
![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/sceenshot.gif)

