vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.number = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"

vim.opt.smoothscroll = true
vim.opt.scrolloff = 12

require("config.diagnostics")
require("config.keymaps")
require("config.lazy")
