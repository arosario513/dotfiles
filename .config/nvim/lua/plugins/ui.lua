return {
	{
		"catppuccin/nvim",
		dependencies = {
			"ryanoasis/vim-devicons",
			"preservim/tagbar",
			"romgrk/barbar.nvim",
			"ap/vim-css-color",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {},
	},
	{
		"rcarriga/nvim-notify",
		opts = {},
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
	{
		"s1n7ax/nvim-window-picker",
		opts = {},
	},
	{
		"folke/noice.nvim",
		dependencies = {
			"ibhagwan/fzf-lua",
			"MunifTanjim/nui.nvim",
		},
        config = function ()
            require("configs.noice")
        end
	},
	{
		"folke/trouble.nvim",
		opts = {},
	},
	{
		"folke/which-key.nvim",
		opts = {},
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" })
		end,
	},
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
}
