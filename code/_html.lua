_html = [[
  <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pipe Inspection Robot</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
  
      body {
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
  
      p {
        font-size: xx-large;
      }
    </style>
  </head>
  
  <body>
    <p>Distance: <span id="distance">{Distance Value}</span> m</p>
    <p>Temperature: <span id="temperature">{Temperature Value}</span> &deg;C</p>
    <p>Humidity: <span id="humidity">{Humidity Value}</span> %</p>
    <script>
  
      const distance = document.querySelector("#distance")
      const temperature = document.querySelector("#temperature")
      const humidity = document.querySelector("#humidity")
      
      function updateData() {
        var xhttp = new XMLHttpRequest()
  
        xhttp.onload = function() {
          const data = JSON.parse(this.response)
          distance.innerHTML = data.distance
          temperature.innerHTML = data.temperature
          humidity.innerHTML = data.humidity
  
        }
        xhttp.open("GET", "/data", true);
        xhttp.send()
        
      }
      setInterval(updateData, 1000)
    </script>
  </body>
  
  </html>
]]