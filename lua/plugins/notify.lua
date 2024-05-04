return {
  {
    "folke/noice.nvim",
    opts = {
      -- add any options here
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
      },
      lsp = {
        signature = {
          enabled = false,
        },
        hover = {
          enabled = false,
        },
      },
    },
  },
}
