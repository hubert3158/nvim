vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " " -- Same for `maplocalleader`
vim.g.scrolloff = 5
vim.opt.incsearch = true -- Do incremental searching. map Q gq
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", ":Neotree<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>t", ":terminal<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", ":tabnext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", ":tabprevious<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>r", ":Neoformat<CR>", { silent = true })
--map <leader>f <Plug>(easymotion-s)
vim.api.nvim_set_keymap("n", "<leader>S", "<Plug>(Sneak-s)", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", "<Plug>(Sneak_S)", { silent = true })
