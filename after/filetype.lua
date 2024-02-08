-- 2 space Indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "typescriptreact",
    "json",
    "yaml",
    "lua"
  },
  command = "setlocal shiftwidth=2 tabstop=2 expandtab"
})
-- Tab indententation
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "go",
  },
  command = "setlocal shiftwidth=4 tabstop=4 noexpandtab"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "markdown",
  },
  callback = function()
    local opts = {noremap = true, silent = true, buffer = true}
    vim.keymap.set('n', 'j', 'gj', opts)
    vim.keymap.set('n', 'k', 'gk', opts)
    vim.keymap.set('v', 'j', 'gj', opts)
    vim.keymap.set('v', 'k', 'gk', opts)
    vim.keymap.set('o', 'j', 'gj', opts)
    vim.keymap.set('o', 'k', 'gk', opts)
    vim.cmd("setlocal spell spelllang=en_us")
  end
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "Dockerfile*",
  command = "set syntax=dockerfile"
})


-- This is a workaround for an issue in nvim-treesitter
-- Indentation of jsdoc comments is broken
function _G.javascript_indent()
  local line = vim.fn.getline(vim.v.lnum)
  local prev_line = vim.fn.getline(vim.v.lnum - 1)
  if line:match('^%s*[%*/]%s*') then
    if prev_line:match('^%s*%*%s*') then
      return vim.fn.indent(vim.v.lnum - 1)
    end
    if prev_line:match('^%s*/%*%*%s*$') then
      return vim.fn.indent(vim.v.lnum - 1) + 1
    end
  end

  return vim.fn['GetJavascriptIndent']()
end

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "javascript" },
  command = "setlocal indentexpr=v:lua.javascript_indent()"
})

local readme_group = vim.api.nvim_create_augroup("ReadmeKeymap", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "README.md",
  group = readme_group,
  callback = function()
    -- Set the keymap for README.md files in visual mode
    vim.keymap.set('v', '<CR>', 'y:exe "!" .. @"<CR>', { buffer = true, desc = "Execute selection in shell" })
  end,
})
