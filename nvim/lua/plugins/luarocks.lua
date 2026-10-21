vim.pack.add({"https://github.com/vhyrro/luarocks.nvim"})
require("luarocks-nvim").setup({
	priority = 10000,
	rocks = {"luautf8"}
})
