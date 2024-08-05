-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

--- Plugins
require('packer').startup(function(use)
    use 'ap/vim-css-color'
    use 'wbthomason/packer.nvim'
    use 'mfussenegger/nvim-dap'
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('configs.lspconfig')
        end,
    }
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'mfussenegger/nvim-lint'
    use 'mhartington/formatter.nvim'
    use 'catppuccin/nvim'
    use 'ryanoasis/vim-devicons'
    use 'scrooloose/nerdtree'
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('configs.lualine')
        end,
    }
    use 'preservim/tagbar'
    use 'BurntSushi/ripgrep'
    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('configs.telescope')
        end,
    }
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'xiyaowong/transparent.nvim'
    use 'norcalli/nvim-colorizer.lua'
end)
