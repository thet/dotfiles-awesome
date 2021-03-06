--require("windowrules")
--require("grid")
--require("includes/bioe007-awesome-configs/revelation")

local awful = require("awful")
local beautiful = require("beautiful")

browser = 'firefox'

--local gears = require("gears")
-- https://bbs.archlinux.org/viewtopic.php?pid=1325314
-- https://bbs.archlinux.org/viewtopic.php?id=126758
--{{{ Tag Wallpapers
--if beautiful.wallpaper then
--    for s = 1, screen.count() do
--        for t = 1, 9 do
--            tags[s][t]:connect_signal("property::selected", function (tag)
--                if not tag.selected then return end
--                theme.wallpaper = "/home/thet-data/dotfiles-awesome/thet-theme/backgrounds/bfi.org/" .. t .. ".jpg"
--                gears.wallpaper.maximized(beautiful.wallpaper, s, true)
--            end)
--        end
--    end
--end
-- }}}
-- {{{ Wallpaper
--if false and beautiful.wallpaper then
--    for s = 1, screen.count() do
--        if s == 2 then
--            theme.wallpaper = "/home/thet/Pictures/1us/n9/14080105.jpg"
--            -- theme.wallpaper = "/home/thet/Pictures/merken/instance-provides--class-implements.png"
--            -- theme.wallpaper = "/home/thet-data/dotfiles-awesome/thet-theme/backgrounds/14030017.jpg"
--            gears.wallpaper.maximized(beautiful.wallpaper, s, true)
--        else
--            theme.wallpaper = "/home/thet/Pictures/1us/n9/14080105.jpg"
--            -- theme.wallpaper = "/home/thet/Pictures/merken/instance-provides--class-implements.png"
--            -- theme.wallpaper = "/home/thet-data/dotfiles-awesome/thet-theme/backgrounds/14030017.jpg"
--            gears.wallpaper.maximized(beautiful.wallpaper, s, true)
--        end
--    end
--end
--}}}



last_selected_tag = nil
globalkeys = awful.util.table.join(
    globalkeys,
    -- awful.key({modkey}, "e", revelation.revelation),

    -- DON'T - useless and disturbing
    -- un/minimize all clients of a tag
    --awful.key({modkey}, "d",
    --    function()
    --        local curtag = awful.tag.selected()
    --        if curtag then
    --            last_selected_tag = curtag
    --        else
    --            curtag = last_selected_tag or 1
    --        end
    --        awful.tag.viewtoggle(curtag)
    --    end
    --),

    -- app switching bound to meta-tab
    awful.key({modkey}, "Tab",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({modkey, "Shift"}, "Tab",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    awful.key({"Control"}, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),


    -- https://wiki.archlinux.org/index.php/Awesome3#Hide_.2F_show_wibox_in_awesome_3
    awful.key({modkey}, "b", function ()
        mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible
    end),

    -- bind PrintScrn to capture a screen
    awful.key(
        {},
        "Print",
        function()
            awful.spawn("capscr",false)
        end
    ),

    -- Brightness
    -- http://askubuntu.com/questions/96662/brightness-control-on-awesome-windowing-manager
    awful.key({ }, "XF86MonBrightnessUp", function ()
        awful.spawn("backlight_mon.sh up") end),
    awful.key({ }, "XF86MonBrightnessDown", function ()
        awful.spawn("backlight_mon.sh down") end),

    -- Keyboard Brightness
    -- http://keramida.wordpress.com/2013/03/28/controlling-the-keyboard-backlight-from-cli/
    awful.key({ }, "XF86KbdBrightnessUp", function ()
        awful.spawn("backlight_key.sh up") end),
    awful.key({ }, "XF86KbdBrightnessDown", function ()
        awful.spawn("backlight_key.sh down") end),

    -- Volume Control
    -- http://awesome.naquadah.org/wiki/Volume_control_and_display
    awful.key({ }, "XF86AudioRaiseVolume", function () awful.spawn("amixer set Master 9%+") end),
    awful.key({ }, "XF86AudioLowerVolume", function () awful.spawn("amixer set Master 9%-") end),
    awful.key({"Shift"}, "XF86AudioRaiseVolume", function () awful.spawn("amixer set Master 1%+") end),
    awful.key({"Shift"}, "XF86AudioLowerVolume", function () awful.spawn("amixer set Master 1%-") end),
    awful.key({ }, "XF86AudioMute",        function () awful.spawn("amixer set Master toggle") end),


    -- better screen nav
    awful.key({ modkey            }, 'p', function () awful.screen.focus_relative(1) end),  -- keep modkey-p to disable gnome screen rescan
    awful.key({ modkey            }, 'Up', function () awful.screen.focus_relative(1) end),
    awful.key({ modkey            }, 'Down', function () awful.screen.focus_relative(1) end),
    awful.key({ modkey, "Shift"   }, "Up",      awful.client.movetoscreen),
    awful.key({ modkey, "Shift"   }, "Down",    awful.client.movetoscreen),

    -- setup two monitor
    awful.key({ modkey, "Shift"   }, "s",
        function ()
            awful.spawn("screenconfig-thet.sh")
            awesome.restart()
        end
    ),

    -- quickstart programs
    awful.key({modkey, "Mod1"}, "x", function () awful.spawn("gnome-control-center") end),
    awful.key({modkey, "Mod1"}, "n", function () awful.spawn("nautilus") end), -- nautilus | nemo
    awful.key({modkey, "Mod1"}, "e", function () awful.spawn("thunderbird") end),
    awful.key({modkey, "Mod1"}, "f", function () awful.spawn("firefox") end),
    awful.key({modkey, "Mod1"}, "c", function () awful.spawn("google-chrome") end),
    -- awful.key({modkey, "Mod1"}, "c", function () awful.spawn("chromium") end),
    awful.key({modkey, "Mod1"}, "p", function () awful.spawn("pidgin") end),
    awful.key({modkey, "Mod1"}, "s", function () awful.spawn("skype") end),
    awful.key({modkey, "Mod1"}, "t", function () awful.spawn("gnome-terminal") end),
    awful.key({modkey, "Mod1"}, "g", function () awful.spawn("gedit") end),
    awful.key({modkey, "Mod1"}, "h", function () awful.spawn("hamster") end),
    awful.key({modkey, "Mod1"}, "1", function () awful.spawn("gnome-screenshot") end),
    awful.key({modkey, "Mod1"}, "2", function () awful.spawn("gnome-screenshot --window") end),
    awful.key({modkey, "Mod1"}, "3", function () awful.spawn("gnome-screenshot --interactive") end),
    awful.key({modkey, "Mod1"}, "z", function () awful.spawn("xmodmap ~/.Xmodmap") end)

    -- disable/enable touchpad
    -- awful.key({modkey, "Mod1"}, "space", function () awful.spawn("xinput disable 11") end),
    -- awful.key({modkey, "Mod1", "Control"}, "space", function () awful.spawn("xinput enable 11") end)

)
root.keys(globalkeys)


-- Indicate focused windows
function client_getfocus(c)
    c.border_color = beautiful.border_focus
    c.opacity = 1.0
end
function client_unfocus(c)
    c.border_color = beautiful.border_normal
    c.opacity = 0.90
end
-- client.connect_signal("focus", client_getfocus)
-- client.connect_signal("unfocus", client_unfocus)

-- Prevent the mouse scroll wheel from changing tags
-- https://wiki.archlinux.org/index.php/Awesome#Prevent_the_mouse_scroll_wheel_from_changing_tags
-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end)))
-- }}}
