local setkey = vim.keymap.set

setkey("n", "<leader>gD", ":Gitsigns diffthis<CR>", {})
setkey("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
setkey("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", {})
