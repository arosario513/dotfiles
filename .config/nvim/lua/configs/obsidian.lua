local obsidian = require "obsidian"
obsidian.setup {
  workspaces = {
    {
      name = "personal",
      path = "~/.local/share/vaults/personal",
    },
    {
      name = "work",
      path = "~/.local/share/vaults/work",
    },
  },
}
