"███████╗ █████╗ ███╗   ███╗██╗   ██╗███████╗██╗      
"██╔════╝██╔══██╗████╗ ████║██║   ██║██╔════╝██║      
"███████╗███████║██╔████╔██║██║   ██║█████╗  ██║      
"╚════██║██╔══██║██║╚██╔╝██║██║   ██║██╔══╝  ██║      
"███████║██║  ██║██║ ╚═╝ ██║╚██████╔╝███████╗███████╗ 
"╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚══════╝ 

"██╗    ██╗███████╗███╗   ██╗███╗   ██╗██╗███╗   ██╗ ██████╗ ███████╗██████╗ 
"██║    ██║██╔════╝████╗  ██║████╗  ██║██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗
"██║ █╗ ██║█████╗  ██╔██╗ ██║██╔██╗ ██║██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝
"██║███╗██║██╔══╝  ██║╚██╗██║██║╚██╗██║██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗
"╚███╔███╔╝███████╗██║ ╚████║██║ ╚████║██║██║ ╚████║╚██████╔╝███████╗██║  ██║
" ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝

"    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"    ██║   ██║██║██╔████╔██║██████╔╝██║     
"    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"  ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

"Set color scheme
colorscheme slate
"Enable line & column number in status bar
set ruler
"More informative status bar
set laststatus=2
"Add line numbers
set number
"Turn on syntax coloring
syntax on
"Set right margin at 80
set colorcolumn=80
"Automatically add matching curly brace
inoremap {<CR> {<CR>}<C-o>O
"Enable auto indentation
set autoindent
"Set tabs to behave as multiple spaces
set expandtab shiftwidth=4 softtabstop=4
"Only perform this section only if Vi(m) has been compiled with support for 
"autocommands
if has("autocmd")
	filetype on
	"autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4
	"autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
	"autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4
	"autocmd FileType html setlocal expandtab shiftwidth=4 softtabstop=4
	autocmd bufwritepost .vimrc source $MYVIMRC
endif
