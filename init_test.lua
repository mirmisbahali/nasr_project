dofile("application.lua")

-- wifi.eventmon.register(wifi.eventmon.AP_STACONNECTED, client_connected)
-- wifi.eventmon.register(wifi.eventmon.AP_STADISCONNECTED, client_disconnected)
wifi.setmode(wifi.STATION)
wifi.ap.config({ssid = "esp-guest", pwd = "12345678!"})