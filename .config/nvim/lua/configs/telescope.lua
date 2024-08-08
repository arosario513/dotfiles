require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {},
    },
  },
}
require("telescope").load_extension "ui-select"

local builtin = require "telescope.builtin"
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
