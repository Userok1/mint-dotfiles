vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

vim.lsp.enable({ "lua_ls", "pyright", "ruff", "gh-actions-language-server", "bsl-language-server"})
-- Эта штука позволяет избавиться от предупреждений vim
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
})

vim.lsp.config('pyright', {
	settings = {
		pyright = {
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				typeCheckingMode = "off",
				ignore = { "*" },
			},
		},
	},
})

vim.lsp.config('gh-actions-language-server', {})
vim.lsp.config('bsl-language-server', {})
