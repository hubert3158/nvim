-- Variable to control dynamic coloring
local dynamic_coloring = false

-- Function to generate a random color
local function random_color()
    local hex = "0123456789ABCDEF"
    local color = "#"
    for _ = 1, 6 do
        local index = math.random(1, #hex)
        color = color .. hex:sub(index, index)
    end
    return color
end

-- Set default highlight for current line number
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFD700", bg = "None", bold = true })

-- Enable cursorline and cursorlinenr
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Autocommand group
local group = vim.api.nvim_create_augroup("LineNrHighlight", { clear = true })

-- Autocommand for dynamic cursorline number highlighting
vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI"}, {
    group = group,
    callback = function()
        if dynamic_coloring then
            vim.api.nvim_set_hl(0, "CursorLineNr", { fg = random_color(), bg = "None", bold = true })
        else
            vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFD700", bg = "None", bold = true })
        end
        vim.opt.cursorline = true
    end
})

