-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "<leader>dd", function()
    vim.diagnostic.open_float()
end)

keymap.set(
    "n",
    "<C-d>",
    "<C-d>zz",
    { desc = "Center cursor after moving down half-page" }
)

keymap.set(
    "n",
    "<C-u>",
    "<C-u>zz",
    { desc = "Center cursor after moving up half-page" }
)

keymap.set(
    "n",
    "<C-b>",
    "<C-b>zz",
    { desc = "Center cursor after moving up a page" }
)

keymap.set(
    "n",
    "<C-b>",
    "<C-b>zz",
    { desc = "Center cursor after moving up a full page" }
)

keymap.set(
    "n",
    "<C-f>",
    "<C-f>zz",
    { desc = "Center cursor after moving forward a full page" }
)
