return {
  require("noice").setup({
    routes = {
      {
        filter = {
          event = "lsp",
          kind = "progress",
          find = "Checking",
        },
        opts = { skip = true },
      },
    },
  }),
}
