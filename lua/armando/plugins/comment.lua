return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- 1. Setup obbligatorio per la dipendenza (nuovo metodo)
    require('ts_context_commentstring').setup {
      enable_autocmd = false,
    }

    local comment = require("Comment")
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- 2. Setup di Comment.nvim
    comment.setup({
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}
