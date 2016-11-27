"vim cofiguration

" 基本设置
set nu		" 显示行号
set hls		" 打开高亮	
"set nohls	" 关闭高亮

set autoindent	" 自动缩进

set tabstop=4	" tap键宽度

set ruler	" 显示标尺
set showcmd	" 输入的命令显示出来，看得清楚


autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效


let mapleader=";"			" 定义快捷键的前缀，即<Leader>

" vim自身（非插件）快捷键
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
"nmap <Leader>Q :qa!<CR>


filetype on			" 开启文件类型检测
filetype plugin on 	" 根据侦测到的不同类型加载对应的插件




