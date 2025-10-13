require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
require("telescope").load_extension("ui-select")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fC", builtin.colorscheme, { desc = "Colorscheme" })
vim.keymap.set("n", "<leader>fc", builtin.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Git Files" })
vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Marks" })
vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "Registers" })
vim.keymap.set("n", "<leader>fs", builtin.search_history, { desc = "Search History" })
vim.keymap.set("n", "<leader>fb", builtin.current_buffer_fuzzy_find, { desc = "Current Buffer Fuzzy Find" })
