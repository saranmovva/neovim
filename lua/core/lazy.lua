require("lazy").setup {

	{
		'nvim-telescope/telescope.nvim',
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},

	{ "catppuccin/nvim",                 name = "catppuccin" },

	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	{ 'nvim-treesitter/playground' },

	{ 'mbbill/undotree' },

	{ "nvim-lua/plenary.nvim" },

	{ 'nvim-tree/nvim-web-devicons' },

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim"      -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},

	-- LSP
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	{
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp'
	},
	--[[
	{
		lazy = false,
		{ 'ms-jpq/coq_nvim', branch = 'coq' },
		{ 'ms-jpq/coq.artifacts', branch = 'artifacts' },
		{ 'ms-jpq/coq.thirdparty', branch = '3p' }
  },
	]] --

	{ 'lewis6991/gitsigns.nvim' },

	{ 'nvmitools/none-ls.nvim' },

	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		}
	},

	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

	{ 'norcalli/nvim-colorizer.lua' },

	{ 'fgheng/winbar.nvim' },

	{ 'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
	},

	{
		'stevearc/aerial.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"
		}
	},

	{
		"xiyaowong/transparent.nvim"
	},

	--Trouble LSP
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},

	-- Claude
	{
		"greggh/claude-code.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim", -- Required for git operations
		}
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	}
}
