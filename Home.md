[Ziel] (#Ziel) - [Status] (#Status) - [benötigte Bauteile] (#voraussichtlich-f%C3%BCr-einen-sensor-ben%C3%B6tigte-bauteile) - [Liste mit Hardware u. AliExpress-Links] (#liste-mit-hardware-die-man-braucht-um-loszulegen-mit-aliexpress-links) - [Datenblätter, Spezifikationen] (https://github.com/opendata-stuttgart/meta/wiki/Datenbl%C3%A4tter-Spezifikationen) - [NodeMCU Pinouts] (#pinout-nodemcu-v2-und-v3)  
  
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
  
