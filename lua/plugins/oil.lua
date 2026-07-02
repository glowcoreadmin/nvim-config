return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    view_options = { show_hidden = true },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = false,
    keymaps = {
      ["p"] = "actions.preview",
      ["<CR>"] = "actions.select",
      ["q"] = "actions.close",
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  }
}
