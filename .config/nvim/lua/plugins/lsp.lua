return {
    {
        "mrcjkb/rustaceanvim",
    },
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "chrisgrieser/nvim-lsp-endhints",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.mason-lspconfig")
        end,
        after = "mason.nvim",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "folke/lazydev.nvim",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                { path = "LazyVim",            words = { "LazyVim" } },
                { path = "snacks.nvim",        words = { "Snacks" } },
                { path = "lazy.nvim",          words = { "LazyVim" } },
            },
        },
    },
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
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },
}
