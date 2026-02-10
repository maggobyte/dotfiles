return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    config = function()
      local nvlsp = require("nvchad.configs.lspconfig")

      vim.g.rustaceanvim = {
        server = {
          on_attach = function(client, bufnr)
            nvlsp.on_attach(client, bufnr)

            pcall(function()
              vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
            end)
          end,
          capabilities = nvlsp.capabilities,
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              checkOnSave = { command = "clippy" },
              procMacro = { enable = true },
            },
          },
        },
      }
    end,
  },
}

