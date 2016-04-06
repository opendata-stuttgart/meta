# ZIEL

Das Ziel ist es einen massentauglichen Feinstaubsensor zu bauen.
Dieser soll via freifunk seine Messwerte zu einem zentralen Server schicken, um eine bessere Datenabdeckung der Feinstaubbelastung unserer Umgebung zu erhalten

# Status

->  https://github.com/opendata-stuttgart/meta/issues

# Voraussichtlich für einen Sensor benötigte Bauteile

* ESP8266 (WLAN, Prozessor)
* PPD42NS (Feinstaub messen)
* Stromversorgung (MicroUSB/Handy-Netzteil oder Akku)
* Spannungsregelung (3.3V & 5V)
* Kleinkram (Käbelchen, Stecker, Lochrasterplatine, Breadboard, ...)

optional:

* DHT22/SHTxx o.ä. (Temperatur & Luftfeuchtigkeit)
* BMP180 (Luftdruck, Temperatur(?), Feuchtigkeit(?))
* MQ135 (Gas-Messung (CO2, etc))

Zum programmieren:
* FTDI (3.3V/5V Quelle aus USB + Serial)

## Liste mit Hardware die man braucht um loszulegen (mit AliExpress-Links):

NodeMCU (ESP8266, CPU/WLAN), Preis ca. 3,00 Euro (Stand 17.02.2016):
http://de.aliexpress.com/wholesale?site=deu&SortType=price_asc&shipCountry=de&SearchText=nodemcu+v3&CatId=400103

PPD42NS (Staubsensor), Preis ca. 11 Euro (Stand 17.02.2016):
http://de.aliexpress.com/wholesale?site=deu&SortType=price_asc&shipCountry=de&SearchText=ppd42ns&CatId=523

SDS011 (alternativer Feinstaubsensor), Preis ca. 25 Euro (Stand 17.02.2016):
http://de.aliexpress.com/wholesale?site=deu&SortType=price_asc&shipCountry=de&SearchText=sds011&CatId=523

DHT22/AM2302 (Temperatur/Luftfeuchte) , Preis ca. 2,30 Euro (Stand 17.02.2016):
http://de.aliexpress.com/wholesale?site=deu&SortType=price_asc&shipCountry=de&SearchText=dht22&CatId=523
  
  

http://blog.asw.io/esp8266/2015/06/06/howto-flash-esp8266-with-nodemcu-firmware/
  

## Datenblätter, Spezifikationen

[AM2302] (https://github.com/opendata-stuttgart/meta/blob/master/files/AM2302.pdf) (entspricht DHT22)  
[DHT22] (https://github.com/opendata-stuttgart/meta/blob/master/files/DHT22.pdf)  
[PPD42NS] (https://github.com/opendata-stuttgart/meta/blob/master/files/PPD42NS.pdf)  
[SDS011] (https://github.com/opendata-stuttgart/meta/blob/master/files/SDS011-V1.3.pdf)  
  
  
## Pinout NodeMCU v2 und v3
  
NodeMCU v2  
![Pinout NodeMCU v2](https://www.madavi.de/sensor/esp8266-nodemcu-dev-kit-v2-pins.jpg)
  
  
NodeMCU v3  
![Pinout NodeMCU v3](https://www.madavi.de/sensor/esp8266-nodemcu-dev-kit-v3-pins.jpg)