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
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'dracula/vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ternjs/tern_for_vim'
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
"
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 侦测文件类型 
filetype on 
"
" 载入文件类型插件 
filetype plugin on 
"
" 为特定文件类型载入相关缩进文件 
filetype indent on 
"
" " 保存全局变量 
" set viminfo+=! 
"
" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 
"
" 语法高亮
" syntax enable
syntax on
"
"行号
set number
"set nonumber
"
" 在处理未保存或只读文件的时候，弹出确认 
set confirm 
"
" 不要使用vi的键盘模式，而是vim自己的 
" set nocompatible
"
"
"
" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 
"
" ........ NERDTree ........
" 使用F2快速调用和隐藏
map <F2> :NERDTreeToggle<CR> 
" 启动时vim自动运行NERDtTree
autocmd vimenter * NERDTree
"
" ...... syntastic ......
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
" ...... dracula ......
color dracula
"
" ...... ctrlp ......
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"
"