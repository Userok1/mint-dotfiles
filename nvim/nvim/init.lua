-- Add the site directory to the runtimepath
vim.opt.rtp:prepend("/home/user/.local/share/nvim/site/")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-p>", function()
  harpoon:list():prev()
end, { desc = "Harpoon: previous buffer" })
vim.keymap.set("n", "<C-n>", function()
  harpoon:list():next()
end, { desc = "Harpoon: next buffer" })

-- Rainbow delimiters plugin
require("rainbow-delimiters.setup").setup({
  strategy = {
    -- ...
  },
  query = {
    -- ...
  },
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterRed",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterBlue",
    "RainbowDelimiterCyan",
    "RainbowDelimiterOrange",
  },
})
