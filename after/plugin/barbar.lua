vim.g.barbar_auto_setup = true -- disable auto-setup

require 'barbar'.setup {
	sidebar_filetypes = {
		['neo-tree'] = { event = 'BufWipeout' },
	},

}
