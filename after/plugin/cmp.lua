local cmp = require('cmp')

cmp.setup({
	window = {
		documentation = cmp.config.window.bordered(),
	},
	sources = {
    { name = 'nvim_lsp' }
  },
	mapping = cmp.mapping.preset.insert({
		-- Navigate through completion items
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),

		-- `Enter` key to confirm completion
		['<Tab>'] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Scroll up and down in the completion documentation
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4)
	})
})
