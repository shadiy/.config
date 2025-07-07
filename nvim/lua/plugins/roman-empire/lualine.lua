-- lua/plugins/roman-empire/lualine.lua

return {
  normal = {
    a = { fg = "#1e1a16", bg = "#d4af37", gui = "bold" },  -- gold on black
    b = { fg = "#e8e0d4", bg = "#2c261f" },                -- marble on dark bg
    c = { fg = "#e8e0d4", bg = "#1e1a16" },                -- marble on obsidian
  },
  insert = {
    a = { fg = "#1e1a16", bg = "#8b0000", gui = "bold" },  -- red
    b = { fg = "#e8e0d4", bg = "#2c261f" },
    c = { fg = "#e8e0d4", bg = "#1e1a16" },
  },
  visual = {
    a = { fg = "#1e1a16", bg = "#cd7f32", gui = "bold" },  -- bronze
    b = { fg = "#e8e0d4", bg = "#2c261f" },
    c = { fg = "#e8e0d4", bg = "#1e1a16" },
  },
  replace = {
    a = { fg = "#1e1a16", bg = "#7e2811", gui = "bold" },  -- deep roman red
    b = { fg = "#e8e0d4", bg = "#2c261f" },
    c = { fg = "#e8e0d4", bg = "#1e1a16" },
  },
  command = {
    a = { fg = "#1e1a16", bg = "#5c5c5c", gui = "bold" },  -- gray
    b = { fg = "#e8e0d4", bg = "#2c261f" },
    c = { fg = "#e8e0d4", bg = "#1e1a16" },
  },
  inactive = {
    a = { fg = "#e8e0d4", bg = "#1e1a16" },
    b = { fg = "#e8e0d4", bg = "#1e1a16" },
    c = { fg = "#e8e0d4", bg = "#1e1a16" },
  },
}

