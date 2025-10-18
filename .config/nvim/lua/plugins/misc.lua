return {
	{
		"christoomey/vim-tmux-navigator",
		dependencies = {
			"mboughaba/i3config.vim",
		},
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
		"nvim-mini/mini.pairs",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("configs.autotag")
		end,
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
}
