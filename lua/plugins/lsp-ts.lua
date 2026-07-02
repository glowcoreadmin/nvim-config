return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }

          vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, {
            buffer = ev.buf,
            silent = true,
            desc = "LSP definitions",
          })

          vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {
            buffer = ev.buf,
            silent = true,
            desc = "LSP references",
          })

          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
        single_file_support = false,
        init_options = {
          hostInfo = "neovim",
          preferences = {
            disableSuggestions = false,
          },
        },
      })

      vim.lsp.enable("ts_ls")
    end,
  },
}
