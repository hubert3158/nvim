require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "html" , "java_language_server"}
})

local on_attach = function (_,_)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end


require("lspconfig").lua_ls.setup{
	on_attach = on_attach
}
require("lspconfig").html.setup{
	on_attach = on_attach
}
require("lspconfig").java_language_server.setup{
cmd = { 'java', 'C:\\Users\\huber\\Documents\\nvim\\language_server\\java-language-server\\dist\\lang_server_windows.sh' }
}