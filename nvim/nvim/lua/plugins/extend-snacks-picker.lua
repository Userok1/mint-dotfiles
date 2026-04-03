return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = { hidden = true }, -- Постоянно показывать скрытые файлы
          explorer = { hidden = true }, -- Постоянно показывать в обозревателе
          grep = { hidden = true }, -- Постоянно показывать при поиске
        },
      },
    },
  },
}
