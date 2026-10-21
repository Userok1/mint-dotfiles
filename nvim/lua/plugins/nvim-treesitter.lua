vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local ts = require("nvim-treesitter")
ts.install('python')
ts.setup({
	lazy = false,
	build = ':TSUpdate',
	install_dir = vim.fn.stdpath('data') .. '/site'
})
