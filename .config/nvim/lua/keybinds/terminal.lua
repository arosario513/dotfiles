local setkey = vim.keymap.set

setkey("n", "<leader>th", ":split | terminal<CR>", {})
setkey("n", "<leader>tv", ":vsplit | terminal<CR>", {})
setkey("t", "<Esc>", "<C-\\><C-n>", {})
