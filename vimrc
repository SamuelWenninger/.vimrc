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

"Call pathogen (package manager)
execute pathogen#infect()
filetype plugin on
"Make blank files defaultly LaTeX
let g:tex_flavor='latex'
"Set color scheme
colorscheme slate
"Enable line & column number in status bar
set ruler
"More informative status bar
set laststatus=2
"Show what command you are typing in normal mode in the status bar
set showcmd
"Add line numbers
set number
"Search as you type
set incsearch
"Ignore case when searching. Use '\C' at the end of a search to care about case
set ignorecase
"Highlight search results
set hlsearch
"Turn on syntax coloring
syntax on
"Set right margin at 80 (up to line)
set colorcolumn=81
"Set text wraping at 80
set tw=80
"Enable auto indentation
set autoindent
"Set tabs to behave as multiple spaces
set expandtab shiftwidth=4 softtabstop=4
"Make new windows appear on the right instead of the left
set splitright
"Make backspace behave as expected
set backspace=2
"One press tab autocompletes and shows all available options
set wildmode=longest:list
"Automatically add matching curly brace
inoremap {<CR> {<CR>}<C-o>O
"Make 'Y' behave similarly to 'D' and 'C'
nnoremap Y y$
"Easy turning on of spell check
map <leader>s :setlocal spell! spelllang=en_us<CR>
"Make entering insert mode from normal mode turn off search highlighting until
"the next search
nnoremap i :nohl<CR>i
"Replace the first item in a line with a space
nmap <silent><leader>f :normal! mm^r<Space>`m<CR>
"Allow freedom to move the cursor anywhere, regardless of if there is a
"character there or not
nmap <leader>von :set ve=all<CR>
nmap <leader>voff :set ve=<CR>
"Start LaTeX live preview
"nmap <leader>L :LLPStartPreview<CR>
nmap <leader>L :! pdflatex *.tex<CR>
command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
nmap <leader>P :Silent pandoc % -o %:t:r.pdf -V geometry:margin=1in &<CR>

"Abbreviations
iab osheading 
\Name: Samuel Wenninger  
\<CR>Professor: David Goldschmidt  
\<CR>Course: Operating Systems  
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y  ")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T  ")<CR>
\<CR>Filename: <C-R>=expand("%:t  ")<CR>
\<CR>Topic:  <CR>

iab oscprogramheading 
\/*******************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Professor: David Goldschmidt
\<CR>Course: Operating Systems
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Topic: 
\<CR>****************************************************************************
\***/<CR>

iab plheading 
\Name: Samuel Wenninger  
\<CR>Professor: Carlos Varela  
\<CR>Course: Programming Languages  
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y  ")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T  ")<CR>
\<CR>Filename: <C-R>=expand("%:t  ")<CR>
\<CR>Topic:  <CR>

iab cans1heading 
\Name: Samuel Wenninger  
\<CR>Professor: Bulent Yener  
\<CR>Course: Cryptography and Network Security 1  
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y  ")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T  ")<CR>
\<CR>Filename: <C-R>=expand("%:t  ")<CR>
\<CR>Topic:  <CR>

iab sdadheading 
\Name: Samuel Wenninger  
\<CR>Professor: John Sturman  
\<CR>Course: Software Design and Documentation  
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y  ")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T  ")<CR>
\<CR>Filename: <C-R>=expand("%:t  ")<CR>
\<CR>Topic:  <CR>

iab scheading 
\Name: Samuel Wenninger  
\<CR>Professor: Merrill Whitburn  
\<CR>Course: Speech Communication  
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y  ")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T  ")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR><CR>
\\
\<CR>Topic:  <CR>

iab mlaheading 
\Name: Samuel Wenninger  
\<CR>Professor:   
\<CR>Course:   
\<CR>Date: <C-R>=strftime("%m-%d-%Y  ")<CR>

iab journalheading 
\********************************************************************************
\<CR>Name: Samuel Wenninger
\<CR>Highlight:
\<CR>Tags: 
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T")<CR>
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
\<CR>Date Created: <C-R>=strftime("%m-%d-%Y")<CR>
\<CR>Last Modified: <C-R>=strftime("%m-%d-%Y %T")<CR>
\<CR>Filename: <C-R>=expand("%:t")<CR>
\<CR>Description: 
\<CR>****************************************************************************
\****<CR>

iab stardiv 
\********************************************************************************

"Math abbreviations
imap <leader>uparrow    ↑
imap <leader>downarrow  ↓
imap <leader>leftarrow  ←
imap <leader>rightarrow →
imap <leader>equiv      ≡
imap <leader>neq        ≠
imap <leader>approx     ≅
imap <leader>sum        ∑
imap <leader>prod       ∏
imap <leader>int        ∫
imap <leader>iint       ∫∫
imap <leader>iiint      ∫∫∫
imap <leader>iiiint     ∫∫∫∫
imap <leader>infty      ∞
imap <leader>forall     ∀
imap <leader>in         ∈
imap <leader>exists     ∃
imap <leader>times      ×
imap <leader>bhor       ═
imap <leader>bver       ║
imap <leader>btl        ╔
imap <leader>btr        ╗
imap <leader>bbl        ╚
imap <leader>bbr        ╝
"Greek letters
imap <leader>Alpha      Α
imap <leader>alpha      ⍺
imap <leader>Epsilon    Ε
imap <leader>epsilon    ε
imap <leader>Theta      Θ
imap <leader>theta      θ
imap <leader>Lambda     Λ
imap <leader>lambda     λ
imap <leader>Pi         Π
imap <leader>pi         π
imap <leader>Sigma      Σ
imap <leader>sigma      σ
imap <leader>Phi        Φ
imap <leader>phi        φ
imap <leader>Omega      Ω
imap <leader>omega      ω
imap <leader>Beta       Β
imap <leader>beta       β
imap <leader>Mu         Μ
imap <leader>mu         μ
imap <leader>Gamma      Γ
imap <leader>gamma      γ
imap <leader>Zeta       Ζ
imap <leader>zeta       ζ
imap <leader>Iota       Ι
imap <leader>iota       ι
imap <leader>Nu         Ν
imap <leader>nu         ν
imap <leader>Rho        Ρ
imap <leader>rho        ρ
imap <leader>Tau        Τ
imap <leader>tau        τ
imap <leader>Chi        Χ
imap <leader>chi        χ
imap <leader>Delta      Δ
imap <leader>delta      δ
imap <leader>Eta        Η
imap <leader>eta        η
imap <leader>Kappa      Κ
imap <leader>kappa      κ
imap <leader>Xi         Ξ
imap <leader>xi         ξ
imap <leader>Upsilon    Υ
imap <leader>upsilon    υ
imap <leader>Psi        Ψ
imap <leader>psi        ψ

iab #i           #include
iab #d           #define
iab #e           #endif


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
    "Live LaTeX preview
    autocmd Filetype tex setl updatetime=1
    "autocmd BufNew,BufNewFile,BufRead *.md,*markdown :setlocal expandtab shiftwidth=3 softtabstop=3
endif

"Live preview application for LaTeX
let g:livepreview_previewer = 'open -a Preview'
"Vim-LaTeX view file
let g:Tex_ViewRule_pdf = 'open -a Preview'

fun! LastMod()
    if line("$") > 20
        let l = 20
    else
        let l = line("$")
    endif
    exe "1," . l . "g/Last Modified: /s/Last Modified: .*/Last Modified: " .
    \ strftime("%m-%d-%Y %T  ")
endfun
