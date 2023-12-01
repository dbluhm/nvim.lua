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
