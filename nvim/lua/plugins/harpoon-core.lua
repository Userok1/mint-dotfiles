vim.pack.add({
    'https://github.com/MeanderingProgrammer/harpoon-core.nvim',
})
require('harpoon-core').setup({})

vim.keymap.set({'n', 'v', 'x', 'o'}, '<leader>a', "<Cmd>lua require('harpoon-core').add_file()<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<C-e>', "<Cmd>:lua require('harpoon-core').toggle_quick_menu()<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<leader>1', "<Cmd>:lua require('harpoon-core').nav_file(1)<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<leader>2', "<Cmd>:lua require('harpoon-core').nav_file(2)<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<leader>3', "<Cmd>:lua require('harpoon-core').nav_file(3)<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<leader>4', "<Cmd>:lua require('harpoon-core').nav_file(4)<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<C-p>', "<Cmd>lua require('harpoon-core').nav_prev()<CR>")
vim.keymap.set({'n', 'v', 'x', 'o'}, '<C-n>', "<Cmd>lua require('harpoon-core').nav_next()<CR>")
