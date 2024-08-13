![screenshot](./screenshot.png)

# What's this?
These are my dotfiles for my main laptop. This one has way more plugins and configs than the main branch.
# What I used in the screenshot
- i3
- alacritty
- picom
- freshfetch
- polybar
- btop
- ncspot
- ranger
- nitrogen
- zsh + ohmyzsh
# Setup
NOTE: My zsh files are in $HOME/.config/zsh
The setup doesn't change much, just the clone command.
## Installation
Clone the repo and cd into it
```
git clone -b red https://github.com/arosario513/dotfiles.git
cd dotfiles
```
Then, run this command:
```
stow .
```
Now have fun with your cool new setup
# Dotfiles Folder Structure
```
dotfiles
├── .config
│   ├── alacritty
│   │   ├── alacritty.toml
│   │   └── themes
│   │       ├── catppuccin-frappe.toml
│   │       ├── catppuccin-latte.toml
│   │       ├── catppuccin-macchiato.toml
│   │       ├── catppuccin-mocha.toml
│   │       ├── dracula.toml
│   │       ├── wlr.toml
│   │       └── wpg.toml
│   ├── cava
│   │   └── config
│   ├── freshfetch
│   │   ├── art.lua
│   │   └── info.lua
│   ├── i3
│   │   └── config
│   ├── i3status
│   │   └── config
│   ├── lf
│   │   ├── colors
│   │   ├── icons
│   │   └── lfrc
│   ├── lf-ueberzug
│   │   ├── colors
│   │   ├── icons
│   │   └── lfrc-ueberzug
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lua
│   │   │   ├── completions.lua
│   │   │   ├── configs
│   │   │   │   ├── autotag.lua
│   │   │   │   ├── dashboard.lua
│   │   │   │   ├── lspconfig.lua
│   │   │   │   ├── lualine.lua
│   │   │   │   ├── neotree.lua
│   │   │   │   ├── none-ls.lua
│   │   │   │   ├── null_ls.lua
│   │   │   │   ├── telescope.lua
│   │   │   │   └── treesitter.lua
│   │   │   ├── keybinds.lua
│   │   │   ├── plugins.lua
│   │   │   └── settings.lua
│   │   ├── README.md
│   │   └── .stylua.toml
│   ├── picom
│   │   └── picom.conf
│   ├── polybar
│   │   └── config.ini
│   ├── ranger
│   │   ├── rc.conf
│   │   └── rifle.conf
│   ├── rofi
│   │   ├── config.rasi
│   │   ├── power.rasi
│   │   ├── wifi
│   │   └── wpg.rasi
│   ├── scripts
│   │   ├── lf-ueberzug
│   │   ├── lf-ueberzug-cleaner
│   │   └── lf-ueberzug-previewer
│   ├── tmux
│   │   └── tmux.conf
│   ├── wpg
│   │   ├── templates
│   │   │   ├── alacritty.base
│   │   │   └── wpg.rasi.base
│   │   └── wpg.conf
│   └── zsh
│       ├── .p10k.zsh
│       ├── .zsh_aliases
│       ├── .zshenv
│       └── .zshrc
├── README.md
└── screenshot.png
```
