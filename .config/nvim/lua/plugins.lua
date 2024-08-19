-- Install Packer if it isn't already
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer

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
      require "configs.mason-lspconfig"
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
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      require "configs.telescope"
    end,
  }
  use { "L3MON4D3/LuaSnip" }
  use { "saadparwaiz1/cmp_luasnip" }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup { "*" }
    end,
  }
  use { "rafamadriz/friendly-snippets" }
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
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

  use {
    "windwp/nvim-ts-autotag",
    config = function()
      require "configs.autotag"
    end,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.treesitter"
    end,
    run = function()
      local ts_update = require("nvim-treesitter.install").update {
        with_sync = true,
      }
      ts_update()
    end,
  }

  use {
    "mfussenegger/nvim-dap-python",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    end,
  }

  use {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp",
    requires = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      require("venv-selector").setup()
    end,
  }

  use { "christoomey/vim-tmux-navigator" }

  use { "mboughaba/i3config.vim" }

  if packer_bootstrap then
    require("packer").sync()
  end
end)
