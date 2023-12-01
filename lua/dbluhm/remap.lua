vim.g.mapleader = "\\"

local map = vim.keymap.set

local silent = { silent = false, noremap = true }

-- Window movement
map('n', '<c-h>', '<c-w>h', silent)
map('n', '<c-j>', '<c-w>j', silent)
map('n', '<c-k>', '<c-w>k', silent)
map('n', '<c-l>', '<c-w>l', silent)
