require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "E", "$", { noremap = true, silent = true })
vim.keymap.set("n", "B", "^", { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "E", "$", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "B", "^", { noremap = true, silent = true })

-- Lazygit
map("n", "<leader>gg", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
  lazygit:toggle()
end, { desc = "Lazygit (float)" })

--Lazygit Keybind
vim.api.nvim_create_user_command("Lazygit", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
  lazygit:toggle()
end, {})
