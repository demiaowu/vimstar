"""""""""""""""""
"vim cofiguration


""""""""""
" 基本设置
set encoding=utf-8  " 设置编码
set nu		        " 显示行号
set hls		        " 打开高亮	
"set nohls	        " 关闭高亮
set nocompatible    " 关闭兼容模式

""""""""""
" 代码缩进
filetype indent on		" 自适应不同语言的智能缩进
set expandtab			" 将制表符扩展为空格
set autoindent			" 自动缩进
"set cindent            " 两个tab键缩进
set tabstop=4			" tap键宽度
set shiftwidth=4		" 设置格式化时制表符占用的空格数
set softtabstop=4		" 让vim把连续数量的空格视为一个制表符

set foldmethod=syntax   " 基于语法的折叠
set nofoldenable        " 启动vim时关闭折叠代码

set ruler	" 显示标尺
set showcmd	" 输入的命令显示出来，看得清楚
set cursorline		" 高亮显示当前行号
set cursorcolumn 	" 高亮显示当前列

"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效


syntax enable		" 开启语法高亮功能
syntax on			" 允许用制定语法高亮配色方案替换默认方案


"""""""""""""""""""""""""
" vim自身（非插件）快捷键
let mapleader=";"			" 定义快捷键的前缀，即<Leader>

vnoremap <Leader>c			" 设置快捷键将选中的文本块复制到系统剪切板——模仿windows
nmap <Leader>v				" 设置快捷键将系统中的剪贴板粘贴至vim——模仿windows

nmap <Leader>q :q<CR>		" 定义快捷键关闭当前窗口
nmap <Leader>s :w<CR>		" 定义快捷键保存当前窗口——模仿windows
nmap <Leader>w :wa<CR>:q<CR>" 定义快捷键保存所有窗口内容并退出
nmap <Leader>fq :qa!<CR>   	" 不做任何保存，直接退出vim fq = froce quit


"filetype on			" 开启文件类型检测
"filetype plugin on 	" 根据侦测到的不同类型加载对应的插件
"



" 安装插件管理Vundle.vim
"set nocompatible       " 上面已经开启
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 颜色主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'    

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required






" 设置主题颜色为 solarized
let g:solarized_termcolors=256
set t_Co=256                " 开启中端的256色支持
set background=dark
colorscheme solarized 
"colorscheme molokai        " 多彩
"colorscheme phd            " 复古

set guifont=YaHei\ Consolas\ Hybrid\ 12     " 设置字体


""""""""""""""""""""""""""""""""
" 设置插件cpp-enhanced-highlight
set laststatus=2                            "  总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
let g:Powerline_colorscheme='solarized256'  " 设置状态栏主题风格

""""""""""""""""""""""""""""""""""""""""""""
" 设置indent-guides 快捷键 i 开/关缩进可视化 
let g:indent_guides_enable_on_vim_startup=1         " 随vim自启动  
let g:indent_guides_start_level=2                   " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size=1                  " 色块宽度
nmap <silent> <Leader>i <Plug>IndentGuidesToggle    " 快捷键 i 开/关缩进可视化 
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey




