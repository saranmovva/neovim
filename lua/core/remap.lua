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

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>f', '<Cmd>Telescope<CR>', { noremap = true })

-- Lsp Remaps
vim.api.nvim_set_keymap('n', '<F12>', ':lua vim.lsp.buf.definition() <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F11>', ':lua vim.lsp.buf.references() <CR>', { noremap = true })


-- Barbar Remaps
vim.api.nvim_set_keymap('n', '<A-h>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', { noremap = true, silent = true })

-- Aerial Remap
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-- Trouble
vim.keymap.set("n", "<leader>t", "<cmd>Trouble diagnostics toggle<cr>")

-- Claude Code
vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' })

-- Avante

