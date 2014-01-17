require("awesome-base")
require("windowrules")
require("grid")
--require("includes/bioe007-awesome-configs/revelation")

local awful = require("awful")
local beautiful = require("beautiful")

browser = 'firefox'

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
    awful.key({'Control'}, "Tab",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({'Control', "Shift"}, "Tab",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    -- history app switching
    awful.key({"Mod1"}, "Tab",
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
            awful.util.spawn("capscr",false)
        end
    ),

    -- Brightness
    -- http://askubuntu.com/questions/96662/brightness-control-on-awesome-windowing-manager
    awful.key({ }, "XF86MonBrightnessDown", function ()
        awful.util.spawn("xbacklight -dec 10") end),
    awful.key({ }, "XF86MonBrightnessUp", function ()
        awful.util.spawn("xbacklight -inc 10") end),

    -- Keyboard Brightness
    -- http://keramida.wordpress.com/2013/03/28/controlling-the-keyboard-backlight-from-cli/
    awful.key({ }, "XF86KbdBrightnessUp", function ()
        awful.util.spawn("backlight.sh up") end),
    awful.key({ }, "XF86KbdBrightnessDown", function ()
        awful.util.spawn("backlight.sh down") end),

    -- Volume Control
    -- http://awesome.naquadah.org/wiki/Volume_control_and_display
    awful.key({ }, "XF86AudioRaiseVolume", function ()
       awful.util.spawn("amixer set Master 9%+") end),
   awful.key({ }, "XF86AudioLowerVolume", function ()
       awful.util.spawn("amixer set Master 9%-") end),
   awful.key({ }, "XF86AudioMute", function ()
       awful.util.spawn("amixer sset Master toggle") end),


    -- better screen nav
    awful.key({ modkey            }, 'p', function () awful.screen.focus_relative(1) end),  -- keep modkey-p to disable gnome screen rescan
    awful.key({ modkey            }, 'Up', function () awful.screen.focus_relative(1) end),
    awful.key({ modkey            }, 'Down', function () awful.screen.focus_relative(1) end),
    awful.key({ modkey, "Shift"   }, "Up",      awful.client.movetoscreen),
    awful.key({ modkey, "Shift"   }, "Down",    awful.client.movetoscreen),

    -- quickstart programs
    awful.key({modkey, "Mod1"}, "n", function () awful.util.spawn("nautilus") end), -- nautilus | nemo
    awful.key({modkey, "Mod1"}, "e", function () awful.util.spawn("evolution") end),
    awful.key({modkey, "Mod1"}, "f", function () awful.util.spawn("firefox") end),
    awful.key({modkey, "Mod1"}, "c", function () awful.util.spawn("chromium") end),
    awful.key({modkey, "Mod1"}, "p", function () awful.util.spawn("pidgin") end),
    awful.key({modkey, "Mod1"}, "s", function () awful.util.spawn("skype") end),
    awful.key({modkey, "Mod1"}, "t", function () awful.util.spawn("gnome-terminal") end),
    awful.key({modkey, "Mod1"}, "g", function () awful.util.spawn("gedit") end),
    awful.key({modkey, "Mod1"}, "h", function () awful.util.spawn("hamster") end),
    awful.key({modkey, "Mod1"}, "1", function () awful.util.spawn("gnome-screenshot") end),
    awful.key({modkey, "Mod1"}, "2", function () awful.util.spawn("gnome-screenshot --window") end),
    awful.key({modkey, "Mod1"}, "3", function () awful.util.spawn("gnome-screenshot --interactive") end),

    -- disable/enable touchpad
    awful.key({modkey, "Mod1"}, "space", function () awful.util.spawn("xinput disable 11") end),
    awful.key({modkey, "Mod1", "Control"}, "space", function () awful.util.spawn("xinput enable 11") end)

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
client.connect_signal("focus", client_getfocus)
client.connect_signal("unfocus", client_unfocus)

-- Prevent the mouse scroll wheel from changing tags
-- https://wiki.archlinux.org/index.php/Awesome#Prevent_the_mouse_scroll_wheel_from_changing_tags
-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end)))
-- }}}
