![neovim](https://github.com/user-attachments/assets/0c5abb63-3ed1-4e4c-a6ab-11cc26a54c5c)
![neovim2](https://github.com/user-attachments/assets/aea7104a-342c-456c-a722-ed4db79d940a)


# Neovim Plugins

## Structure

```
nvim
├── init.lua
├── lua
│   ├── completions.lua
│   ├── configs
│   │   ├── autotag.lua
│   │   ├── dashboard.lua
│   │   ├── debug.lua
│   │   ├── lspconfig.lua
│   │   ├── lualine.lua
│   │   ├── mason-lspconfig.lua
│   │   ├── neotree.lua
│   │   ├── none-ls.lua
│   │   ├── null_ls.lua
│   │   ├── obsidian.lua
│   │   ├── telescope.lua
│   │   └── treesitter.lua
│   ├── keybinds.lua
│   ├── plugins.lua
│   └── settings.lua
└── README.md

```

## Requirements

- Neovim (obviously)
- npm
- Packer

There's quite alot of plugins, so make sure to check out `lua/plugins.lua` to view all of them.
