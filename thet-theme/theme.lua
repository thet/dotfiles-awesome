-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper = "/home/thet/Pictures/Wallpapers/world_sunlight_wallpaper.jpg"

-- theme.wallpaper = "/home/thet/Pictures/1us/n9/14080105.jpg"
-- theme.wallpaper = "/home/thet-data/dotfiles-awesome/thet-theme/backgrounds/14030017.jpg"
-- theme.wallpaper = "~/.config/awesome/thet-theme/backgrounds/bfi.org/2.jpg"

-- theme.wallpaper = "~/.config/awesome/thet-theme/backgrounds/spacefun-wallpaper-widescreen.png"
-- theme.wallpaper = "~/.config/awesome/thet-theme/backgrounds/dan-2ao.jpg"
-- theme.wallpaper = "~/.config/awesome/thet-theme/backgrounds/spacefun-wallpaper-widescreen.svg"
-- }}

-- {{{ Styles
theme.font = 'sans 8'

-- {{{ Colors
theme.fg_normal = "#FFFFFF"
theme.fg_focus  = "#000000"
theme.fg_urgent = "#0000FF"
theme.bg_normal = "#3F3F3F"
theme.bg_focus  = "#00FF00"
theme.bg_urgent = "#FFFF00"
-- }}}

-- {{{ Borders
theme.border_width  = "2"
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#00FF00"
theme.border_marked = "#FFFF00"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#949494"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "15"
theme.menu_width  = "100"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/home/thet/.config/awesome/thet-theme/taglist/squarefz.png"
theme.taglist_squares_unsel = "/home/thet/.config/awesome/thet-theme/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/home/thet/.config/awesome/thet-theme/awesome-icon.png"
theme.menu_submenu_icon      = "/home/thet/.config/awesome/thet-theme/submenu.png"
theme.tasklist_floating_icon = "/home/thet/.config/awesome/thet-theme/layouts/floating.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/home/thet/.config/awesome/thet-theme/layouts/tile.png"
theme.layout_tileleft   = "/home/thet/.config/awesome/thet-theme/layouts/tileleft.png"
theme.layout_tilebottom = "/home/thet/.config/awesome/thet-theme/layouts/tilebottom.png"
theme.layout_tiletop    = "/home/thet/.config/awesome/thet-theme/layouts/tiletop.png"
theme.layout_fairv      = "/home/thet/.config/awesome/thet-theme/layouts/fairv.png"
theme.layout_fairh      = "/home/thet/.config/awesome/thet-theme/layouts/fairh.png"
theme.layout_spiral     = "/home/thet/.config/awesome/thet-theme/layouts/spiral.png"
theme.layout_dwindle    = "/home/thet/.config/awesome/thet-theme/layouts/dwindle.png"
theme.layout_max        = "/home/thet/.config/awesome/thet-theme/layouts/max.png"
theme.layout_fullscreen = "/home/thet/.config/awesome/thet-theme/layouts/fullscreen.png"
theme.layout_magnifier  = "/home/thet/.config/awesome/thet-theme/layouts/magnifier.png"
theme.layout_floating   = "/home/thet/.config/awesome/thet-theme/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/home/thet/.config/awesome/thet-theme/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/home/thet/.config/awesome/thet-theme/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/home/thet/.config/awesome/thet-theme/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/home/thet/.config/awesome/thet-theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/thet/.config/awesome/thet-theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/home/thet/.config/awesome/thet-theme/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/home/thet/.config/awesome/thet-theme/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/home/thet/.config/awesome/thet-theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/thet/.config/awesome/thet-theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/home/thet/.config/awesome/thet-theme/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/home/thet/.config/awesome/thet-theme/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/home/thet/.config/awesome/thet-theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/home/thet/.config/awesome/thet-theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/home/thet/.config/awesome/thet-theme/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/home/thet/.config/awesome/thet-theme/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/home/thet/.config/awesome/thet-theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/thet/.config/awesome/thet-theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/home/thet/.config/awesome/thet-theme/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
