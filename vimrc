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
"Set right margin at 80 (up to line)
set colorcolumn=81
"Automatically add matching curly brace
inoremap {<CR> {<CR>}<C-o>O
"Enable auto indentation
set autoindent
"Set tabs to behave as multiple spaces
set expandtab shiftwidth=4 softtabstop=4
"Make new windows appear on the right instead of the left
set splitright
"One press tab autocompletes and shows all available options
set wildmode=longest:list
"Make 'Y' behave similarly to 'D' and 'C'
nnoremap Y y$

"Abbreviations
iab osheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: David Goldschmidt
\<CR>Course: Operating Systems
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\****<CR>

iab oscprogramheading 
\/*******************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: David Goldschmidt
\<CR>Course: Operating Systems
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\***/<CR>

iab plheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: Carlos Varela
\<CR>Course: Programming Languages
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\****<CR>

iab cansheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: Bulent Yener
\<CR>Course: Cryptography and Network Security 1
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\****<CR>

iab sdadheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: John Sturman
\<CR>Course: Software Design and Documentation
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\****<CR>

iab scheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: Merrill Whitburn
\<CR>Course: Speech Communication
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\****<CR>

iab mlaheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: 
\<CR>Course: 
\<CR>Date: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>****************************************************************************
\****<CR>

iab journalheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Highlight:
\<CR>Tags: 
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>****************************************************************************
\****<CR>
\<CR>****************************************************************************
\****
\<CR>Morning: TBD
\<CR>****************************************************************************
\****<CR>
\<CR>****************************************************************************
\****
\<CR>Afternoon: 
\<CR>****************************************************************************
\****<CR>
\<CR>****************************************************************************
\****
\<CR>Night: TBD
\<CR>****************************************************************************
\****

iab generalheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Description: 
\<CR>Date Created: <C-R>=strftime("%m/%d/%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m/%d/%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>****************************************************************************
\****<CR>

iab stardiv 
\********************************************************************************


"Only perform this section only if Vi(m) has been compiled with support for
"autocommands
if has("autocmd")
    filetype on
    "autocmd FileType cpp setlocal expandtab shiftwidth=4 softtabstop=4
    "autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
    "autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4
    "autocmd FileType html setlocal expandtab shiftwidth=4 softtabstop=4
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd! BufWritePre,FileWritePre * ks|call LastMod()|'s
endif

fun! LastMod()
    if line("$") > 20
        let l = 20
    else
        let l = line("$")
    endif
    exe "1," . l . "g/Last Modified: /s/Last Modified: .*/Last Modified: " .
    \ strftime("%m %d %Y %T")
endfun
