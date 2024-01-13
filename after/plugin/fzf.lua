local fzf = require('fzf-lua')

fzf.setup({ fzf_bin = 'sk' })
vim.keymap.set('n', '<leader>f', fzf.files, { noremap = true, desc = "Fuzzy match files" })
vim.keymap.set('n', '<leader>g', fzf.git_files, { desc = "Fuzzy match git files" })
vim.keymap.set('n', '<leader>r', fzf.live_grep, { noremap = true, desc = "Live grep" })
vim.keymap.set('n', '<leader>b', fzf.buffers, { desc = "Buffers" })
vim.keymap.set('n', '<leader>h', fzf.help_tags, { desc = "Help" })
vim.keymap.set('n', '<leader>s', function()
  fzf.grep({ search = vim.fn.input("Rg: ") })
end, { desc = "Grep for text" })
vim.keymap.set('n', '<leader>?', fzf.keymaps, {desc = "View key mappings"})

vim.api.nvim_create_user_command('Rg', function(opts)
  require('fzf-lua').grep({ search = opts.args })
end, {
  nargs = "?",
  desc = "Grep for text in files."
})
