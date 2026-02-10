-- Open nvim-tree on startup if no file or a directory is given
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

-- Universal LSP reference highlighting (all languages, cursor-only)
local group = vim.api.nvim_create_augroup("LspDocumentHighlightUniversal", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
  group = group,
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    -- Only enable if the language server supports it
    if not client.server_capabilities.documentHighlightProvider then
      return
    end

    -- Highlight references when cursor rests on symbol (NORMAL mode)
    vim.api.nvim_create_autocmd("CursorHold", {
      group = group,
      buffer = bufnr,
      callback = function()
        pcall(vim.lsp.buf.document_highlight)
      end,
    })

    -- Clear highlights when cursor moves
    vim.api.nvim_create_autocmd("CursorMoved", {
      group = group,
      buffer = bufnr,
      callback = function()
        pcall(vim.lsp.buf.clear_references)
      end,
    })
  end,
})

