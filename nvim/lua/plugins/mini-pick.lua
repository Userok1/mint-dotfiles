vim.pack.add({ 'https://github.com/nvim-mini/mini.pick' })

require('mini.pick').setup({
	mappings = {choose_marked = '<M-S-CR>'}
})
vim.keymap.set('n', '<leader>f', "<Cmd>:Pick files<CR>")
vim.keymap.set('n', '<leader>h', "<Cmd>:Pick help<CR>")
vim.keymap.set('n', '<leader>/', "<Cmd>:Pick grep_live<CR>")
