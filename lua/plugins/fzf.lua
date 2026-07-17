return {
    "ibhagwan/fzf-lua",
    opts = {
        files = {
            previewer = false
        }
    },
    keys = {
        { "<leader>ff", function() require("fzf-lua").files() end, desc = "Files" },
        { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Live Grep" },
        { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "Buffers" },
        { "<leader>fr", function() require("fzf-lua").oldfiles() end, desc = "Recent Files" },
        { "<leader>fs", function() require("fzf-lua").lsp_document_symbols() end, desc = "Find document symbols" },
        { "gR", function() require("fzf-lua").lsp_references() end, desc = "Go to references" },
    },
}
