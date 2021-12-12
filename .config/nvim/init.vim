"SETTINGS

set mouse=a
set clipboard=unnamedplus
set nu
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set list listchars=trail:·,tab:│\ ,precedes:-
set splitbelow splitright
let mapleader = " "

"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'jiangmiao/auto-pairs'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.svelte'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"let g:coc_global_extensions = [
"	\ 'coc-java',
"	\ 'coc-tsserver',
"	\ 'coc-svelte',
"	\ 'coc-tailwindcss',
"	\ 'coc-css',
"	\]

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<S-cr>'

Plug 'ap/vim-buftabline'

Plug 'ap/vim-css-color'

Plug 'evanleck/vim-svelte', {'branch': 'main'}

call plug#end()

"AUTOMATIC COMMANDS
autocmd! bufwritepost init.vim source %

"COLOR SCHEME
colorscheme gruvbox
set background=dark
"highlight clear LineNr
"hi normal ctermbg=NONE
"Line between buffers
"hi vertsplit ctermfg=fg ctermbg=NONE cterm=NONE
"Unfocused buffer's statusline
"hi statuslinenc cterm=NONE ctermbg=NONE ctermfg=fg 
"Focused buffer's statusline
"hi statusline cterm=NONE ctermbg=NONE ctermfg=fg

"AUTOCOMPLETE
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menu,menuone,noselect

"KEY MAPPINGS
nnoremap <C-s> :w<cr>
nnoremap ter :sp<cr>:term<cr>i

imap jj <Esc>
imap JJ <Esc>

vnoremap " s""<Esc>P
vnoremap '' s''<Esc>P
nnoremap '' ciw''<Esc>P
nnoremap " ciw""<Esc>P
nnoremap d' diwhPl2x

nnoremap <A-1> :bp<cr>
nnoremap <A-2> :bn<cr>

"nnoremap <C-m> :set keymap=greek_utf-8<cr>

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k> 
nnoremap <C-l> <C-w><C-l>

vnoremap < <gv
vnoremap > >gv

map <leader>n :bn<cr>
nnoremap <Leader>b :NERDTreeToggle<cr>
nnoremap <Leader>v :sp<cr> :term compiler %<cr>
nnoremap <Leader>c :term compileandrun<cr>

lua << EOF

local cmp = require'cmp'

cmp.setup({
    mapping = {
	['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<C-n>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['svelte'].setup {
    capabilities = capabilities
	}
  require('lspconfig')['tailwindcss'].setup {
    capabilities = capabilities
	}
EOF
