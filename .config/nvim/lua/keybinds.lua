--- Keybinds

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true })

local setkey = vim.keymap.set

setkey("n", "<leader>l", ":Lazy<CR>", {})
setkey("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
setkey("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
setkey("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

setkey("t", "<Esc>", "<C-\\><C-n>", {})

setkey("n", "<leader>th", ":split | terminal<CR>", {})
setkey("n", "<leader>tv", ":vsplit | terminal<CR>", {})

setkey("n", "gt", ":BufferNext<CR>", {})

for i = 1, 9 do
	setkey("n", i .. "gt", ":BufferGoto " .. i .. "<CR>", {})
end

setkey("n", "<leader>?", ":WhichKey<CR>", {})

setkey("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
setkey("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", {})
setkey("n", "<leader>gD", ":Gitsigns diffthis<CR>", {})

setkey("n", "<leader>s", ":source<CR>", {})

setkey("n", "<leader>v", ":VenvSelect<CR>", {})

setkey("n", "<leader>m", ":Mason<CR>", {})

setkey("n", "<leader>bc", ":BufferClose<CR>", {})
setkey("n", "<leader>bn", ":BufferMoveNext<CR>", {})
setkey("n", "<leader>bp", ":BufferMovePrevious<CR>", {})
setkey("n", "<leader>bs", ":BufferMoveStart<CR>", {})
setkey("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show Diagnostics" })
setkey("n", "<leader>dr", ":RustLsp renderDiagnostic<CR>", { desc = "Show Diagnostics (RustLsp)" })

setkey("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Show Diagnostics (Trouble)" })
setkey("n", "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer Diagnostics (Trouble)" })
setkey("n", "<leader>xl", ":Trouble loclist toggle<CR>", { desc = "Location List (Trouble)" })
setkey("n", "<leader>xr", ":Trouble lsp_references toggle<CR>", { desc = "References (Trouble)" })
setkey("n", "<leader>xs", ":Trouble symbols toggle win.position=right<CR>", { desc = "Symbols (Trouble)" })
