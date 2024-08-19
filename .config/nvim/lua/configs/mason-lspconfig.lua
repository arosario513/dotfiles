local mason_lspconfig = require "mason-lspconfig"
mason_lspconfig.setup {
  ensure_installed = {
    "lua_ls",
    "bashls",
    "clangd",
    "cssls",
    "html",
    "jedi_language_server",
    "lemminx",
    "markdown_oxide",
    "marksman",
    "pyright",
    "pylsp",
    "tsserver",
    "typos_lsp",
    "csharp_ls",
    "rust_analyzer",
  },
  automatic_installation = true,
}