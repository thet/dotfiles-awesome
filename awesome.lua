require("awesome-base")
require("windowrules")
require("grid")
--require("includes/bioe007-awesome-configs/revelation")

require("awful")

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

    -- instead of modkey+control+j/k just allow modkey+i for switching screens
    awful.key({modkey}, 'p', function () awful.screen.focus_relative(1) end),

    awful.key({modkey, "Shift"}, "Return", function () awful.util.spawn("nautilus") end),
    --awful.key({modkey, "Alt"}, "Return", function () awful.util.spawn("gedit") end),
    awful.key({modkey, "Control"}, "Return", function () awful.util.spawn("firefox") end)
    -- awful.key({modkey, "Alt", "Control"}, "Return", function () awful.util.spawn("pidgin & skype & evolution") end),
    -- awful.key({modkey, "Shift", "Alt", "Control"}, "Return", function () awful.util.spawn("gnome-terminal") end)
)
root.keys(globalkeys)
