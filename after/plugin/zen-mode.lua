require('zen-mode').setup({
  plugins = {
    alacritty = { enabled = true, font = "12" },
  }
})

vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, {desc = "Toggle zen mode"})
vim.keymap.set("n", "<leader>t", vim.cmd.Twilight, {desc = "Toggle twilight"})
