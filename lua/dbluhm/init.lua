require("dbluhm.remap")
require("dbluhm.packer")

local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

g.html_indent_style1 = "inc"
g.htl_css_templates = true

o.autowrite = true
o.background = "dark"
o.termguicolors = true
o.completeopt = "menu,menuone,noselect"
o.updatetime = 250
o.grepprg = "rg --vimgrep"

wo.breakindent = true
wo.colorcolumn = "80,90,100,120"
wo.linebreak = true
wo.spell = false
wo.number = true
wo.signcolumn = "yes"

bo.cindent = true
bo.expandtab = true
bo.eol = false
bo.shiftwidth = 4
bo.tabstop = 4
