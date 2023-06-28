-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local mk = require("which-key")
local Terminal = require("toggleterm.terminal").Terminal

local togole_horizontal = function()
  local horizontal = Terminal:new({ direction = "horizontal" })
  return horizontal:toggle()
end

local mappings = {
  t = {
    t = { ":ToggleTerm<cr>", "Slip ToggleTerm" },
    h = { togole_horizontal, "horizontal terminal" },
  },
}

local opts = {
  prefix = "<leader>",
}

mk.register(mappings, opts)
