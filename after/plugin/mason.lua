require("mason").setup()
require("mason-lspconfig").setup {
  automatic_installation = true,
	ensure_installed = {
		-- LSPs
		"cssls",
		"csharp_ls",
		"lua_ls",
		"tailwindcss",
		"ts_ls",
		"gopls"
	}
}

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- CSS
vim.lsp.config('cssls', { capabilities = lsp_capabilities })
vim.lsp.enable('cssls')

-- C#
vim.lsp.config('csharp_ls', { capabilities = lsp_capabilities })
vim.lsp.enable('csharp_ls')

-- Lua
vim.lsp.config('lua_ls', {
    capabilities = lsp_capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'use', 'lazy' },
            },
        },
    },
})
vim.lsp.enable('lua_ls')

-- TypeScript / JavaScript
vim.lsp.config('ts_ls', { capabilities = lsp_capabilities })
vim.lsp.enable('ts_ls')

-- TailwindCSS
vim.lsp.config('tailwindcss', { capabilities = lsp_capabilities })
vim.lsp.enable('tailwindcss')

-- Go
vim.lsp.config('gopls', { capabilities = lsp_capabilities })
vim.lsp.enable('gopls')

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

