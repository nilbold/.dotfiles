set nocompatible

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'navarasu/onedark.nvim'

call plug#end()

set background=dark
let g:onedark_config = { 'style': 'deep' }
colorscheme onedark

highlight Comment gui=italic
highlight Comment cterm=italic

set mouse=v
set mouse=a

set showmatch
set ignorecase
set hlsearch
set incsearch
set wildmode=longest,list

set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

set autoindent
set number
set clipboard=unnamedplus
set cc=80

set cursorline
set ttyfast

lua << EOF
require('lualine').setup()
EOF

