
function generateHTML(distance)
  distance = distance or "0"
  temp = temp or "0"
  humidity = humidity or "0"
return ([[
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
      <p>Distance: <span id="distance">]] .. distance .. [[ </span></p>
      <p>Temperature: <span id="temperature">]] .. temp .. [[</span></p>
      <p>Humidity: <span id="humidity">]] .. humidity .. [[</span></p>
      <button onclick="updateData()">Update</button>
      
      <script>

    const distance = document.querySelector("#distance")
    const temperature = document.querySelector("#temperature")
    const humidity = document.querySelector("#humidity")
    
    function updateData() {
      var xhttp = new XMLHttpRequest()

      xhttp.onload = function() {
        console.log(this.response)
      }
      xhttp.open("GET", "/data", true);
      xhttp.send()
    }
    
  </script>
    </body>
    
    </html>
]])

end