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

local function set_old_nvim_theme()
	vim.cmd.colorscheme('unokai')
	-- Настройка barbar
	local function apply_barbar_colors()
		vim.api.nvim_set_hl(0, 'BufferCurrent', { fg = '#ffffff', bg = '#3b4252', bold = true })
		vim.api.nvim_set_hl(0, 'BufferInactive', { fg = '#7a7a7a', bg = '#1e1e1e' })
		vim.api.nvim_set_hl(0, 'BufferVisible', { fg = '#d8dee9', bg = '#2e3440' })
		vim.api.nvim_set_hl(0, 'BufferCurrentMod', { fg = '#d8dee9', bg = '#2e3440' })
		vim.api.nvim_set_hl(0, 'BufferInactiveMod', { fg = '#d8dee9', bg = '#2e3440' })
	end

	-- Запускаю явно, потому что autocmd срабатывает только после запуска
	apply_barbar_colors()

	-- Оставляю autocmd, чтобы настройка применялась после команды colorscheme unokai
	vim.api.nvim_create_autocmd('ColorScheme', {
		pattern = 'unokai',
		callback = apply_barbar_colors,
	})
end
-- vim.cmd.colorscheme('unokai')

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'lua', 'python' },
	callback = function()
		vim.treesitter.start()
	end,
})
-- Выделение при копировании для лучшей видимости
vim.api.nvim_create_autocmd('TextYankPost', {
	pattern = "*",
	callback = function()
		vim.hl.on_yank({ timeout = 170 })
	end,
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
})

-- -- Линия между буферами для лучшей видимости
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffffff", bold = true })
--
-- -- Настройка barbar
-- local function apply_barbar_colors()
--   vim.api.nvim_set_hl(0, 'BufferCurrent', { fg = '#ffffff', bg = '#3b4252', bold = true })
--   vim.api.nvim_set_hl(0, 'BufferInactive', { fg = '#7a7a7a', bg = '#1e1e1e' })
--   vim.api.nvim_set_hl(0, 'BufferVisible', { fg = '#d8dee9', bg = '#2e3440' })
--   vim.api.nvim_set_hl(0, 'BufferCurrentMod', { fg = '#d8dee9', bg = '#2e3440' })
--   vim.api.nvim_set_hl(0, 'BufferInactiveMod', { fg = '#d8dee9', bg = '#2e3440' })
-- end
--
-- -- Запускаю явно, потому что autocmd срабатывает только после запуска
-- apply_barbar_colors()
--
-- -- Оставляю autocmd, чтобы настройка применялась после команды colorscheme unokai
-- vim.api.nvim_create_autocmd('ColorScheme', {
--   pattern = 'unokai',
--   callback = apply_barbar_colors,
-- })

local is_custom_colorscheme = true
if is_custom_colorscheme then
	require("settings.my_colorscheme")
else
	set_old_nvim_theme()
end
