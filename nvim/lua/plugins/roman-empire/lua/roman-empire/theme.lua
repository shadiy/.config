-- lua/roman-empire/theme.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "roman_empire"

local set = vim.api.nvim_set_hl

local colors = {
  bg       = "#1e1a16",
  fg       = "#e8e0d4",
  red      = "#c23434",
  gold     = "#d4af37",
  bronze   = "#cd7f32",
  gray     = "#5c5c5c",
  accent   = "#987dd4",
  cursor   = "#d4af37",
}

set(0, "Normal",        { fg = colors.fg, bg = colors.bg })
set(0, "Cursor",        { fg = colors.bg, bg = colors.cursor })
set(0, "Visual",        { bg = colors.accent })
set(0, "LineNr",        { fg = colors.gray })
set(0, "CursorLineNr",  { fg = colors.gold, bold = true })
set(0, "StatusLine",    { fg = colors.fg, bg = colors.bronze })
set(0, "VertSplit",     { fg = colors.gray })

set(0, "Comment",       { fg = colors.gray, italic = true })
set(0, "Constant",      { fg = colors.gold })
set(0, "String",        { fg = colors.bronze })
set(0, "Identifier",    { fg = colors.fg })
set(0, "Function",      { fg = colors.gold, bold = true })
set(0, "Statement",     { fg = colors.red })
set(0, "Keyword",       { fg = colors.accent, bold = true })
set(0, "Type",          { fg = colors.gold })
set(0, "Number",        { fg = colors.bronze })
set(0, "Boolean",       { fg = colors.red })
set(0, "Operator",      { fg = colors.gold })

set(0, "Pmenu",         { fg = colors.fg, bg = "#2c261f" })
set(0, "PmenuSel",      { bg = colors.accent, fg = colors.fg })
set(0, "Search",        { bg = colors.gold, fg = colors.bg })
set(0, "IncSearch",     { bg = colors.red, fg = colors.bg })
set(0, "MatchParen",    { fg = colors.gold, bold = true })

set(0, "DiagnosticError", { fg = colors.red })
set(0, "DiagnosticWarn",  { fg = colors.gold })
set(0, "DiagnosticInfo",  { fg = colors.fg })
set(0, "DiagnosticHint",  { fg = colors.gray })
