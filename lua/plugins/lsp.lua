return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "ts_ls" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "saghen/blink.cmp",
        "ibhagwan/fzf-lua",
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)

        local capabilities = require("blink.cmp").get_lsp_capabilities()

        vim.lsp.config("ts_ls", {

            capabilities = capabilities,

            settings = {
                typescript = {
                    preferences = {
                        importModuleSpecifierEnding = "minimal",
                        importModuleSpecifier = "relative",
                    },
                },
                javascript = {
                    preferences = {
                        importModuleSpecifierEnding = "minimal",
                        importModuleSpecifier = "relative",
                    }
                },
            },

            on_attach = function(client, bufnr)
                local map = function(mode, lhs, rhs, desc)
                    vim.keymap.set(mode, lhs, rhs, {
                        buffer = bufnr,
                        desc = "LSP: " .. desc,
                    })
                end

                map("n", "gd", function()
                    require("fzf-lua").lsp_definitions({
                        jump1 = true
                    })
                end, "Go to definition")
                map("n", "gr", vim.lsp.buf.references, "Go to references")
                map("n", "K", vim.lsp.buf.hover, "Hover")
                map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
                map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
            end,

        })

        vim.lsp.enable("ts_ls")
    end,
}
