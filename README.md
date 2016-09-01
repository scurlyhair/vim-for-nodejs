#Note-for-node-js
（菜鸟学习笔记，持续更新......）

## Vim
###1.升级mac自带vim
`brew install vim`
###2.安装必要的插件
#### 2.1 插件管理 [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
The plug-in manager for Vim.

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
创建并编辑`.vimrc`

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
#####2.2.4 [vim-javascript](https://github.com/pangloss/vim-javascript)
Vastly improved Javascript indentation and syntax support in Vim.
#####2.2.4 [NERDTree](https://github.com/scrooloose/nerdtree)
A tree explorer plugin for vim.可以查看当前工作目录和子目录的tree结构。

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

```
---
 
插件配置

```
" ........ NERDTree Config........
" 使用F2快速调用和隐藏
map <F2> :NERDTreeToggle<CR> 

```

### 4.常用命令
基本操作

```

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
