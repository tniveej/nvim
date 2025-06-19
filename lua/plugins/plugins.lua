return {
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:visimp/mason-registry", -- for ltex_plus
      },
    },
  },
  require("mason-lspconfig").setup(),
}
