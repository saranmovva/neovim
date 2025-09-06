require("mason").setup()
require("mason-lspconfig").setup {
  automatic_installation = true,
	ensure_installed = {
		-- LSPs
		"cssls",
		"csharp_ls",
		"lua_ls",
		"tailwindcss",
		"ts_ls"
	}
}

local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.cssls.setup { capabilities = lsp_capabilities }
lspconfig.csharp_ls.setup { capabilities = lsp_capabilities }
lspconfig.lua_ls.setup { 
		capabilities = lsp_capabilities, 
		settings = {
				Lua = {
						diagnostics = {
								globals = { 'vim', 'use', 'lazy' },
						},
				},
		},
}
lspconfig.ts_ls.setup { capabilities = lsp_capabilities }
lspconfig.tailwindcss.setup { capabilities = lsp_capabilities }

--[[
require('mason-null-ls').setup {
	ensure_installed = {
		"clang-format",
		"csharpier",
		"fixjson",
		"htmlbeautifier",
		"prettierd",
		"rustywind",
	}
}
]]--

