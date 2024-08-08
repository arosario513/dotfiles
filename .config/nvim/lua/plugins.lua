-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

--- Plugins
require("packer").startup(function(use)
  use { "ap/vim-css-color" }
  use { "wbthomason/packer.nvim" }
  use { "mfussenegger/nvim-dap" }
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  }
  use { "mfussenegger/nvim-lint" }
  use { "mhartington/formatter.nvim" }
  use { "catppuccin/nvim" }
  use { "ryanoasis/vim-devicons" }
  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require "configs.lualine"
    end,
  }
  use { "preservim/tagbar" }
  use { "BurntSushi/ripgrep" }
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "configs.telescope"
    end,
  }
  use { "nvim-telescope/telescope-ui-select.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use { "L3MON4D3/LuaSnip" }
  use { "saadparwaiz1/cmp_luasnip" }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup { "*" }
    end,
  }
  use { "rafamadriz/friendly-snippets" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use {
    "hrsh7th/nvim-cmp",
    config = function()
      require "completions"
    end,
  }
  use {
    "nvimtools/none-ls.nvim",
    config = function()
      require "configs.none-ls"
    end,
  }

  use { "nvimtools/none-ls-extras.nvim" }
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require "configs.neotree"
    end,
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  }
  use {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "configs.dashboard"
    end,
    requires = { "nvim-tree/nvim-web-devicons" },
  }

  use {
    "romgrk/barbar.nvim",
  }
end)
