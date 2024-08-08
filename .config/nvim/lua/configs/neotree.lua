local neotree = require "neo-tree"
neotree.setup {
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = true,
    },
  },
}
