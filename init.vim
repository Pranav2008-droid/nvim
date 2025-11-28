set mouse=v
set autoindent
set number
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
set cursorline
set undofile  " save undos
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications
set encoding=UTF-8
" In your .vimrc file
map <F5> :w<CR>:!python3 %<CR>
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'marko-cerovac/material.nvim'
Plug 'vim-airline/vim-airline'  " make statusline awesome
Plug 'davidhalter/jedi-vim'
Plug 'Vimjas/vim-python-pep8-indent'  "better indenting for python
Plug 'w0rp/ale'  " python linters
Plug 'ncm2/ncm2'  " awesome autocomplete plugin
Plug 'Shougo/deoplete.nvim' "Async autocompletion
Plug 'Townk/vim-autoclose' " Automatically close parenthesis, etc
Plug 'sheerun/vim-polyglot' " Better language packs

" LSP and Mason
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

call plug#end()
colorscheme material-deep-ocean 

lua require('lsp')

