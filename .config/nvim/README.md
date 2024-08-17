![neovim](https://github.com/user-attachments/assets/cf5a8f3c-9f3c-4ce3-b8f4-794bb7fd2ebb)
![neovim2](https://github.com/user-attachments/assets/8d8d5422-758e-47ec-bed6-26aff7fab5cb)

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
│   │   ├── lspconfig.lua
│   │   ├── lualine.lua
│   │   ├── neotree.lua
│   │   ├── none-ls.lua
│   │   ├── null_ls.lua
│   │   ├── telescope.lua
│   │   └── treesitter.lua
│   ├── keybinds.lua
│   ├── plugins.lua
│   └── settings.lua
├── README.md
└── .stylua.toml
```
## Requirements
- Neovim (obviously)
- npm
- Packer

There's quite alot of plugins, so make sure to check out `lua/plugins.lua` to view all of them.
