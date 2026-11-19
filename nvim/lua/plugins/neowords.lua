vim.pack.add{"https://github.com/backdround/neowords.nvim"}

local neowords = require("neowords")
local presets = neowords.pattern_presets

local hops = neowords.get_word_hops(
	-- Vim-patterns or pattern presets separated by commas.
	-- Check `:magic` and onwards for patterns overview.
	"\\v[[:lower:]]+",
	presets.number,
	presets.math_number,
	presets.snake_case,
	presets.camel_case,
	presets.upper_case,
	presets.hex_color
)

vim.keymap.set({ "n", "x", "o" }, "w", hops.forward_start)
vim.keymap.set({ "n", "x", "o" }, "e", hops.forward_end)
vim.keymap.set({ "n", "x", "o" }, "b", hops.backward_start)
vim.keymap.set({ "n", "x", "o" }, "ge", hops.backward_end)
