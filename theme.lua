theme = {}
theme.wallpaper_cmd = { " " }

theme.font          = "Visitor TT1 BRK 8"
theme.wallpaper     = "/home/apercu/Images/nyblue.jpg"

--Custom
themedir            = "~/.config/awesome/themes"

--Colors
theme.fg_normal = "#808080"
theme.fg_focus  = "#286f8a"
theme.fg_urgent = "#000000"
theme.fg_minimize = "#ffffff"

theme.bg_normal = "#202020"
theme.bg_focus  = "#0f0f0f"
theme.bg_urgent = "#ffc0c0"

theme.border_width  = 0
theme.border_normal = "#121212"
theme.border_focus  = theme.fg_focus
theme.border_marked = "#000000"

theme.titlebar_fg_normal = "#808080"
theme.titlebar_fg_focus = "#ffffff"
theme.titlebar_bg_normal = "#363636ff"
theme.titlebar_bg_focus = "#000000ff"
theme.titlebar_font = theme.font

theme.menu_bg_normal = "#101010ff"
theme.menu_bg_focus  = "#000000ff"
theme.menu_fg_normal = theme.fg_normal
theme.menu_fg_focus  = theme.fg_focus

-- Taglists
theme.taglist_bg_focus = theme.fg_focus
theme.taglist_fg_focus = theme.bg_normal
theme.taglist_squares_sel   = themedir .."/taglist/squarefz.png"
theme.taglist_squares_unsel = themedir .."/taglist/squarez.png"
theme.taglist_squares_resize = "false"

-- Menu
theme.menu_border_width = 0
theme.menu_height = 15
theme.menu_width  = 150
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"

-- Images
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"


--Layout Icons 
theme.layout_fairv      = themedir .."/layouts/fairv.png"
theme.layout_fairh      = themedir .."/layouts/fairh.png"
theme.layout_floating   = themedir .."/layouts/floating.png"
theme.layout_magnifier  = themedir .."/layouts/magnifier.png"
theme.layout_max        = themedir .."/layouts/max.png"
theme.layout_fullscreen = themedir .."/layouts/fullscreen.png"
theme.layout_tilebottom = themedir .."/layouts/tilebottom.png"
theme.layout_tileleft   = themedir .."/layouts/tileleft.png"
theme.layout_tile       = themedir .."/layouts/tile.png"
theme.layout_tiletop    = themedir .."/layouts/tiletop.png"
theme.layout_spiral     = themedir .."/layouts/spiral.png"
theme.layout_dwindle    = themedir .."/layouts/dwindle.png"

theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
