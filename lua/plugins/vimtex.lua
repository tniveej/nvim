return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method_general = "SumatraPDF"
    vim.g.vimtex_grammar_textidote = {
      jar = "C:/Users/jeevi/AppData/Local/nvim/textidote.jar",
    }
    vim.g.vimtex_fold_enabled = 1
  end,
}
