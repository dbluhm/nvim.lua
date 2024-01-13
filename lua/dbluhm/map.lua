vim.g.mapleader = "\\"

local silent = { silent = false, noremap = true }

-- Window movement
vim.keymap.set('n', '<c-h>', '<c-w>h', { noremap = true, desc = "Window left" })
vim.keymap.set('n', '<c-j>', '<c-w>j', { noremap = true, desc = "Window down" })
vim.keymap.set('n', '<c-k>', '<c-w>k', { noremap = true, desc = "Window up" })
vim.keymap.set('n', '<c-l>', '<c-w>l', { noremap = true, desc = "Window right" })

-- Easy yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to clipboard" })
