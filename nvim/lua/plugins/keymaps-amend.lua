vim.pack.add{"https://github.com/anuvyklack/keymap-amend.nvim"}

local keymap = vim.keymap
keymap.amend = require('keymap-amend')

keymap.amend('n', '<Esc>', function(original)
   if vim.v.hlsearch and vim.v.hlsearch == 1 then
      vim.cmd('nohlsearch')
   end
   original()
end, { desc = 'disable search highlight' })
