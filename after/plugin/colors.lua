local colors = {
  base00 = "#1d1f21",
  base01 = "#282a2e",
  base02 = "#373b41",
  base03 = "#969896",
  base04 = "#b4b7b4",
  base05 = "#c5c8c6",
  base06 = "#e0e0e0",
  base07 = "#ffffff",
  base08 = "#cc6666",
  base09 = "#de935f",
  base0A = "#f0c674",
  base10 = "#f0c674",
  base0B = "#b5bd68",
  base11 = "#b5bd68",
  base0C = "#8abeb7",
  base12 = "#8abeb7",
  base0D = "#81a2be",
  base13 = "#81a2be",
  base0E = "#b294bb",
  base14 = "#b294bb",
  base0F = "#a3685a",
  base15 = "#a3685a",
}

function Colors()
  vim.cmd.colorscheme("base16-tomorrow-night")
  local hl = vim.api.nvim_set_hl
  vim.cmd('colorscheme base16-tomorrow-night')
  hl(0, "DiagnosticError", {bold = true, fg = colors.base08})
  hl(0, "DiagnosticWarn", {fg = colors.base09})
  hl(0, "DiagnosticInfo", {fg = colors.base13})
  hl(0, "DiagnosticHint", {fg = colors.base10})
  hl(0, "DiagnosticSignError", {bold = true, fg = colors.base08, bg = colors.base01})
  hl(0, "DiagnosticSignWarn", {fg = colors.base09, bg = colors.base01})
  hl(0, "DiagnosticSignInfo", {fg = colors.base13, bg = colors.base01})
  hl(0, "DiagnosticSignHint", {fg = colors.base10, bg = colors.base01})
  hl(0, "DiagnosticLineNrError", {bold = true, fg = colors.base08, bg = colors.base01})
  hl(0, "DiagnosticLineNrWarn", {fg = colors.base09, bg = colors.base01})
  hl(0, "DiagnosticLineNrInfo", {fg = colors.base13, bg = colors.base01})
  hl(0, "DiagnosticLineNrHint", {fg = colors.base10, bg = colors.base01})
  hl(0, "DiagnosticUnderlineError", {undercurl=true, sp=colors.base08})
  hl(0, 'DiagnosticsUnderlineWarning', {undercurl=true, sp = colors.base0A})
  hl(0, 'DiagnosticsUnderlineInformation', {undercurl=true, sp = colors.base0D})
  hl(0, 'DiagnosticsUnderlineHint', {undercurl=true, sp = colors.base05})
  hl(0, "@variable", {fg = colors.base05})
  hl(0, "@attribute", {italic=true})
  hl(0, "@keyword", {fg = colors.base14, italic=true})

  local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    local num = "DiagnosticLineNr" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, linehl = nil, numhl = num })
  end
end

Colors()
