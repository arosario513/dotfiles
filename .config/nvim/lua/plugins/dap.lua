return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
	},
	{
		"mfussenegger/nvim-dap",
		config = function()
			require("configs.debug")
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
		end,
	},
}
