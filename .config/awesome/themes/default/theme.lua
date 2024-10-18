local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local themes_path = "/home/alberto/.config/awesome/themes/"

local theme = {}

theme.font = "MesloLGS NF 10"

theme.bg_normal = "#101010"
theme.bg_focus = "#303030"
theme.bg_urgent = "#ff0000"
theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#aaaaaa"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.useless_gap = dpi(5)
theme.border_width = dpi(3)
theme.border_normal = "#202020"
theme.border_focus = "#535d6c"
theme.border_marked = "#91231c"

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(25)
theme.menu_width = dpi(300)

theme.wallpaper = "default/background.png"

theme.layout_floating = themes_path .. "default/layouts/floating.png"
theme.layout_max = themes_path .. "default/layouts/max.png"
theme.layout_tile = themes_path .. "default/layouts/tiled.png"
theme.layout_spiral = themes_path .. "default/layouts/spiral.png"
-- Generate Awesome icon:
theme.awesome_icon = "/home/alberto/.config/awesome/themes/default/awesome.png"

theme.icon_theme = "Papirus-Dark"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
