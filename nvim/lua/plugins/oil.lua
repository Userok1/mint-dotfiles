vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })

require("oil").setup({
	view_options = {
		show_hidden = true,
		scratch_buffer = true,
		limit_scratch_buffer = true,
	},
	keymaps = {
		["<C-s>"] = false,
		["<C-h>"] = false,
	}
})
vim.keymap.set('n', '<leader>e', ":Oil<CR>")
