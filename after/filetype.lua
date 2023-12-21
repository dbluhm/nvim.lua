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
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
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

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"javascript", "typescript"},
  command = "setlocal indentexpr=v:lua.javascript_indent()"
})
