Ergänzung zum Pinout:
Bei den NodeMCUs v3 steht VIN wirklich als Eingang. Dort kann die NodeMCU mit 5V versorgt werden. Es ist nicht mehr möglich, dort die Spannung des USB-Anschlusses abzufassen, wie dies noch bei Version 2 möglich war. Für unser Projekt ist daher die 5V-Leitung des Sensors (PPD42NS oder SDS011) an VU (direkt neben dem aufgelöteten ESP8266) anzuschließen.  

# NodeMCU v2  
![Pinout NodeMCU v2](/opendata-stuttgart/meta/raw/master/files/esp8266-nodemcu-dev-kit-v2-pins.jpg)  
  
# NodeMCU v3  

Gerade stelle ich fest, dass alle meine LoLin Boards (Nodemcu v3) kaputt sind: die liefern keine 5V auf VIN, sondern irgendwas zwischen 0.5V und 1.5V. Ver 0.1 steht noch auf den Kaputten, die sind mit ch34dg usb2serial chips  (ch341-uart converter) und etwas größer als die v2 Boards.

Man nehme bei diesen Boards VU (V USB) für 5 Volt.

![Pinout NodeMCU v3](/opendata-stuttgart/meta/raw/master/files/esp8266-nodemcu-dev-kit-v3-pins.jpg)  
  