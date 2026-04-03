local plugins = {
  -- nvim-surround
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("nvim-surround").setup(opts)
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    opts = {},
    config = function()
      require("gruvbox").setup({})
      -- vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "catppuccin/nvim",
    -- priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
  -- {
  --   "folke/neodev.nvim",
  --   opts = {},
  -- },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = {},
    ---@diagnostic enable: missing-fields
    config = function(_, opts)
      require("fzf-lua").setup(opts)
    end,
  },
  -- Disabling flash
  {
    "folke/flash.nvim",
    enabled = false,
  },
  -- Plugin for differing parameter from variable
  -- Нужно для того, чтобы использованный параметр
  -- имел такой же цвет, как сам параметр в объявлении функции
  {
    "m-demare/hlargs.nvim",
    config = function()
      require("hlargs").setup({ color = "#db730f" })
    end,
  },
}

return plugins
