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

    -- instead of modkey+control+j/k just allow modkey+p for switching screens
    awful.key({modkey}, 'p', function () awful.screen.focus_relative(1) end),

    awful.key({modkey, "Mod1"}, "n", function () awful.util.spawn("nautilus") end),
    awful.key({modkey, "Mod1"}, "e", function () awful.util.spawn("gedit") end),
    awful.key({modkey, "Mod1"}, "f", function () awful.util.spawn("firefox") end),
    awful.key({modkey, "Mod1"}, "c", function () awful.util.spawn("chromium-browser") end),
    awful.key({modkey, "Mod1"}, "p", function () awful.util.spawn("pidgin") end),
    awful.key({modkey, "Mod1"}, "s", function () awful.util.spawn("skype") end),
    awful.key({modkey, "Mod1"}, "t", function () awful.util.spawn("thunderbird") end),
    awful.key({modkey, "Mod1"}, "g", function () awful.util.spawn("gnome-terminal") end),
    awful.key({modkey, "Mod1"}, "h", function () awful.util.spawn("hamster-time-tracker") end)
)
root.keys(globalkeys)
