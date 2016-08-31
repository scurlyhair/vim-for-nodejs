#Note-for-node-js

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
- [nerdtree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim.


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
