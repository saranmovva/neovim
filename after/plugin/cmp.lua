local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	window = {
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<Tab>'] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Scroll up and down in the completion documentation
		['<C-Up>'] = cmp.mapping.scroll_docs(-4),
		['<C-Down>'] = cmp.mapping.scroll_docs(4)
	})
})
