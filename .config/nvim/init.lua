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
    use 'ap/vim-css-color'
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
    use 'BurntSushi/ripgrep'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'xiyaowong/transparent.nvim'
    use 'norcalli/nvim-colorizer.lua'
end)

--- Colorscheme
vim.cmd[[colorscheme catppuccin-mocha]]
--- Plugin Configurations
require'colorizer'.setup({'*'})
require('mason').setup()
require('mason-lspconfig').setup()
local custom_theme = require'lualine.themes.pywal'
custom_theme.normal.a.bg = '#FF0000'
custom_theme.normal.c.bg = '#202020'

require('lualine').setup{
    options = { theme = custom_theme }
}

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
lspconfig.rust_analyzer.setup({})

require('telescope').setup({
    extensions = {
        ["ui-select"] = {
            require('telescope.themes').get_dropdown {
            }
        }
    }
 })
 require('telescope').load_extension('ui-select')

--- Key Bindings
vim.g.mapleader=" "
vim.api.nvim_set_keymap(
    "n",
    "<leader>e",
    ":NERDTreeToggle<CR>",
    { noremap = true }
)

vim.keymap.set(
    "n",
    "K",
    vim.lsp.buf.hover,
    {}
)

vim.keymap.set(
    "n",
    "gd",
    vim.lsp.buf.definition,
    {}
)

vim.keymap.set(
    "n",
    "<leader>ca",
    vim.lsp.buf.code_action,
    {}
)

local builtin = require('telescope.builtin')
vim.keymap.set(
    "n",
    "<C-p>",
    builtin.find_files,
    {}
)

vim.keymap.set(
    "n",
    "<leader>f",
    ":FZF<CR>"
)
