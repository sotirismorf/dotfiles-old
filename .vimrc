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
set splitbelow splitright
set wildignore=.git,*.o,*.out,*.so,*.swp,*.jpg,*.png,*.pdf

"Automatically source .vimrc when saved
autocmd! bufwritepost .vimrc source %

" PLUGINS 
call plug#begin('~/.vim/plugged')

"Colorscheme
Plug 'morhetz/gruvbox'
"Minimalist editor for reading and/or writing text
Plug 'junegunn/goyo.vim'
"I dont know what this is
Plug 'lyuts/vim-rtags'
"Color preview
"Plug 'skammer/vim-css-color'
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
"Line between buffers
hi vertsplit ctermfg=fg ctermbg=NONE cterm=NONE
"Unfocused buffer's statusline
hi statuslinenc cterm=NONE ctermbg=NONE ctermfg=fg 
"Focused buffer's statusline
hi statusline cterm=NONE ctermbg=NONE ctermfg=fg

"AUTOCOMPLETE
set completeopt=menuone

" MAPPING ESC TO JJ
imap jj <Esc>

" REMAPS

"Split navigation with control + H,J,K,L
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k> 
nnoremap <C-l> <C-w><C-l>

"Write with CTRL+S
nnoremap <C-s> :w<cr>
"Go to next buffer
map <leader>n :bn<cr>
"Toggle nerdtree
nnoremap <Leader>b :NERDTreeToggle<cr>
"Compile C++ single files
nnoremap <Leader>v :term compiler %<cr>

