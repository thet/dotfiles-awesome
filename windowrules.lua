awful.rules.rules = {
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     maximized_vertical   = false, -- force no maximized on startup. see: https://awesome.naquadah.org/wiki/FAQ#Why_some_floating_clients_can_not_be_tiled.3F
                     maximized_horizontal = false } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { instance = "screenruler" },
      properties = { floating = true } }
}
