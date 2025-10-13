return {
	{
		"mfussenegger/nvim-lint",
		dependencies = {
			"mhartington/formatter.nvim",
		},
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			require("configs.none-ls")
		end,
	},
}
