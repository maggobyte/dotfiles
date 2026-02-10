-- load defaults i.e lua_ls

local nvlsp = require "nvchad.configs.lspconfig"

-- servers with default config
local servers = { "html", "cssls" }

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })

  vim.lsp.enable(server)
end


-- clangd
vim.lsp.config("clangd", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--compile-commands-dir=.",
  },
})

vim.lsp.enable("clangd")

vim.api.nvim_set_hl(0, "LspInlayHint", {
  fg = "#7f849c",
  bg = "NONE",
  italic = true,
})
