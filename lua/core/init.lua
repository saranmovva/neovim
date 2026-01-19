vim.o.tabstop = 2
vim.o.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "auto:2"

vim.diagnostic.config({
  float = {
			source = "always",
			border = border
  }
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"

vim.o.foldlevel = 99
vim.o.foldlevelstart = 99

-- Enable folding
vim.o.foldenable = true

-- Customize fold text display (optional)
vim.o.foldtext = ""

require("core.lazy")
require("core.remap")

vim.cmd[[colorscheme tokyonight-night]]
