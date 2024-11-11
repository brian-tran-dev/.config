-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.diagnostic")

local opt = vim.o
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.autoindent = true
opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.wrap = false

vim.keymap.set("i", "jj", "<ESC>", { noremap = true })
vim.keymap.set("n", "<BS>", ":noh<Enter>", { noremap = true })
