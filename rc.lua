-- Don't forget to set "    right_layout:add(dogewidget)" in your config!

-- {{{ Dogewidget
        dogewidget = wibox.widget.textbox()
        result = assert(io.popen("/usr/bin/dogewidget -w DHwsdfQ2djCsf5b7fK3vmMUR4asda3rsdff -c HUF"))
        dogewidget:set_text(" | " .. result:read("*l") .. " ")
        result:close()
        dogewidgettimer = timer({ timeout = 3600 })
        dogewidgettimer:connect_signal("timeout",
          function()
            result = assert(io.popen("/usr/bin/dogewidget -w DHwsdfQ2djCsf5b7fK3vmMUR4asda3rsdff -c HUF"))
            dogewidget:set_text(" | " .. result:read("*l") .. " ")
            result:close()
          end 
        )   
        dogewidgettimer:start()
-- }}}
