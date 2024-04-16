-- Set highlight for current line number
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFD700", bg = "None", bold = true })

-- Enable cursorline and cursorlinenr
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Autocommand group
local group = vim.api.nvim_create_augroup("LineNrHighlight", { clear = true })

-- Autocommand to ensure that cursorline number highlighting updates correctly
vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI"}, {
    group = group,
    callback = function()
        vim.opt.cursorline = true
    end
})
