return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "json",
      "markdown",
      "markdown_inline",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
