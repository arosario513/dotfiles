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
    "ts_ls",
    "typos_lsp",
    "csharp_ls",
    "rust_analyzer",
    "java_language_server",
  },
  automatic_installation = true,
}
