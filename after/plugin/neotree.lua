require('neo-tree').setup {
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false
		},
	},
	window = {
		position = "left",
		width = 40
	},
	source_selector = {
		winbar = true,
		statusline = true
	}
}
