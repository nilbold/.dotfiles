local g = vim.g
local opt = vim.opt

-- disable netrw here to avoid potential race conditions
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.background = 'dark'

local indent = 3
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.expandtab = true

opt.autoindent = true
opt.number = true
opt.clipboard = 'unnamedplus'
opt.colorcolumn = '80'
opt.mouse = 'a'

opt.showmatch = true
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true
opt.wildmode = 'list:longest'

opt.cursorline = true
opt.ttyfast = true
