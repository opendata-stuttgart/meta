# Lua Workshop

## Tools

* https://github.com/4refr0nt/luatool

* https://github.com/themadinventor/esptool

## Image bauen

http://frightanic.com/nodemcu-custom-build/trigger-build.php

## flashen
flashmodus: 4. Pin von unten (GP100) -> low

```python esptool.py write_flash 0x00000 nodemcu-master-8-modules-2015-08-04-17-27-07-float.bin```


# git repos:

    mkdir -p esp_tools/
    pushd esp_tools/
    git clone https://github.com/themadinventor/esptool
    git clone https://github.com/4refr0nt/luatool
    git clone https://github.com/nodemcu/nodemcu-firmware.git
    popd



## rumspielen

### LED schalten

rote LED mit vorwiderstand (180Ohm) auf PIN 2 verbinden

an: ```gpio.write(2, gpio.HIGH)```  
aus: ```gpio.write(2, gpio.LOW)```


### photoresistor

werte sind allerdings seltsam  !!

```
=adc.read(0)
```

### an vcc angelegte spannung auslesen

```
=adc.readvdd33()
```

### wifi

init.lua:
```
SSID      = "ssid"
PASSWORD  = "password"
TIMEOUT   = 10000000  -- 10 seconds

function connect(timeout)
   local time = tmr.now()
   wifi.sta.connect()

   tmr.alarm(1, 1000, 1, 
             function() 
                if wifi.sta.status() == 5 then 
                   tmr.stop(1)
                   print("Station: connected! IP: " .. wifi.sta.getip())
                   return true
                else
                   if tmr.now() - time > timeout then
                      tmr.stop(1)
                      print("Timeout!")
                      return false
                   end
                end 
             end
   )
end

print("Setting up Wi-Fi connection..")
wifi.setmode(wifi.STATION)
wifi.sta.config(SSID, PASSWORD)
connect(TIMEOUT)
```

* hochladen mit luatool:
``luatool.py -f init.lua``

* mit ``screen /dev/ttyUSB0`` verbinden.
* rebooten: ``node.restart()``
* warten
