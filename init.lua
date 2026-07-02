vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

require("config.lazy")
require("config.autocmds")
require("config.keymaps")
