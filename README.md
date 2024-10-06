# Dotfiles
![GitHub last commit](https://img.shields.io/github/last-commit/arosario513/dotfiles?style=for-the-badge&labelColor=101010&color=ff0000)
![screenshot](./screenshot.png)
## What's this?
These are my dotfiles for my main laptop. This one has way more plugins and configs than the main branch.
## What I used in the screenshot
- i3
- kitty
- starship
- picom
- cava
- fastfetch
- polybar
- btop
- ncspot
- nitrogen
- zsh + ohmyzsh
## Setup
NOTE: My zsh files are in $HOME/.config/zsh, so make sure to move the files where your computer can access them.
If you want the zsh configs on $HOME/.config/zsh, make a file(if it doesn't exist) called zshenv on /etc/zsh with the following text
```
export ZDOTDIR="$HOME/.config/zsh"
```
Then move all your .zsh files to the .config/zsh dir
### Installation
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
