require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {
		-- LSPs
		"clangd",
		"cssls",
		"eslint",
		"jsonls",
		"lua_ls",
		"tailwindcss",
		"tsserver",
		"lua_ls",
	}
}

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
