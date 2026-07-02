return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    lazy = false, -- load during startup (fine for treesitter)
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      -- add languages you care about:
      ensure_installed = { "lua", "vim", "vimdoc", "bash", "javascript", "typescript", "tsx", "json", "yaml" },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
