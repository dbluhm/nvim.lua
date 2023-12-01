local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      local opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = 'rounded',
        source = 'always',
        prefix = ' ',
        scope = 'cursor',
      }
      vim.diagnostic.open_float(nil, opts)
    end
  })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    pyright = require('dbluhm.lsp.pyright').setup
  },
})

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})
