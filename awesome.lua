require("awesome-base")
--require("includes/bioe007-awesome-configs/revelation")

require("awful")
modkey = "Mod4"
last_selected_tag = nil
globalkeys = awful.util.table.join(
    globalkeys,
    -- awful.key({modkey}, "e", revelation.revelation),

    -- all minimized clients are restored
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

    -- trying to build a tiling config like the one in compiz
    -- to manually set the layout
    awful.key({modkey}, "a",
        function ()
            local curclient = awful.client.focus.history.get()
            awful.client.floating.set(curclient, true)
            sgeo = screen[1].geometry
            --curclient:geometry({
            --    x = sgeo.x,
            --    y = sgeo.y,
            --    width = sgeo.width / 2,
            --    height = sgeo.height
            --})
            curclient:geometry({
                x = 300,
                y = 300,
                width = 300,
                height = 300
            })
            curclient:raise()
        end)

)
root.keys(globalkeys)
