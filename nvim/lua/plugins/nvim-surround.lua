vim.pack.add({ {
	src = "https://github.com/kylechui/nvim-surround",
	-- version = vim.version.range("4.x"), -- Use for stability; omit to use `main` branch for the latest features
} })

-- Keybindings:
vim.keymap.set("x", "gS", "<Plug>(nvim-surround-visual)", {
	desc = "Add a surrounding pair around a visual selection",
})
