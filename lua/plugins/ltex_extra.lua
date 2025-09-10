return {
  "barreiroleo/ltex_extra.nvim",
  ft = { "markdown", "tex", "text", "plaintext", "md" },
  dependencies = { "neovim/nvim-lspconfig" },
  -- yes, you can use the opts field, just I'm showing the setup explicitly
  opts = {
    load_langs = { "en_GB", "en_US" },
    path = ".ltex",
  },
  config = function()
    require("ltex_extra").setup({
      server_opts = {
        on_attach = function(client, bufnr)
          client.server_capabilities.codeActionProvider = true
          -- Add keymaps for code actions (example using <leader>ca)
          -- vim.keymap.set("n", "<leader>ca", function()
          --   vim.lsp.buf.code_action()
          -- end, { buffer = bufnr })
        end,
        settings = {
          ltex = {
            checkFrequency = "save",
            enabled = { "markdown", "tex", "text", "plaintext", "md", "latex" },
            language = "en_GB",
          },
        },
      },
    })
  end,
}
