vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.opt.termguicolors = true -- required by notify plugin to show 24 bit colors or something like that idk
vim.opt.cursorline = true -- required by notify plugin to show 24 bit colors or something like that idk

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

--extra lua
require("core.highlight")
require("core.linenocolor")


vim.api.nvim_create_autocmd({'FocusLost'}, {
        command = 'silent! wa'

    })
