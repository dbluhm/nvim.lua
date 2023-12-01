local fzf = require('fzf-lua')
local silent = { silent = false, noremap = true }

fzf.setup({ fzf_bin = 'sk' })
vim.keymap.set('n', '<leader>f', fzf.files, silent)
vim.keymap.set('n', '<leader>g', fzf.git_files, {})
vim.keymap.set('n', '<leader>r', fzf.live_grep, silent)
vim.keymap.set('n', '<leader>b', fzf.buffers, {})
vim.keymap.set('n', '<leader>h', fzf.help_tags, {})
vim.keymap.set('n', '<leader>s', function()
  fzf.grep({search = vim.fn.input("Rg: ")})
end)

vim.api.nvim_create_user_command('Rg', function(opts)
  require('fzf-lua').grep({search = opts.args})
end, {
  nargs = "?",
  desc = "Grep for text in files."
})
