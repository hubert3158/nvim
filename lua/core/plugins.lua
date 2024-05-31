require("lazy").setup({
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- or                              , branch = '0.1.x',
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep", -----  for live-grep to work
		},
	},
	"folke/which-key.nvim",

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim", -- for lsp to work
	"neovim/nvim-lspconfig",

	{
		"nvim-treesitter/nvim-treesitter",
	},

	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-vsnip", --snippets
	"hrsh7th/vim-vsnip", --snippets

	"vim-airline/vim-airline", -- bottom status bar
	"vim-airline/vim-airline-themes", --bottom status bar themes

	"tpope/vim-commentary", --for comments

	{
		"stevearc/dressing.nvim", -------------------------------------------------------------not working
		opts = {},
	},

	{ "echasnovski/mini.indentscope", version = "*" }, --provides vertical indent  line

	-- lazy.nvim
	{
		"folke/noice.nvim", -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
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
		},
	},
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	"ryanoasis/vim-devicons", --- for icons Supports plugins such as NERDTree, vim-airline, CtrlP, powerline, denite, unite, lightline.vim, vim-startify, vimfiler, vim-buffet and flagship.

	"preservim/nerdtree", -- to show file structures on the side
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... }, -- colors and theme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 }, --colors and theme
	"justinmk/vim-sneak",
	"sbdchd/neoformat", -- for formatting code
	"zbirenbaum/copilot.lua",
	"NvChad/nvim-colorizer.lua",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }, --Getting you where you want with the fewest keystrokes
	},
	"rcarriga/nvim-notify",
	"karb94/neoscroll.nvim", -- for smooth scroll
	-- "Pocco81/auto-save.nvim",
	"hadronized/hop.nvim",
	"tpope/vim-surround", --
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	}, -- nice todo/fixme/notify comments
	{ "tpope/vim-fugitive" },

	"williamboman/mason.nvim", --
	"mfussenegger/nvim-dap", --  -- https://github.com/jay-babu/mason-nvim-dap.nvim
	"jay-babu/mason-nvim-dap.nvim", --
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{ "folke/neodev.nvim", opts = {} },






})
