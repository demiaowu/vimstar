"""""""""""""""""
"vim cofiguration


""""""""""
" 基本设置
set nu		" 显示行号
set hls		" 打开高亮	
"set nohls	" 关闭高亮

filetype indent on		" 自适应不同语言的智能缩进
set expandtab			" 将制表符扩展为空格
set autoindent			" 自动缩进
set tabstop=4			" tap键宽度
set shiftwidth=4		" 设置格式化时制表符占用的空格数
"set softtabstop=4		" 让vim把连续数量的空格视为一个制表符

set foldmethod=syntax   " 基于语法的折叠
set nofoldenable        " 启动vim时关闭折叠代码

set ruler	" 显示标尺
set showcmd	" 输入的命令显示出来，看得清楚
set cursorline		" 高亮显示当前行号
"set cursorcolumn 	" 高亮显示当前列

"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效





syntax enable		" 开启语法高亮功能
syntax on			" 允许用制定语法高亮配色方案替换默认方案



"""""""""""""""""""""""""
" vim自身（非插件）快捷键
let mapleader=";"			" 定义快捷键的前缀，即<Leader>

vnoremap <Leader>c			" 设置快捷键将选中的文本块复制到系统剪切板
nmap <Leader>v				" 设置快捷键将系统中的剪贴板粘贴至vim

nmap <Leader>q :q<CR>		" 定义快捷键关闭当前窗口
nmap <Leader>w :w<CR>		" 定义快捷键保存当前窗口
nmap <Leader>W :wa<CR>:q<CR>" 定义快捷键保存所有窗口内容并退出
nmap <Leader>fq :qa!<CR>   	" 不做任何保存，直接退出vim fq = froce quit


filetype on			" 开启文件类型检测
filetype plugin on 	" 根据侦测到的不同类型加载对应的插件





