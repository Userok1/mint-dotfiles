vim.pack.add({"https://github.com/monkoose/neocodeium"})
local neocodeium = require("neocodeium")
neocodeium.setup({
	enabled = false
})
vim.keymap.set("i", "<A-f>", neocodeium.accept)
