return {
    "saghen/blink.cmp",
    version = "*",
    opts = {
        completion = {
            menu = {
                auto_show = true,
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
            },
        },
        keymap = {
            preset = "super-tab",
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
    },
}
