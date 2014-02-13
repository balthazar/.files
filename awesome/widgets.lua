require("awful")
require("beautiful")
vicious = require("vicious")
wibox = require("wibox")
require("volume")

beautiful.init("~/.config/awesome/theme.lua")

-- text color
focus_col = '<span color="#286f8a">'
null_col = '</span>'
-- Icon dir
icon_dir = awful.util.getdir("config") .. "/icons/"
--/// Start a layoutbox ///
mylayoutbox = {}

--/// Taglist 
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
    awful.button({ }, 1, awful.tag.viewonly),
    awful.button({ }, 3, awful.tag.viewtoggle),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
    )
--///

--/// Clock widget ///
datewidget = wibox.widget.textbox()
vicious.register(datewidget, vicious.widgets.date, ''..focus_col..'%a %d %b'..null_col..'',  10)

--/// CPU widget ///
cpuicon = wibox.widget.imagebox()
cpuicon:set_image(icon_dir .. "cpu.png")

cpuperc = wibox.widget.textbox()
cpuperc.width = "30"
cpuperc.align = "left"
vicious.register(cpuperc, vicious.widgets.cpu, ' '..focus_col..'$1'..null_col..' ', 1)

--/// Mem Widget ///
memicon = wibox.widget.imagebox()
memicon:set_image(icon_dir .. "mem.png")

memwidget = wibox.widget.textbox()
cpuperc.width = "30"
memwidget.align = "left"
vicious.register(memwidget, vicious.widgets.mem, ' '..focus_col..'$1'..null_col..' $2MB', 17)

--/// Battery widget ///
baticon = wibox.widget.imagebox()
baticon:set_image(icon_dir .. "bat_full_01.png")

batwidget = wibox.widget.textbox()
batwidget.align = "left"
vicious.register(batwidget, vicious.widgets.bat, ' '..focus_col..'$2%'..null_col..' $1', 23, "BAT0")

--/// Temp widget ///
tempicon = wibox.widget.imagebox()
tempicon:set_image(icon_dir .. "temp.png")

tempwidget1 = wibox.widget.textbox()
tempwidget1.align = "left"
vicious.register(tempwidget1, vicious.widgets.thermal, ' '..focus_col..'$1'..null_col..'', 43, "thermal_zone0")
tempwidget2 = wibox.widget.textbox()
tempwidget2.align = "left"
vicious.register(tempwidget2, vicious.widgets.thermal, ' '..focus_col..'$1'..null_col..' C', 43, "thermal_zone1")

--/// Net Widget
neticon = wibox.widget.imagebox()

netwidget = wibox.widget.imagebox()
netwidget.width = "120"
netwidget.align = "left"
vicious.register(netwidget, vicious.widgets.net, 
    function (widget, args)
        if args["{ppp0 carrier}"] == 1 
			then 
				neticon:set_image(icon_dir .. "usb.png")
				return ' U '..focus_col..args["{ppp0 up_kb}"]..null_col..' D '..focus_col..args["{ppp0 down_kb}"]..null_col..''
		elseif args["{wlan0 carrier}"] == 1 
			then 
				neticon:set_image(icon_dir .. "wifi_01.png")
				return ' U '..focus_col..args["{wlan0 up_kb}"]..null_col..' D '..focus_col..args["{wlan0 down_kb}"]..null_col..''
	    else 
			neticon:set_image(icon_dir .. "empty.png")
			return  'Netwok Disabled '
	   		-- end
		end
    end, 1)
--///

--netuptext, netdwtext = widget({ type = "textbox" }, widget({ type = "textbox" })
--netuptext.width, netdwtext.width = "60", "60"

--/// MPD widget
mpdwidget = wibox.widget.textbox()
mpdwidget.align = "left"
vicious.register(mpdwidget, vicious.widgets.mpd, 
    function (widget, args)
	if args["{state}"] == "N/A" then return " MPD closed"
	elseif args["{state}"] == "Stop" 
		then return " MPD stopped"
	else
		if args["{state}"] == "Pause" 
			then mpdstate = " || "
			else mpdstate = " > "
		end
		return ''..mpdstate..focus_col..args["{Title}"]..null_col..' - '..args["{Artist}"]
	end
    end, 2)
mpdwidget:buttons(awful.util.table.join(
	awful.button({ }, 1, function () exec("mpc toggle") end)))
--///

volicon = wibox.widget.imagebox()
volicon:set_image(icon_dir .. "spkr_01.png")
--/// Separator
sep = wibox.widget.textbox()
sep:set_text('<span color="#151515" > · </span>')
--///

--/// DRAW WIDGETS
for s = 1, screen.count() do
    --// Layoutbox //
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
        awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
        awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end)
	))
    --// Taglist //
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)
    --// I Wibox 
    mywibox = {}
    mywibox[s] = awful.wibox({ position = "top", height = "16", screen = s })
    mywibox[s].widgets = {
        {
            mytaglist[s], sep,
            mpdwidget, 
           -- layout = awful.widget.layout.horizontal.leftright
        },
        mylayoutbox[s], sep,
        datewidget, sep,
        volumetext, volicon, sep,   
        batwidget, baticon, sep,
        tempwidget2, tempwidget1, tempicon, sep,
	    memwidget, memicon, sep,
        cpuperc, cpuicon, sep, 
        netwidget, neticon,
       -- layout = awful.widget.layout.horizontal.rightleft
    }
	--mywibox[s].border_width = "1"
--	mywibox[s].border_color = beautiful.fg_focus
--	mywibox[s].width = "1364"
    --//

end
--///
