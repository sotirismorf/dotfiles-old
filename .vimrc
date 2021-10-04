syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set encoding=UTF-8
set number
set wrap
set smartcase
set clipboard=unnamedplus
set noswapfile
set nobackup
set incsearch
set showcmd
let g:cssColorVimDoNotMessMyUpdatetime = 1
set splitbelow splitright
set wildignore=.git,*.o,*.out,*.so,*.swp,*.jpg,*.png,*.pdf

" PLUGINS 
call plug#begin('~/.vim/plugged')

"Colorscheme
Plug 'morhetz/gruvbox'
"Minimalist editor for reading and/or writing text
Plug 'junegunn/goyo.vim'
"I dont know what this is
Plug 'lyuts/vim-rtags'
"Color preview
Plug 'skammer/vim-css-color'
"For auto bracket completion
Plug 'jiangmiao/auto-pairs'
"Nice directory tree
Plug 'scrooloose/nerdtree'
"Autocomplete
Plug 'vim-scripts/AutoComplPop'

call plug#end()

let mapleader = " "

" COLORSCHEME SETTINGS
colorscheme gruvbox
set background=dark
"highlight clear LineNr
hi normal ctermbg=NONE
hi statusline cterm=NONE ctermbg=none ctermfg=white

"AUTOCOMPLETE
set completeopt=menuone

" MAPPING ESC TO JJ
imap jj <Esc>

" REMAPS
"map <leader>g :tabc<cr>
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

" COMPILING C++ PROGRAMS
nnoremap <Leader>v :term compiler %<cr>

