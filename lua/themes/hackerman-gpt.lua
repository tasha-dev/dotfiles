-- Hackerman theme for NvChad / Base46
-- Palette adapted from Omarchy's Hackerman theme.

local M = {}

M.base_30 = {
  white = "#ddf7ff",
  black = "#0B0C16",
  darker_black = "#06060c",
  black2 = "#080910",
  one_bg = "#151828",
  one_bg2 = "#1f253a",
  one_bg3 = "#2d3450",
  grey = "#6a6e95",
  grey_fg = "#8792ad",
  grey_fg2 = "#9aaec5",
  light_grey = "#b5c5db",
  red = "#50f872",
  baby_pink = "#85ff9d",
  pink = "#cddbf4",
  line = "#1f253a",
  green = "#4fe88f",
  vibrant_green = "#9cf7c2",
  nord_blue = "#c4d2ed",
  blue = "#829dd4",
  seablue = "#7cf8f7",
  yellow = "#50f7d4",
  sun = "#a4ffec",
  purple = "#86a7df",
  dark_purple = "#cddbf4",
  teal = "#7cf8f7",
  orange = "#50f7a3",
  cyan = "#7cf8f7",
  statusline_bg = "#080910",
  lightbg = "#151828",
  pmenu_bg = "#82FB9C",
  folder_bg = "#4fe88f",
}

M.base_16 = {
  base00 = "#0B0C16", -- background
  base01 = "#080910", -- darker background
  base02 = "#1f253a", -- selection / raised surface
  base03 = "#2d3450", -- muted text
  base04 = "#6a6e95", -- dim foreground
  base05 = "#ddf7ff", -- foreground
  base06 = "#b5c5db", -- light foreground
  base07 = "#ddf7ff", -- brightest foreground
  base08 = "#50f872", -- color1
  base09 = "#50f7a3", -- orange
  base0A = "#50f7d4", -- yellow
  base0B = "#4fe88f", -- green
  base0C = "#7cf8f7", -- cyan
  base0D = "#829dd4", -- blue
  base0E = "#86a7df", -- magenta
  base0F = "#287b51", -- brown
}

M.polish_hl = {
  defaults = {
    Comment = { fg = M.base_30.grey, italic = true },
    CursorLine = { bg = M.base_30.black2 },
    CursorLineNr = { fg = "#82FB9C", bold = true },
    LineNr = { fg = M.base_30.grey },
    WinSeparator = { fg = M.base_30.line },
    Visual = { bg = M.base_30.one_bg2 },
    Search = { fg = M.base_30.black, bg = "#82FB9C", bold = true },
    IncSearch = { fg = M.base_30.black, bg = M.base_30.yellow, bold = true },
    Pmenu = { bg = M.base_30.black2 },
    PmenuSel = { fg = M.base_30.black, bg = "#82FB9C", bold = true },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "hackerman-gpt")

return M
