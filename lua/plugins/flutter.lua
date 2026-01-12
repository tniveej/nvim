return {
  -- {
  --   "nvim-lua/plenary.nvim",
  --   lazy = true,
  -- },

  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "stevearc/dressing.nvim",
      -- "nvim-lua/planery.nvim",
    },
    config = true,
  },
}
