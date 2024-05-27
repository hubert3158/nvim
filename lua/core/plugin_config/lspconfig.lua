require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "html", "jdtls", "vtsls" },
})

local on_attach = function(_, _)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = "Go to definition"})
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {desc = "Go to Declaration"})
	vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover" })
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--  require('lspconfig')['lua-language-server'].setup {
--   capabilities = capabilities
-- }

require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").jdtls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").vtsls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
