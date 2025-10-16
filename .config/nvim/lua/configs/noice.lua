local noice = require("noice")
noice.setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	presets = {
		long_message_to_split = true,
	},
	routes = {
		{
			view = "mini",
			filter = {
				event = "msg_showmode",
				find = "recording @",
			},
		},
	},
})
