return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    cmd = "Neotree",

    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle reveal left<cr>",
        desc = "Toggle file explorer",
      },
      {
        "<leader>E",
        "<cmd>Neotree reveal left<cr>",
        desc = "Reveal current file",
      },
    },

    opts = {
      close_if_last_window = true,

      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },

        use_libuv_file_watcher = true,

        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },

      window = {
        position = "left",
        width = 35,
      },
    },
  },
}
