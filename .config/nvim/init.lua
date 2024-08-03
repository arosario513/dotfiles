--- Variables 
local vim = vim

-- General Settings
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.o.relativenumber=true
vim.o.autoindent = true
vim.o.expandtab = true 
vim.o.cursorline = true

-- Other Configurations
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")

--- Plugins
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'mfussenegger/nvim-dap'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'
    use 'catppuccin/nvim'
    use 'ryanoasis/vim-devicons'
    use 'scrooloose/nerdtree'
    use 'nvim-lualine/lualine.nvim'
    use 'preservim/tagbar'
    use 'hrsh7th/nvim-cmp'
    use 'BurntSushi/ripgrep'
    use 'nvim-lua/plenary.nvim'
    use 'preservim/nerdcommenter'
    use 'xiyaowong/transparent.nvim'
    use 'norcalli/nvim-colorizer.lua'
end)

--- Colorscheme
vim.cmd[[colorscheme catppuccin-mocha]]

--- Plugin Configurations
require('mason').setup()
require("mason-lspconfig").setup()
local custom_theme = require'lualine.themes.pywal'
custom_theme.normal.a.bg = '#FF0000'
custom_theme.normal.c.bg = '#202020'

require('lualine').setup{
    options = { theme = custom_theme }
}

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Requires vsnip
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  })
})

--- Key Bindings
vim.g.mapleader=" "
vim.api.nvim_set_keymap(
    "n",
    "<leader>e",
    ":NERDTreeToggle<CR>",
    { noremap = true }
)
