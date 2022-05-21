# Pipe Inspection Robot

## Circuit Diagram

![Circuit Diagram](circuit.png)

## Pin Connections

### Ultrasonic Sensor
trig Pin = D1

Echo Pin = D2

### Temperature and Humidity sensor (DHT11)

VCC = 3.3V on ESP

GND = GND on ESP

DAT = D3

## Uploading Code to NodeMCU
Uploading code to nodemcu involves 3 steps:
1. Building the Firmware
2. Flash the Firmware
3. Upload the Code

### Step 1: 
Download `nodemcu-release-10-modules-2022-05-19-17-13-08-float`. [Click Here to Download](https://github.com/mirmisbahali/nasr_project/raw/main/firmware/nodemcu-release-10-modules-2022-05-19-17-13-08-float.bin)

### Step 2: Install Python
[Click here to Download Python](https://www.python.org/ftp/python/3.10.4/python-3.10.4-amd64.exe)

Make sure to tick `Add Python to path` option

### Step 3:  Install esptool.py to flash the Firmware

```bash
pip install esptool
```

### Step 4: Flash firmware using esptool.py

```bash
esptool.py --port <serial-port-of-ESP8266> write_flash -fm qio 0x00000 <nodemcu-firmware>.bin
```
Serial port can be found by right clicking on This PC > manage > Device Manager > Ports

### Step 5: Upload Code

### ESPlorer
[Click Here to Download](https://github.com/4refr0nt/ESPlorer/releases/download/v0.2.0/ESPlorer-0.2.0.zip)

Upload `init.lua`, `application.lua`, `us.lua`, `_html.lua` using ESPlorer to NodeMCU


