return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Specs configuration
      local specs = {
        github_dark_dimmed = {
          syntax = {
            keyword = "#f06868",
            operator = "#f06868",
            variable = "#d9d2d2",
            func = "#b583fa",
            comment = "#a3a3a3",
            const = "#15bc5c",
            type = "#15bc5c",
            builtin1 = "#15bc5c",
            builtin2 = "#0082d1",
          },
        },
      }
      local groups = {
        all = {
          ["@keyword.control"] = { fg = "#f06868" }, -- для try/except
          ["@keyword.exception"] = { fg = "#f06868" }, -- для raise
          ["@keyword.return"] = { fg = "#f06868" },
          ["@constructor"] = { fg = "#15bc5c" },
          ["@variable.parameter"] = { fg = "#db730f" },
        },
      }
      require("github-theme").setup({
        specs = specs,
        groups = groups,
      })

      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
}
