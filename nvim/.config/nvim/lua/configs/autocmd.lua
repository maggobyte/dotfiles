vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local args = vim.fn.argv()
    local is_dir = (#args == 1 and vim.fn.isdirectory(args[1]) == 1)
    local is_empty = (#args == 0)

    if is_dir or is_empty then
      require("nvim-tree.api").tree.open()
    end
  end,
})
