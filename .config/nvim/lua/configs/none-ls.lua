local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.pylint,
    require "none-ls.code_actions.eslint",
    require "none-ls.diagnostics.eslint",
  },
  vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
}
