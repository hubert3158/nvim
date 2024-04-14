require("lazy").setup({
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }},
  "folke/which-key.nvim",
  "williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "natebosch/vim-lsc"
 })
