return {
  -- Disable flash nvim
  { "folke/flash.nvim", enabled = false },
  -- Disable snacks.nvim explorer
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
    -- opts = {
    --   explorer = {
    --     enabled = false,
    --   },
    -- },
  },
}
