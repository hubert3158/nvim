local highlight_yank_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({higroup="IncSearch", timeout=150})
    end,
    group = highlight_yank_group,
    pattern = "*",

})
