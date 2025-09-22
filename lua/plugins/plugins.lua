return {
  { "akinsho/toggleterm.nvim", version = "*", opts = {
    direction = "float",
  } },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      win = { wo = {
        winblend = 30,
      } },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:visimp/mason-registry", -- for ltex_plus
      },
    },
  },
  -- require("mason").setup(),
  -- require("mason-lspconfig").setup(),

  settings = {
    ltex = {
      language = "en-GB",
    },
  },
}
