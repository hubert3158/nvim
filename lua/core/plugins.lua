require("lazy").setup({
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }},
  "folke/which-key.nvim",
  
  "williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",   -- for lsp to work
  "neovim/nvim-lspconfig",
  "nvim-treesitter/nvim-treesitter",
  
  "neovim/nvim-lspconfig",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  "hrsh7th/cmp-vsnip", --snippets
  "hrsh7th/vim-vsnip", --snippets
  
  'vim-airline/vim-airline', -- bottom status bar
  'vim-airline/vim-airline-themes', --bottom status bar themes
  
  'tpope/vim-commentary', --for comments
  
  'rcarriga/nvim-notify' , -- to get nice notifications
   
   {
  'stevearc/dressing.nvim',   -------------------------------------------------------------not working
  opts = {},
},

{ 'echasnovski/mini.indentscope', version = '*' },  --provides vertical indent  line

-- lazy.nvim
{
  "folke/noice.nvim",									-- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
},

  {
    "nvimdev/dashboard-nvim",    -------------------------------------------------------------not working
  },
  "ryanoasis/vim-devicons",   --- for icons Supports plugins such as NERDTree, vim-airline, CtrlP, powerline, denite, unite, lightline.vim, vim-startify, vimfiler, vim-buffet and flagship.

{"preservim/nerdtree" , name = "nerdtree" }
 })

