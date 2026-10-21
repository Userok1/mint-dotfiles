vim.pack.add({ "https://github.com/romgrk/barbar.nvim" })
require('barbar').setup({
	animation = false,
})
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
