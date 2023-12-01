-- To determine what group something is, use the :Inspect command while hovering over it.
-- You can then create a custome highlight in the Colors function below.

local colors = {
  base00 = "#1d1f21", -- bg
  base01 = "#282a2e", -- bg lighter
  base02 = "#373b41", -- bg ligter still
  base03 = "#969896", -- gray
  base04 = "#b4b7b4", -- gray lighter
  base05 = "#c5c8c6", -- fg
  base06 = "#e0e0e0", -- fg lighter
  base07 = "#ffffff", -- fg bright
  base08 = "#cc6666", -- red
  base09 = "#de935f", -- orange
  base0A = "#f0c674", -- yellow
  base10 = "#f0c674", -- yellow
  base0B = "#b5bd68", -- green
  base11 = "#b5bd68", -- green
  base0C = "#8abeb7", -- cyan
  base12 = "#8abeb7", -- cyan
  base0D = "#81a2be", -- blue
  base13 = "#81a2be", -- blue
  base0E = "#b294bb", -- purple
  base14 = "#b294bb", -- purple
  base0F = "#a3685a", -- brown
  base15 = "#a3685a", -- brown
}

local hl = vim.api.nvim_set_hl
function Colors()
  vim.cmd.colorscheme("base16-tomorrow-night")
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
  hl(0, "@attribute", {fg = colors.base14, italic=true})
  hl(0, "@keyword", {fg = colors.base14, italic=true})

  local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    local num = "DiagnosticLineNr" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, linehl = nil, numhl = num })
  end
end

Colors()
