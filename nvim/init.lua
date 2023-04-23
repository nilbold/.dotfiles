
-- disable netrw here to avoid potential race conditions
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.background = 'dark'

local indent = 3
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.shiftwidth = indent
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.colorcolumn = '80'
vim.opt.mouse = 'a'

vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmode = 'list:longest'

vim.opt.cursorline = true
vim.opt.ttyfast = true

-- bootstrap the lazy.nvim plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
  'navarasu/onedark.nvim',
}

require('lualine').setup()
require('nvim-tree').setup()

require('onedark').setup {
  style = 'deep'
}
require('onedark').load()

