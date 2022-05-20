dofile("_html.lua")
dofile("us.lua")
print("Application Started")

dhtPin = 3

srv = net.createServer(net.TCP)
srv:listen(80, function(conn) 
conn:on('receive', function(client, request)
    print(request)
    
    find = {string.find(request, 'data')}
    if #find ~= 0 then
      args = string.sub(request, find[1], find[2])
      
      -- Reading Temperature and Humidity from DHT Sensor
      status, temp, humi, temp_dec, humi_dec = dht.read11(dhtPin)

      if args == "data" then
        client:send([[{
          "distance":]] .. distance .. [[,
          "temperature":]] .. temp .. [[,
          "humidity":]] .. humi .. [[
        }]]
        )
      end
    else
      client:send(_html)
    end
    conn:on("sent", function(c) c:close() end)
end)
  end)