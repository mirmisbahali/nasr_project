dofile("application.lua")

-- wifi.eventmon.register(wifi.eventmon.AP_STACONNECTED, client_connected)
-- wifi.eventmon.register(wifi.eventmon.AP_STADISCONNECTED, client_disconnected)
-- wifi.eventmon.register(wifi.eventmon.STA_GOT_IP, function() print(wifi.sta.getip()) end )
wifi.setmode(wifi.SOFTAP)
wifi.ap.config({ssid = "nasr's esp", pwd = "12345678!"})