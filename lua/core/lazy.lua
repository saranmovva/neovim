require("lazy").setup {

	{
		'nvim-telescope/telescope.nvim', version = '0.1.5',
		-- or                            , branch = '0.1.x',
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},

	{ "catppuccin/nvim",                 name = "catppuccin" },

	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

	'nvim-treesitter/playground',

	'mbbill/undotree',

	"nvim-lua/plenary.nvim",

	'nvim-tree/nvim-web-devicons',

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim" -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	},

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
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	}
}
