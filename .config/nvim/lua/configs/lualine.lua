local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local custom_theme = require "lualine.themes.pywal"
custom_theme.normal.a.bg = "#FF0000"
custom_theme.normal.c.bg = "#202020"

lualine.setup {
    options = { theme = custom_theme },
}
