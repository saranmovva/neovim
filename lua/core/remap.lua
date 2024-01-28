vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_set_keymap(
	"n",
	"<leader>e",
	":Neotree <CR>",
	{ noremap = true }
)

vim.api.nvim_set_keymap(
	"n",
	"<s-F>",
	":lua vim.lsp.buf.format() <CR>",
	{ noremap = true }
)

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<C-Enter>'] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4)
	})
})
