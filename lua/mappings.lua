require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  close_on_exit = true,
})


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>tt", vim.diagnostic.setloclist, {
  desc = "Show diagnostics",
})


vim.keymap.set("n", "<leader>gg", function()
  lazygit:toggle()
end, {
  desc = "Lazygit",
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
