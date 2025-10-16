require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
require("telescope").load_extension("ui-select")

local builtin = require("telescope.builtin")

local setkey = vim.keymap.set
setkey("n", "<leader>fC", builtin.colorscheme, { desc = "Colorscheme" })
setkey("n", "<leader>fc", builtin.command_history, { desc = "Command History" })
setkey("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
setkey("n", "<leader>fg", builtin.git_files, { desc = "Git Files" })
setkey("n", "<leader>fm", builtin.marks, { desc = "Marks" })
setkey("n", "<leader>fr", builtin.registers, { desc = "Registers" })
setkey("n", "<leader>fs", builtin.search_history, { desc = "Search History" })
setkey("n", "<leader>fb", builtin.current_buffer_fuzzy_find, { desc = "Current Buffer Fuzzy Find" })
