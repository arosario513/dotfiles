local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"csharp_ls",
		"cssls",
		"html",
		"lemminx",
		"lua_ls",
		"markdown_oxide",
		"marksman",
		"pyright",
		"ruff",
		"ts_ls",
		"typos_lsp",
	},
	automatic_installation = true,
})
