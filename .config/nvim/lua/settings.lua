local global = vim.g
local o = vim.o

global.mapleader = " "
global.maplocalleader = " "

-- General Settings
o.tabstop=4
o.softtabstop=4
o.shiftwidth=4
o.relativenumber=true
o.autoindent = true
o.expandtab = true
o.cursorline = true

-- Other Configurations
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")


vim.api.nvim_set_keymap(
    "n",
    "<leader>e",
    ":Neotree toggle<CR>",
    { noremap = true }
)

vim.keymap.set(
    "n",
    "K",
    vim.lsp.buf.hover,
    {}
)

vim.keymap.set(
    "n",
    "gd",
    vim.lsp.buf.definition,
    {}
)

vim.keymap.set(
    "n",
    "<leader>ca",
    vim.lsp.buf.code_action,
    {}
)

vim.keymap.set(
    "n",
    "<leader>f",
    ":FZF<CR>"
)
