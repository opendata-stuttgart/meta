nächste Seite: [Bezugsquellen Einzelteile](/opendata-stuttgart/meta/wiki/Bezugsquellen-Einzelteile)

# ZIEL

Das Ziel ist es einen massentauglichen Feinstaubsensor zu bauen.
Dieser soll via freifunk seine Messwerte zu einem zentralen Server schicken, um eine bessere Datenabdeckung der Feinstaubbelastung unserer Umgebung zu erhalten. 
Homepage: http://luftdaten.info/

# Status

->  https://github.com/opendata-stuttgart/meta/issues

# Voraussichtlich für einen Sensor benötigte Bauteile

* ESP8266 (WLAN, Prozessor)
~~* PPD42NS (Feinstaub messen)~~
* SDS011 (Feinstaub messen), ersetzt PPD42NS da bessere Ergebnisse  
* Stromversorgung (MicroUSB/Handy-Netzteil oder Akku)
* Spannungsregelung (3.3V & 5V)
* Kleinkram (Käbelchen, Stecker, Lochrasterplatine, Breadboard, ...)

optional:

* DHT22/SHTxx o.ä. (Temperatur & Luftfeuchtigkeit)
* BMP180 (Luftdruck, Temperatur(?), Feuchtigkeit(?))
* MQ135 (Gas-Messung (CO2, etc))

Zum programmieren:
* FTDI (3.3V/5V Quelle aus USB + Serial)

http://blog.asw.io/esp8266/2015/06/06/howto-flash-esp8266-with-nodemcu-firmware/
  
