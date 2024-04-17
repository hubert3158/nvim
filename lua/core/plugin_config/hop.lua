require("hop").setup()


vim.api.nvim_set_keymap("n", "<leader>j", ":HopWordAC<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", ":HopWordBC<CR>", { silent = true })
