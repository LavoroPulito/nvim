return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- Il preset "modern" è quello più simile allo stile di Noice
    preset = "modern",
    win = {
      border = "rounded", -- Bordi arrotondati come i popup di Noice
      -- Nella v3 'position' è gestita diversamente, 
      -- per averlo in basso basta non specificare 'anchor' o usare i default
      no_overlap = true,   -- Evita che il popup copra la riga di comando
      padding = { 1, 2 },  -- Un po' di respiro interno
    },
    -- Se vuoi che appaia più simile a una finestra di Noice
    layout = {
      spacing = 3, -- Spazio tra le colonne
      align = "left",
    }, },
}
