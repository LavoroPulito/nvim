return {
  'chomosuke/typst-preview.nvim',
  -- Usiamo ft = 'typst' così non rallenta l'avvio di Neovim, 
  -- ma si attiva appena apri un file .typ
  ft = 'typst', 
  version = '1.*',
  
  -- CRUCIALE: scarica il server di anteprima al momento dell'installazione/aggiornamento
  build = function()
    require('typst-preview').update()
  end,

  -- Configurazione opzionale
  opts = {
    -- Se vuoi che si apra automaticamente il browser al lancio
    open_cmd = "open -a firefox %s", -- o "firefox %s", "brave %s", ecc.
  },
}
