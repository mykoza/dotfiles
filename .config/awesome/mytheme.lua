---------------------------
-- Gruvbox awesome theme --
-- mykoza 13.02.2020 v.1 --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
-- local themes_path = gfs.get_themes_dir()
local themes_path = "/usr/share/awesome/themes/"

local theme = {}

local red = "#fb4934" 
local green = "#b8bb26"
local yellow = "#fabd2f"
local orange = "#fe8019"
local blue = "#83a598"
local purple = "#d3869b"
local aqua = "#8ec07c"
local gray = "#a89984"
local fg = "#ebdbb2"
local bg = "#282828"



theme.font          = "monospace 8"

theme.bg_normal     = bg
theme.bg_focus      = green
theme.bg_urgent     = orange
theme.bg_minimize   = gray
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = fg
theme.fg_focus      = bg
theme.fg_urgent     = fg
theme.fg_minimize   = fg

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(1)
theme.border_normal = bg
theme.border_focus  = green
theme.border_marked = red

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Tasklist colors
theme.tasklist_bg_focus = bg
theme.tasklist_fg_focus = green

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."zenburn/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."zenburn/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."zenburn/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."zenburn/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."zenburn/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."zenburn/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."zenburn/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."zenburn/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."zenburn/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."zenburn/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."default/background.png"

-- You can use your own layout icons like this:
-- theme.layout_fairh = themes_path.."zenburn/layouts/fairh.png"
-- theme.layout_fairv = themes_path.."zenburn/layouts/fairv.png"
-- theme.layout_floating  = themes_path.."zenburn/layouts/floating.png"
-- theme.layout_magnifier = themes_path.."zenburn/layouts/magnifier.png"
-- theme.layout_max = themes_path.."zenburn/layouts/max.png"
-- theme.layout_fullscreen = themes_path.."zenburn/layouts/fullscreen.png"
-- theme.layout_tilebottom = themes_path.."zenburn/layouts/tilebottom.png"
-- theme.layout_tileleft   = themes_path.."zenburn/layouts/tileleft.png"
-- theme.layout_tile = themes_path.."zenburn/layouts/tile.png"
-- theme.layout_tiletop = themes_path.."zenburn/layouts/tiletop.png"
-- theme.layout_spiral  = themes_path.."zenburn/layouts/spiral.png"
-- theme.layout_dwindle = themes_path.."zenburn/layouts/dwindle.png"
-- theme.layout_cornernw = themes_path.."zenburn/layouts/cornernw.png"
-- theme.layout_cornerne = themes_path.."zenburn/layouts/cornerne.png"
-- theme.layout_cornersw = themes_path.."zenburn/layouts/cornersw.png"
-- theme.layout_cornerse = themes_path.."zenburn/layouts/cornerse.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
