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
            -- variable = "#d9d2d2",
            comment = "#a3a3a3",
            type = "#b583fa",
            builtin2 = "#0082d1",
          },
        },
      }
      local groups = {
        all = {
          -- Переменные
          ["@variable.python"] = { fg = "#d9d2d2" },
          -- ["@variable.member.python"] = { fg = "#b583fa" },
          ["@keyword.control"] = { fg = "#f06868" }, -- для try/except
          ["@keyword.exception"] = { fg = "#f06868" }, -- для raise
          ["@keyword.return"] = { fg = "#f06868" },
          -- Конструктор
          ["@constructor"] = { fg = "#15bc5c" },
          ["@variable.parameter"] = { fg = "#db730f" },
          ["@odp.keyword.class"] = { fg = "#f06868" },
          -- Импортированные модули (функции, классы, переменные и тд)
          ["@odp.import_module"] = { fg = "#b583fa" },
          ["@odb.function.builtin.python"] = { fg = "#b583fa" },
          -- Вызов методов
          ["@function.method.call"] = { fg = "#b583fa" },
          -- Вызов функций
          ["@function.call"] = { fg = "#b583fa" },
          -- Функция
          ["@function.python"] = { fg = "#b583fa" },
          -- Встроенные типы (например: func(param: *dict*))
          ["@type.builtin.python"] = { fg = "#b583fa" },
          -- Типы (классы)
          ["@type.python"] = { fg = "#15bc5c" },
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
