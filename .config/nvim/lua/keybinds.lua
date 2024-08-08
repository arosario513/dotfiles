--- Keybinds

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true })

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>f", ":FZF<CR>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})

vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", {})

vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", {})

vim.keymap.set("n", "gt", ":BufferNext<CR>", {})

for i = 1, 9 do
    vim.keymap.set("n", i .. "gt", ":BufferGoto " .. i .. "<CR>", {})
end
