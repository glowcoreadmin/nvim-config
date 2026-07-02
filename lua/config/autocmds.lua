vim.api.nvim_create_autocmd("VimEnter", {
  callback = function(data)
    local dir = data.file
    if dir ~= "" and vim.fn.isdirectory(dir) == 1 then
      vim.schedule(function()
        require("oil").open(dir)
      end)
    end
  end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    if vim.bo.buftype == "" then
--      vim.opt.relativenumber = false
    end
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    if vim.bo.buftype == "" then
 --     vim.opt.relativenumber = true
    end
  end,
})

vim.o.updatetime = 250

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
