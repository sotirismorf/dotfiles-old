syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set nowrap
set smartcase
set clipboard=unnamedplus
set noswapfile
set nobackup
set incsearch
set showcmd
set splitbelow splitright
set wildignore=.git,*.o,*.out,*.so,*.swp,*.jpg,*.png,*.pdf

" PLUGINS 
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'lyuts/vim-rtags'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'

call plug#end()

let mapleader = " "

"STATUS LINE
set statusline=%f  " file name
set statusline+=%h  "help file flag

set statusline+=%r  "read only flag
set statusline+=\ %=  " align left
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]  "modified flag
set statusline+=%y  "filetype"
set statusline+=[%{strlen(&fenc)?&fenc:'none'}]  "file encoding
"set statusline+=[%{&ff}] "file format
set statusline+=\ Line:%l/%L\ [%p%%]  " line X of Y [percent of file]
set statusline+=\ Col:%2c  " current column
set statusline+=\ Buf:%n  " Buffer number
"set statusline+=\ [%b][0x%B]\  " ASCII and byte code under cursor

" COLORSCHEME SETTINGS
colorscheme gruvbox
set background=dark
hi normal ctermbg=NONE
hi statusline cterm=NONE ctermbg=none ctermfg=white

" MAPPING ESC TO JJ
imap jj <Esc> 
 
" REMAPS
map <leader>g :tabc<cr>
map <leader>n :bn<cr>

" SPLIT NAVIGATION WITH CONTROL + H,J,K,L
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k> 
nnoremap <C-l> <C-w><C-l>

" WRITE WITH CTRL+S
nnoremap <C-s> :w<cr>

" NERDTREE
nnoremap <Leader>b :NERDTreeToggle<cr>

" ENABLE COPY/PASTE WITH Ctrl+C / Ctrl+V
vnoremap <C-c> "+y
"map      <C-p> "+P

" COMPILING C++ PROGRAMS
"nnoremap <Leader>c :!echo -e "\e[92m[Vim]\e[0m" && compiler %<cr>
nnoremap <Leader>v :term compiler %<cr>

