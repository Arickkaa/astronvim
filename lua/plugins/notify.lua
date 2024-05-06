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
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static",
      timeout = 1500,
      max_height = function() return math.floor(vim.o.lines * 0.5) end,
      max_width = function() return math.floor(vim.o.columns * 0.5) end,
      on_open = function(win) vim.api.nvim_win_set_config(win, { zindex = 100 }) end,
    },
  },
}
