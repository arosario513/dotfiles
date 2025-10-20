--- Keybinds

vim.api.nvim_set_keymap("n", "<leader>e", "<CMD>Neotree toggle<CR>", { noremap = true })

local wk = require("which-key")

wk.add({
    { "<leader>?", "<CMD>WhichKey<CR>", icon = " " },
    { "<leader>cf", vim.lsp.buf.format, desc = "Format", icon = { icon = "󰚔 ", color = "green" } },
    { "<leader>l", "<CMD>Lazy<CR>", icon = { icon = "󰒲 ", color = "cyan" } },
    { "<leader>m", "<CMD>Mason<CR>", icon = "󱉯 " },
    { "<leader>s", "<CMD>source<CR>", icon = { icon = "", color = "green" } },
    { "<leader>v", "<CMD>VenvSelect<CR>", icon = { icon = " ", color = "yellow" } },
})
