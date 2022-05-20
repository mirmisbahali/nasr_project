dofile("html.lua")
dofile("us.lua")
print("Application Started")

dist = "This is distance value"
humidity = 0
temperature = 0

srv = net.createServer(net.TCP)
srv:listen(80, function(conn) 
conn:on('receive', function(client, request)
    print(request)
    
    find = {string.find(request, 'data')}
    print(find[1], find[2])
    if #find ~= 0 then
      args = string.sub(request, find[1], find[2])
      if args == "data" then
        client:send([[
          {
            "distance" ]] .. dist .. [[,
            "temperature: ]] .. temperature .. [[,
            "humidity: ]] .. humidity .. [[,
          }
        ]]
        )
      end
    else
      client:send(generateHTML(dist, humidity, temperature))
    end
    conn:on("sent", function(c) c:close() end)
end)
  end)