require("claude-code").setup({
	-- Terminal window settings
	window = {
		split_ratio = 0.3,
		position = "botright vertical", -- This pins it to the right
		enter_insert = true,
		hide_numbers = true,
		hide_signcolumn = true,
	},

	-- Command settings
	command = "claude",

	-- Keymaps
	keymaps = {
		toggle = {
			normal = "<leader>ct", -- Toggle in normal mode
			terminal = "<C-,>", -- Toggle from terminal
			variants = {
				continue = "<leader>cc", -- Continue last conversation
				verbose = "<leader>cv", -- Verbose mode
			},
		},
		window_navigation = true, -- Enable C-hjkl navigation
		scrolling = true,   -- Enable C-f/C-b scrolling
	},
})
