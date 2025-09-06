
vim.o.tabstop = 2
vim.o.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "auto:2"

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

require("core.lazy")
require("core.remap")

vim.cmd(":Neotree")
--[=[ vim.api.nvim_create_autocmd({"BufRead"}, {
	command = "AerialToggle"
}) --]=]
