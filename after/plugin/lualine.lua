local colors = {
	blue   = '#00ccff',
	cyan   = '#80ffff',
	black  = '#000000',
	white  = '#ffffff',
	red    = '#ff3300',
	violet = '#b366ff',
	grey   = '#8c8c8c',
	green  = '#00ff00',
}

local pitchBlack = {
	normal = {
		a = { fg = colors.black, bg = colors.green },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.cyan } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.grey, bg = colors.black },
	},
}

require('lualine').setup {
	options = {
		icons_enabled = true,
		--theme = 'onedark'
		theme = pitchBlack,
		component_separators = '|',
		section_separators = { left = '', right = '' },
	}

}
