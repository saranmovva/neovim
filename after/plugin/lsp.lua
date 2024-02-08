local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')


lsp.preset("recommended")

lsp.on_attach(function (client, bufnr)
	lsp.default_keymaps({
		buffer = bufnr,
		preserve_mappings = false
	})
end)

lspconfig.clangd.setup {}
lspconfig.csharp_ls.setup {}
lspconfig.cssls.setup {}
lspconfig.dockerls.setup {}
lspconfig.eslint.setup {}
lspconfig.gopls.setup {}
lspconfig.helm_ls.setup {}
lspconfig.html.setup {}
lspconfig.htmx.setup {}
lspconfig.java_language_server.setup {}
lspconfig.jsonls.setup {}
lspconfig.kotlin_language_server.setup {}
lspconfig.lua_ls.setup {}
lspconfig.postgres_lsp.setup {}
lspconfig.pylsp.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.tailwindcss.setup {}
lspconfig.terraformls.setup {}
lspconfig.tsserver.setup {}
lspconfig.vuels.setup {}
lspconfig.yamlls.setup {}

lsp.setup()
