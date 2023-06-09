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
  'rust-lang/rust.vim',
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
  'navarasu/onedark.nvim',
  'romgrk/barbar.nvim',
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'neovim/nvim-lspconfig',
  'simrat39/rust-tools.nvim',
}

require('lualine').setup()
require('nvim-tree').setup()

require('onedark').setup {
  style = 'deep'
}
require('onedark').load()

require('barbar').setup()

require('rust-tools').setup()
