require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
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
