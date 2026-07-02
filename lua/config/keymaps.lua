-- Better search navigation
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- vim.keymap.set("n", "<leader>r", function()
--   for name,_ in pairs(package.loaded) do
--     if name:match("^user") then
--       package.loaded[name] = nil
--     end
--   end
--   dofile(vim.env.MYVIMRC)
--   print("Config reloaded!")
-- end)
