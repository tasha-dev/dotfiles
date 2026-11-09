-- Hackerman theme for NvChad (base46)
-- Palette from the Omarchy "Hackerman" theme: https://omarchytheme.com/themes/hackerman/
-- Install to: ~/.config/nvim/lua/themes/hackerman.lua

local M = {}

M.base_30 = {
  white = "#ddf7ff",
  darker_black = "#080912",
  black = "#0B0C16", -- background
  black2 = "#11121e",
  one_bg = "#161826",
  one_bg2 = "#1c1f30",
  one_bg3 = "#232740",
  grey = "#2d3450", -- color8
  grey_fg = "#3a4363",
  grey_fg2 = "#465075",
  light_grey = "#566086",
  red = "#ff5c7a", -- Hackerman has no red, added for diagnostics
  baby_pink = "#ff8aa0",
  pink = "#ff7ab2",
  line = "#1a1d2e",          -- border lines
  green = "#50f872",         -- color1
  vibrant_green = "#85ff9d", -- color9
  nord_blue = "#829dd4",     -- color4
  blue = "#86a7df",          -- color5
  seablue = "#7cf8f7",       -- color6
  yellow = "#f7e07c",
  sun = "#ffe9a0",
  purple = "#b39df3",
  dark_purple = "#9a85e0",
  teal = "#50f7d4", -- color3
  orange = "#ffb86c",
  cyan = "#a4ffec", -- color11
  statusline_bg = "#0f101c",
  lightbg = "#1a1d2e",
  pmenu_bg = "#82FB9C", -- accent
  folder_bg = "#829dd4",
}

M.base_16 = {
  base00 = "#0B0C16", -- background
  base01 = "#131522", -- lighter background (status bars, line numbers)
  base02 = "#1f253a", -- selection background
  base03 = "#4b5578", -- comments
  base04 = "#829dd4", -- dark foreground (status bars)
  base05 = "#ddf7ff", -- foreground
  base06 = "#cddbf4", -- light foreground
  base07 = "#ddf7ff", -- lightest foreground
  base08 = "#a4ffec", -- variables, tags
  base09 = "#50f7d4", -- numbers, constants
  base0A = "#c4d2ed", -- types, classes
  base0B = "#82FB9C", -- strings (accent)
  base0C = "#7cf8f7", -- regex, escapes, support
  base0D = "#829dd4", -- functions, methods
  base0E = "#50f872", -- keywords
  base0F = "#cddbf4", -- deprecated, embedded
}

M.polish_hl = {
  defaults = {
    Comment = { fg = "#4b5578", italic = true },
  },

  treesitter = {
    ["@variable"] = { fg = "#ddf7ff" },
    ["@variable.builtin"] = { fg = "#9cf7c2" },
    ["@keyword"] = { fg = "#50f872", italic = true },
    ["@function"] = { fg = "#829dd4" },
    ["@string"] = { fg = "#82FB9C" },
    ["@type"] = { fg = "#c4d2ed" },
    ["@punctuation.bracket"] = { fg = "#86a7df" },
  },

  syntax = {
    Operator = { fg = "#7cf8f7" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "hackerman-claude")

return M
