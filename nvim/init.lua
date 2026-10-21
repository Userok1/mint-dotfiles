vim.o.number = true
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.guicursor = "i:block"
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "rounded"
vim.o.listchars = "tab: ,multispace:|   ,eol:󰌑"
vim.o.clipboard = "unnamedplus"

-- Load plugins
require("plugins.init")
require("settings.keymaps")

vim.cmd(":hi statusline guibg=NONE")
vim.cmd.colorscheme('vague')

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'python' },
  callback = function()
		vim.treesitter.start()
	end,
})
-- Выделение при копировании для лучшей видимости
vim.api.nvim_create_autocmd('TextYankPost', {
	pattern = "*",
	callback = function ()
		vim.hl.hl_op({ timeout = 170})
	end,
	group = vim.api.nvim_create_augroup("YankHighlight", {clear = true})
})

-- Линия между буферами для лучшей видимости
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bold = true })
