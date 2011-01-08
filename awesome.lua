require("awesome-base")
require("grid")
--require("includes/bioe007-awesome-configs/revelation")

require("awful")

last_selected_tag = nil
globalkeys = awful.util.table.join(
    globalkeys,
    -- awful.key({modkey}, "e", revelation.revelation),

    -- un/minimize all clients of a tag 
    awful.key({modkey}, "d",
        function()
            local curtag = awful.tag.selected()
            if curtag then
                last_selected_tag = curtag
            else
                curtag = last_selected_tag or 1
            end
            awful.tag.viewtoggle(curtag)
        end
    ),

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

    awful.key({modkey}, "b", function ()
        mywibox[mouse.screen].visible = not mywibox[mouse.screen].visible
    end)

)
root.keys(globalkeys)

