-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,         -- load during startup
--     priority = 1000,      -- load before most plugins
--     opts = { style = "moon" }, -- LazyVim default style
--     config = function(_, opts)
--       require("tokyonight").setup(opts)
--       vim.cmd.colorscheme("tokyonight")
--     end,
--   },
-- }
--

return {
  "Mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("vscode")
  end
}
