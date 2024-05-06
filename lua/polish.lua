-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- ToggleTerm rust settings
local map = vim.keymap.set

map({ "n", "i" }, "<F12>", "<cmd>w<cr><esc><cmd>exe winheight(0)/2.'split' | term cargo run <CR>i")
map({ "n" }, "T", "<cmd>w<cr><esc><cmd>exe winheight(0)/2.'split' | term cargo test <CR>i")
