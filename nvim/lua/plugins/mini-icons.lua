vim.pack.add({ 'https://github.com/nvim-mini/mini.icons' })

require("mini.icons").setup({
	filetype = {
		python = {hl = "MiniIconsYellow"}
	}
})
require("mini.icons").mock_nvim_web_devicons()
