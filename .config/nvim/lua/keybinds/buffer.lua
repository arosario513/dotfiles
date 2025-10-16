local setkey = vim.keymap.set

setkey("n", "<leader>bc", ":BufferClose<CR>", {})
setkey("n", "<leader>bn", ":BufferMoveNext<CR>", {})
setkey("n", "<leader>bp", ":BufferMovePrevious<CR>", {})
setkey("n", "<leader>bs", ":BufferMoveStart<CR>", {})
setkey("n", "gT", ":BufferPrevious<CR>", {})
setkey("n", "gt", ":BufferNext<CR>", {})

for i = 1, 9 do
	setkey("n", i .. "gt", ":BufferGoto " .. i .. "<CR>", {})
end
