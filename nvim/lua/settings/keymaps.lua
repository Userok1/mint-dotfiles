-- Format
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
-- Это говно убирает выделение всех вхождений слова
vim.keymap.set({ 'n', 'v', 'x' }, '<Esc>', ':noh<CR>')
-- Copy and paste configuration
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
-- vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')
vim.keymap.set({'n', 'v', 'x'}, '<leader><Tab>', ':e #<CR>')

-- Flash.nvim keymaps
vim.keymap.set({'n', 'x', 'o'}, 's', function ()
	require('flash').jump()
end)
vim.keymap.set({'n', 'x', 'o'}, 'S', function ()
	require('flash').treesitter()
end)

-- Go to definition keymap
-- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true, silent = true})
-- Open config keymap
vim.keymap.set('n', '<leader>c', '<Cmd>:e ~/.config/nvim/init.lua<CR>')
