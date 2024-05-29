require("telescope").setup({
	file_ignore_patterns = { "node%_modules/.*" },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find_files" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "find_old_files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live_grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find_buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "find_help_tags" })
vim.keymap.set("n", "<leader>fs", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
