-- @type LazyPluginSpec
return {
  -- Включаем официальную экстру blink.cmp для LazyVim
  { import = "lazyvim.plugins.extras.coding.blink" },

  -- Здесь можно переопределить настройки, если нужно
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- В этом месте вы можете ИЗМЕНИТЬ стандартные настройки LazyVim
      -- Например, поменять клавиши или источники

      -- Пример: добавить приоритет для lazydev (рекомендуется для Lua)
      table.insert(opts.sources.default, 1, "lazydev")

      -- Пример: изменить пресет клавиш (default, super-tab, enter)
      -- opts.keymap.preset = "super-tab"
    end,
  },
}
