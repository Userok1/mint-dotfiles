vim.pack.add({ 'https://github.com/saghen/blink.lib', 'https://github.com/saghen/blink.cmp' })
local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
		providers = {
			snippets = {
				opts = {
					friendly_snippets = true
				}
			}
		}
	},
	completion = {
		ghost_text = { enabled = true },
	},
	signature = { enabled = true },
})
