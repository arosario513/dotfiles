--- Keybinds

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})

vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", {})
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", {})

vim.keymap.set("n", "gt", ":BufferNext<CR>", {})

for i = 1, 9 do
    vim.keymap.set("n", i .. "gt", ":BufferGoto " .. i .. "<CR>", {})
end

vim.keymap.set("n", "<leader>?", ":WhichKey<CR>", {})

vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", {})
vim.keymap.set("n", "<leader>gD", ":Gitsigns diffthis<CR>", {})

vim.keymap.set("n", "<leader>s", ":source<CR>", {})

vim.keymap.set("n", "<leader>v", ":VenvSelect<CR>", {})

vim.keymap.set("n", "<leader>m", ":Mason<CR>", {})

vim.keymap.set("n", "<leader>bc", ":BufferClose<CR>", {})
vim.keymap.set("n", "<leader>bn", ":BufferMoveNext<CR>", {})
vim.keymap.set("n", "<leader>bp", ":BufferMovePrevious<CR>", {})
vim.keymap.set("n", "<leader>bs", ":BufferMoveStart<CR>", {})
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show Diagnostics" })
vim.keymap.set("n", "<leader>dr", ":RustLsp renderDiagnostic<CR>", { desc = "Show Diagnostics (RustLsp)" })
