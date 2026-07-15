vim.diagnostic.config({
    underline = true,
    signs = true,
    virtual_text = false,
    severity_sort = true,
})

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

