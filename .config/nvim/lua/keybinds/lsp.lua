local setkey = vim.keymap.set

setkey("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
setkey("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
setkey("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

setkey("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show Diagnostics" })
setkey("n", "<leader>dr", ":RustLsp renderDiagnostic<CR>", { desc = "Show Diagnostics (RustLsp)" })
