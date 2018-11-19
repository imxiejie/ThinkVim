# Neovim for go

适合写go vue js，配合tmux使用更佳！config文件夹为.config，init.vim为配置文件，
关于写go引用包补全出现问题请替换我的gotools放在你的gopath/bin目录下，
并且设置`gocode autobuild set true`，请确保你的`go version`为1.10.4，  
其他go版本并没有测试，最新的gocode好像是解决了这个问题，我提过issues得到的回复，但是我并没有测试，如果你是其他的go版本可以重新构建gocode，

## 更新
修改了一些补全的按键，补全的时候可以通过tab向下筛选，回车<CR>确定你的选择，解决了回车换行重新做了<CR>的映射，减少了ctrl+ n，p，y的方式，同时手也不会来开主键区  
更改了onedark主题 pmenu颜色  
修改插入模式的光标移动，尽可能的使手不离开主键区，上下左右的键位如果是macbookpro它太小了且位置很不友好，如果是全键盘你的手也需要移动。显然这是不友好的。修改为Ctrl+ H J K L完成插入模式的光标移动（之前的Shift 会引发大小写问题）

## 截图

![images](https://github.com/Marlboro-go/Neovim-for-go/blob/master/screenshot/sceenshot.gif)

