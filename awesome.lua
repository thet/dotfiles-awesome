require("awesome-base")
--require("includes/bioe007-awesome-configs/revelation")

require("awful")
modkey = "Mod4"



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

    -- trying to build a tiling config like the one in compiz
    -- to manually set the layout

    awful.key({modkey, "Control"}, "a",
        function ()
            local curclient = awful.client.focus.history.get()
            local sgeo = screen[1].geometry
            local cgeo = curclient:geometry()
            local divisor = get_divisor(cgeo.width, sgeo.width)
            awful.client.floating.set(curclient, true)
            --wgeo = wibox[1].geometry
            local w = math.floor(sgeo.width/divisor)
            local x = 0
            local y = 19
            local h = sgeo.height - y 
            curclient:geometry({x=x, y=y, width=w, height=h})
            naughty.notify({
                text = "x:"..cgeo.width.." y:"..y.." w:"..w.." h:"..h,
                timeout = 5,
            })
            curclient:raise()
        end),
    awful.key({modkey, "Control"}, "d",
        function ()
            local curclient = awful.client.focus.history.get()
            local sgeo = screen[1].geometry
            local cgeo = curclient:geometry()
            local divisor = get_divisor(cgeo.width, sgeo.width)
            awful.client.floating.set(curclient, true)
            --wgeo = wibox[1].geometry
            local w = math.floor(sgeo.width/divisor)
            local x = sgeo.width - w
            local y = 19
            local h = sgeo.height - y 
            curclient:geometry({x=x, y=y, width=w, height=h})
            naughty.notify({
                text = "x:"..cgeo.width.." y:"..y.." w:"..w.." h:"..h,
                timeout = 5,
            })
            curclient:raise()
        end)
)
root.keys(globalkeys)

function get_divisor(cwidth, swidth)
    local divisor = 2 
    if cwidth>math.floor(swidth/2) then
        divisor = 2
    elseif cwidth>math.floor(swidth/3) then
        divisor = 3
    elseif cwidth>math.floor(swidth/4) then
        divisor = 4
    end
    return divisor
end
