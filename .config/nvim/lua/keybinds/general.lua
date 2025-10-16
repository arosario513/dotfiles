--- Keybinds

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true })

local setkey = vim.keymap.set

setkey("n", "<leader>?", ":WhichKey<CR>", {})
setkey("n", "<leader>l", ":Lazy<CR>", {})
setkey("n", "<leader>m", ":Mason<CR>", {})
setkey("n", "<leader>s", ":source<CR>", {})
setkey("n", "<leader>v", ":VenvSelect<CR>", {})
