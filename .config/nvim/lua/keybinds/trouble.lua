local setkey = vim.keymap.set

setkey("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Show Diagnostics (Trouble)" })
setkey("n", "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer Diagnostics (Trouble)" })
setkey("n", "<leader>xl", ":Trouble loclist toggle<CR>", { desc = "Location List (Trouble)" })
setkey("n", "<leader>xr", ":Trouble lsp_references toggle<CR>", { desc = "References (Trouble)" })
setkey("n", "<leader>xs", ":Trouble symbols toggle win.position=right<CR>", { desc = "Symbols (Trouble)" })
