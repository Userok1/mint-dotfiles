-- Add the site directory to the runtimepath
vim.opt.rtp:prepend("/home/user/.local/share/nvim/site/")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
