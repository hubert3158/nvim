

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "html","jdtls"},
	capabilities = capabilities
}

)


local on_attach = function (_,_)
  
   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})  --watchout idk what i am doing
end


require("lspconfig").lua_ls.setup{
	on_attach = on_attach,
	
}
require("lspconfig").html.setup{
	on_attach = on_attach,
		
}

require("lspconfig").jdtls.setup {
on_attach = on_attach,
	
  cmd = { 'jdtls', '--stdio' },
  filetypes = { 'java' },
}


