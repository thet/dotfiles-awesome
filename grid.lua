require("awful")

globalkeys = awful.util.table.join(
    globalkeys,

    -- trying to build a tiling config like the one in compiz
    -- to manually set the layout

    awful.key({modkey, "Control"}, "a",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = wiboxh 
                    h = sgeo.height - y
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control"}, "d",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = wiboxh 
                    h = sgeo.height - y
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control"}, "s",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = wiboxh 
                    h = sgeo.height - y
                    return x,y,w,h
                end
            )
        end),
        

    -- upper
    awful.key({modkey, "Control"}, "q",
        function() 
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = wiboxh 
                    h = math.floor((sgeo.height - y) / 2)
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control"}, "e",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = wiboxh 
                    h = math.floor((sgeo.height - y) / 2)
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control"}, "w",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = wiboxh 
                    h = math.floor((sgeo.height - y) / 2)
                    return x,y,w,h
                end
            )
        end),


    -- lower
    awful.key({modkey, "Control"}, "y",
        function() 
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = math.floor((sgeo.height - wiboxh) / 2 + wiboxh)
                    h = math.floor((sgeo.height - wiboxh) / 2)
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control"}, "c",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = math.floor((sgeo.height - wiboxh) / 2 + wiboxh)
                    h = math.floor((sgeo.height - wiboxh) / 2)
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control"}, "x",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = math.floor((sgeo.height - wiboxh) / 2 + wiboxh)
                    h = math.floor((sgeo.height - wiboxh) / 2)
                    return x,y,w,h
                end
            )
        end),

-- ############# 1/3 height
-- ###########
-- ###

    awful.key({modkey, "Control", "Shift"}, "a",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = wiboxh + math.floor(sgeo.height - wiboxh) / 3  
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control", "Shift"}, "d",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = wiboxh + math.floor(sgeo.height - wiboxh) / 3  
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control", "Shift"}, "s",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = wiboxh + math.floor(sgeo.height - wiboxh) / 3  
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end),
        

    -- upper
    awful.key({modkey, "Control", "Shift"}, "q",
        function() 
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = wiboxh 
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control", "Shift"}, "e",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = wiboxh 
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control", "Shift"}, "w",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = wiboxh 
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end),


    -- lower
    awful.key({modkey, "Control", "Shift"}, "y",
        function() 
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = 0
                    y = math.floor((sgeo.height - wiboxh)*2 / 3 + wiboxh)
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            ) 
        end),
    awful.key({modkey, "Control", "Shift"}, "c",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = sgeo.width - w
                    y = math.floor((sgeo.height - wiboxh)*2 / 3 + wiboxh)
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end),
    awful.key({modkey, "Control", "Shift"}, "x",
        function ()
            set_grid(
                function()
                    w = math.floor(sgeo.width/divisor)
                    x = math.floor((sgeo.width - w) / 2)
                    y = math.floor((sgeo.height - wiboxh)*2 / 3 + wiboxh)
                    h = math.floor(sgeo.height - wiboxh) / 3
                    return x,y,w,h
                end
            )
        end)


)
root.keys(globalkeys)

show_geo = true
function set_grid(geofun)
    
    curclient = client.focus
    
    -- screen
    scr = curclient.screen
    sgeo = screen[scr].geometry
     
    -- wibox
    wgeo = mywibox[scr]:geometry()
    wvis = mywibox[scr].visible
    wiboxh = wvis and wgeo.height or 0  
    
    -- client
    cgeo = curclient:geometry()
    divisor = get_divisor(curclient, cgeo.width, sgeo.width)

    x,y,w,h = geofun()
    awful.client.floating.set(curclient, true)
    -- awful.client.movetoscreen(curclient, scr)
    curclient:geometry({x=x, y=y, width=w, height=h})
    curclient:raise()
    
    if show_geo then
        naughty.notify({
            text = "x:"..x.." y:"..y.." w:"..w.." h:"..h,
            timeout = 5,
        })
    end

end

divisor = 1
function get_divisor(c, cwidth, swidth)
    --divisor = c['griddivisor']
    if divisor==1 then
        divisor = 1.5
    elseif divisor==1.5 then
        divisor = 2
    elseif divisor==2 then
        divisor = 3
    else
        divisor = 1
    end
    --c['griddivisor'] = divisor

    -- divisor = 1.5
    -- if cwidth>math.floor(swidth/1.5) then
    --     divisor = 1.5
    -- elseif cwidth>math.floor(swidth/2) then
    --     divisor = 2
    -- elseif cwidth>math.floor(swidth/3) then
    --     divisor = 3
    -- end
    return divisor
end
