dofile("application.lua")
function client_connected()
    print("Client connected")
    print("Visit http://" .. wifi.ap.getip())
    
end

function client_disconnected() 
    print("Client disconnected")
end



wifi.eventmon.register(wifi.eventmon.AP_STACONNECTED, client_connected)
wifi.eventmon.register(wifi.eventmon.AP_STADISCONNECTED, client_disconnected)
wifi.setmode(wifi.SOFTAP)
wifi.ap.config({ssid = "esp", pwd = "12345678!"})