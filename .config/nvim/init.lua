require('settings')
require('plugins')
--- Colorscheme
vim.cmd[[colorscheme catppuccin-mocha]]
--- Plugin Configurations
require'colorizer'.setup({'*'})
require('mason').setup()
require('mason-lspconfig').setup()
