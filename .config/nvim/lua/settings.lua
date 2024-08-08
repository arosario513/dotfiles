local global = vim.g
local o = vim.o

global.mapleader = " "
global.maplocalleader = " "

-- General Settings
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.relativenumber = true
o.autoindent = true
o.expandtab = true
o.cursorline = true
o.termguicolors = true

-- Other Configurations
vim.cmd "syntax enable"
vim.cmd "filetype plugin indent on"
vim.cmd "filetype plugin on"
