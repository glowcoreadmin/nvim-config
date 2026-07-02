return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>ft",
      "<cmd>Neotree toggle filesystem reveal left<cr>",
      desc = "File tree",
    },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
    },
    open_files_do_not_replace_types = {
      "neo-tree",
      "terminal",
      "trouble",
      "qf",
    },
  },
}
