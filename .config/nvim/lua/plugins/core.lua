return {
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
}
