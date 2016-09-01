#Note-for-node-js
（菜鸟学习笔记，持续更新......）

## Vim
###1.升级mac自带vim
`brew install vim`
重启Terminal之后，vim会更新。
###2.安装必要的插件
#### 2.1 插件管理 [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
The plug-in manager for Vim.

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
创建并编辑`.vimrc`,如下:

```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"............................................................
"my Bundle here:
"
">>>>>>>>>>>>>>>>>>>>>>>>
"original repos on github
"
"Bundle 'kien/ctrlp.vim'
">>>>>>>>>>>>>>>>>>>>>>>>
"vimscripts repos
"
"Bundle 'YankRing.vim'
">>>>>>>>>>>>>>>>>>>>>>>>
"non gihut repos
"
"Bundle 'git://git.wincent.com/command-t.git'

"............................................................
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line                                                                      
```
打开vim，运行`:BundleInstall`

另：其他常用命令

- 更新插件`:BundleUpdate`
- 清除不再使用的插件`:BundleClean`
- 列出所有插件`:BundleList`
- 查找插件`:BundleSearch`

#### 2.2 其他插件
参考：[GitHub上的Vim Plugins](https://github.com/nodejs/node/wiki/Vim-Plugins)

**---General---**
#####2.2.1 [vim-node](https://github.com/moll/vim-node)
Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node.

**---Linter---**
#####2.2.2 [Tabular](https://github.com/godlygeek/tabular)
Vim script for text filtering and alignment.
#####2.2.3 [jshint](https://github.com/jshint/jshint)
JSHint is a tool that helps to detect errors and potential problems in your JavaScript code.

**---Syntax---**
#####2.2.4 [syntastic](https://github.com/scrooloose/syntastic)
Syntax checking hacks for vim
#####2.2.5 [vim-javascript](https://github.com/pangloss/vim-javascript)
Vastly improved Javascript indentation and syntax support in Vim.
#####2.2.6 [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
A code-completion engine for Vim.自动补全

**---Colorschemes---**
#####2.2.6 [altercation](https://github.com/altercation/vim-colors-solarized)
precision colorscheme for the vim text editor
#####2.2.7 [dracula](https://draculatheme.com/vim/)
wonderful theme for everything.
#####2.2.8 [vim-airline](https://github.com/vim-airline/vim-airline)
lean & mean status/tabline for vim that's light as air.加强版状态条。


**---Browsin---**

#####2.2.8 [NERDTree](https://github.com/scrooloose/nerdtree)
A tree explorer plugin for vim.可以查看当前工作目录和子目录的tree结构。
#####2.2.9 [ctrlp](https://github.com/kien/ctrlp.vim)
Fuzzy file, buffer, mru, tag, etc finder.文件搜索利器。

使用`:NERDTree`命令激活NERDTree。 最好是设定快捷键。



### 3. 配置
革命尚未成功，同志仍需努力。DIY一个属于自己的风格的vim.

vim的配置主要是基于`~/.vimrc`文件。所以了解vimrc文件的配置信息是必要的，至少知道每个命令是干什么用的。

这里有一篇好文推荐看看，总结的非常棒！[Vim配置详解](http://www.cnblogs.com/witcxc/archive/2011/12/28/2304704.html)

vim插件配置好之后。在`.vimrc`文件的最下面开始进行我们的自定义配置。(当然你也可以直接进行自定义配置)

一般配置

```
" 语法高亮
syntax enable
syntax on

"行号                                                                               
set number                                                                          
"set nonumber 

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

```
---
 
插件配置

```
" ........ NERDTree Config........
" 使用F2快速调用和隐藏
map <F2> :NERDTreeToggle<CR> 

```

其他配置参见[我的.vimrc](.vimrc)

### 4.常用命令
基本操作

```
光标移动指令

1. h 左

2. l 右

3. k 上

4. j 下

5. Ctrl+f 向前翻页

6.Ctrl+b 向后翻页
7. 0  行首

8. 移至行首第一个非空白字

9. $ 行尾

10.G 文档尾部

11.gg 文档首部
12.w 移至一个word的首部

13.e 移至一个word的字尾

15.b 移至前一个自首

16.L 光标移动至屏幕中间的第一个非空字元

17.：n 移至第n行行首
18.) 移至下一个句子首部

19.( 移至上一个句子首部

20.} 移至下一个段落首部

21.} 移至上一个段落首部

 

进入插入命令
1. i 在光标的字之前

2. a 在光标的字之后

3. o 光标的下一行

4. I 在光标的行首

5. A 在光标的行尾

6. O 在光标的上一行

7. J 将下一行整行接至本行

 

 删除指令
1. x 删除光标所在的字元

2. X 删除光标之前的字元

3. dd 删除整行

4. dw 删除一个word

5. dG 删除至文档尾

6. dgg 删除至档首

7. D 删除至行尾

8.d0 删除至行首

 

 取代及还原
1. r 取代光标所在的字元

2. R 进入取代模式

3. cc 取代整行

4. cw 取代一个word

5. ~ 光标所在的字元大小写互换

6. C 取代至行尾

7. c0 取代至行首 

8. s 替换一个字元为字符串

9. u undo

10. ctrl+r redo


文字排布

1.:ce(nter) 文字居中

2,:right  文字靠右

3.le（ft）文字靠左


复制指令（yank）
1. yy 复制整行

2. 2yy 复制

2行3. y^ 复制至行首

4. y$ 复制至行尾

5. yw 复制一个word

6. y2w 复制2个word

7. yG 复制至档尾

8. y1G 复制至档首
9. p 粘贴至游标后

10.P 粘贴至光标前


搜寻

1. / +要找的单词+enter,n向下，N向上


替换

[range]s/pattern/string/[c,e,g,i]

　　range 表示的是范围，1，7第一行到第七行，$整篇文章 %目前编辑的，#前一次编辑的pattern 要被替换的字串string 取代之的字串c 每次替换前询问e 不提示errorg 不询问，整行替换i 不区分大小写

 

书签功能 

  在文章某处marks ，然后跑到其他地方去了，这是呼叫mark 又回到了原处1. mx x为26个小写字母，表示光标这被mark了2.`x 回到x标志的位置3. 'x 回到x标志的行首

 


多档案编辑
1. :n 编辑下一个档案

2. :2n 编辑下二个档案

3. :N 编辑前一个档案

4. :e 档案名，tab自动补全

5. :bn 编辑次一个

6. :bp 编辑前一个

7. :bl 编辑最后一个

 

离开

1. :q 

2. :q! 强制离开

3. :wq 存档离开

4. :x 存档离开

5. :w 名字 另存为

6. :qa 离开整个vim a= all

 

视窗操作

 1. ctrl+w n（new） 开一个新窗口 w=window

2. ctrl+w s (spli) 开一个新窗口，原档案分离为两个

3. ctrl+w f 开一个新窗口，并编辑光标所在的word为新档案名字

4. ctlr+w q 结束分离出来的窗口

5. ctrl+w o(only)使光标所在的窗口显示其他窗口隐藏

6. ctrl+w j 移至下窗口

7. ctrl+w k 移至上窗口

8. :sp 另外开一个窗口来编辑档案
```

NERDTree 操作:

```
ctrl + w + h    光标 focus 左侧树形目录
ctrl + w + l    光标 focus 右侧文件显示窗口
ctrl + w + w    光标自动在左右侧窗口切换 #！！！
ctrl + w + r    移动当前窗口的布局位置

o       在已有窗口中打开文件、目录或书签，并跳到该窗口
go      在已有窗口 中打开文件、目录或书签，但不跳到该窗口
t       在新 Tab 中打开选中文件/书签，并跳到新 Tab
T       在新 Tab 中打开选中文件/书签，但不跳到新 Tab
i       split 一个新窗口打开选中文件，并跳到该窗口
gi      split 一个新窗口打开选中文件，但不跳到该窗口
s       vsplit 一个新窗口打开选中文件，并跳到该窗口
gs      vsplit 一个新 窗口打开选中文件，但不跳到该窗口
!       执行当前文件
O       递归打开选中 结点下的所有目录
x       合拢选中结点的父目录
X       递归 合拢选中结点下的所有目录
e       Edit the current dif

双击    相当于 NERDTree-o
中键    对文件相当于 NERDTree-i，对目录相当于 NERDTree-e

D       删除当前书签

P       跳到根结点
p       跳到父结点
K       跳到当前目录下同级的第一个结点
J       跳到当前目录下同级的最后一个结点
k       跳到当前目录下同级的前一个结点
j       跳到当前目录下同级的后一个结点

C       将选中目录或选中文件的父目录设为根结点
u       将当前根结点的父目录设为根目录，并变成合拢原根结点
U       将当前根结点的父目录设为根目录，但保持展开原根结点
r       递归刷新选中目录
R       递归刷新根结点
m       显示文件系统菜单 #！！！然后根据提示进行文件的操作如新建，重命名等
cd      将 CWD 设为选中目录

I       切换是否显示隐藏文件
f       切换是否使用文件过滤器
F       切换是否显示文件
B       切换是否显示书签

q       关闭 NerdTree 窗口
?       切换是否显示 Quick Help

:tabnew [++opt选项] ［＋cmd］ 文件      建立对指定文件新的tab
:tabc   关闭当前的 tab
:tabo   关闭所有其他的 tab
:tabs   查看所有打开的 tab
:tabp   前一个 tab
:tabn   后一个 tab

标准模式下：
gT      前一个 tab
gt      后一个 tab
```

## Atom
### 插件
安装方法：

- 命令行`apm install ***`
- atom prefrence -> Settings -> Install

插件：

- atom-ternjs: 自动补全
- script: 一键运行

### 步骤
1.安装node

2.新建项目

```
$ mkdir myapp//新建文件夹
$ cd myapp//进入文件夹
$ npm init//工程初始化
$ npm install --save PACKAGE_NAME
```

## 库总结
- [npm](https://github.com/npm/npm): A package manager for javascript.
- [express](https://github.com/expressjs/express): Fast, unopinionated, minimalist web framework for node.
- [utility](https://github.com/node-modules/utility): A collection of useful utilities.
- [superagent](https://github.com/visionmedia/superagent): A small progressive client-side HTTP request library, and Node.js module with the same API, sporting many high-level HTTP client features.
- [cheerio](https://github.com/cheeriojs/cheerio):Fast, flexible, and lean implementation of core jQuery designed specifically for the server. 


## 报错总结
#### 1.`Error: listen EADDRINUSE`错误：
`listen()`方法尝试绑定已经被使用的服务器端口。

**解决方案**：终端输入`lsof -i tcp:8888`(8888为端口号)获取在该端口运行的进程id（PID）。输出:

```
COMMAND  PID     USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
node    3742 wuyunhui   12u  IPv6 0xe120a4e962ac90b5      0t0  TCP *:hbci (LISTEN)
```
然后杀死该进程：
`kill -9 3742`

根据stackoverflow上面的答案最好是在`kill -9`之前先 `kill -15`，原因：

Generally, you should use kill -15 before kill -9 to give the target process a chance to clean up after itself. (Processes can't catch or ignore SIGKILL, but they can and often do catch SIGTERM.) If you don't give the process a chance to finish what it's doing and clean up, it may leave corrupted files (or other state) around that it won't be able to understand once restarted.
[Nobita的回答](http://stackoverflow.com/questions/9898372/nodejs-error-listen-eaddrinuse)
