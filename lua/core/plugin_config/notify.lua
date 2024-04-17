require("notify")("hey there")
require("notify")("config dap when you have time")
require("notify")("okay thanks")
require("notify")("tmux setup")
require("notify")("indent size and editor config")
require("notify")("coc for completion may be")
require("notify")("check out LudoPinelli/comment-box.nvim")


local LazyVim = require("lazy")
require("notify").setup({
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss All Notifications",
    },
  },
  opts = {
    stages = "static",
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
  init = function()
    -- when noice is not enabled, install notify on VeryLazy
  end,
})
