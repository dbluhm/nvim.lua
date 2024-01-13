require("aerial").setup()
vim.keymap.set("n", "<leader>o", vim.cmd.AerialToggle, {desc = "Open symbols"})
