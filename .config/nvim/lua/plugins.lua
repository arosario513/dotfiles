return {
    { "ap/vim-css-color" },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("configs.debug")
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
    },
    {
        "rcarriga/nvim-notify",
        opts = {},
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.mason-lspconfig")
        end,
        after = "mason.nvim",
    },
    { "mfussenegger/nvim-lint" },
    { "mhartington/formatter.nvim" },
    { "catppuccin/nvim" },
    { "ryanoasis/vim-devicons" },
    {
        "nvim-lualine/lualine.nvim",
        opts = {},
    },
    { "preservim/tagbar" },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("configs.telescope")
        end,
    },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
    },
    { "rafamadriz/friendly-snippets" },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },
        config = function()
            require("completions")
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        config = function()
            require("configs.none-ls")
        end,
    },

    { "nvimtools/none-ls-extras.nvim" },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        config = function()
            require("configs.neotree")
        end,
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("configs.dashboard")
        end,
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        "romgrk/barbar.nvim",
    },

    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("configs.autotag")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("configs.treesitter")
        end,
        run = function()
            local ts_update = require("nvim-treesitter.install").update({
                with_sync = true,
            }), ts_update()
        end,
    },

    {
        "mfussenegger/nvim-dap-python",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
        end,
    },

    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-telescope/telescope.nvim",
            "mfussenegger/nvim-dap-python",
        },
        opts = {},
    },

    { "christoomey/vim-tmux-navigator" },

    { "mboughaba/i3config.vim" },

    {
        "folke/which-key.nvim",
        opts = {},
    },

    {
        "epwalsh/obsidian.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("configs.obsidian")
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        dependencies = {
            "tpope/vim-fugitive",
        },
        opts = {},
    },

    {
        "TheLeoP/powershell.nvim",
        opts = {
            bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
        },
    },

    {
        "chomosuke/typst-preview.nvim",
        opts = {},
    },

    {
        "mrcjkb/rustaceanvim",
    },
    {
        "chrisgrieser/nvim-lsp-endhints",
        opts = {},
    },
    {
        "s1n7ax/nvim-window-picker",
        opts = {},
    },
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        opts = {},
    },
}
