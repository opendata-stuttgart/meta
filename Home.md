nächste Seite: [Bezugsquellen Einzelteile](/opendata-stuttgart/meta/wiki/Bezugsquellen-Einzelteile)

# ZIEL

Das Ziel ist es einen massentauglichen Feinstaubsensor zu bauen.
Dieser soll via freifunk seine Messwerte zu einem zentralen Server schicken, um eine bessere Datenabdeckung der Feinstaubbelastung unserer Umgebung zu erhalten. 
Homepage: http://luftdaten.info/  
  
# INHALT  

* [Bezugsquellen Einzelteile] (/opendata-stuttgart/meta/wiki/Bezugsquellen-Einzelteile)  
* [Firmware einspielen] (/opendata-stuttgart/meta/wiki/Firmware-einspielen)
* [Zusammenbau der Komponenten (Schaltung)] (/opendata-stuttgart/meta/wiki/Zusammenbau-der-Komponenten-(Schaltung))  
* [Zusammenbau der Komponenten (Montage Einzelteile)] (/opendata-stuttgart/meta/wiki/Zusammenbau-der-Komponenten-(Montage-Einzelteile))
* [Sensor-Konfiguration] (/opendata-stuttgart/meta/wiki/Konfiguration-der-Sensoren)
* [APIs] (/opendata-stuttgart/meta/wiki/APIs)
* [NodeMCU Pinouts v2, v3] (/opendata-stuttgart/meta/wiki/Pinouts-NodeMCU-v2,-v3)
* [Datenblätter, Spezifikationen] (/opendata-stuttgart/meta/wiki/Datenbl%C3%A4tter-Spezifikationen)
* [Studien] (/opendata-stuttgart/meta/wiki/Studien)

# Status

->  https://github.com/opendata-stuttgart/meta/issues

# Voraussichtlich für einen Sensor benötigte Bauteile

* ESP8266 (WLAN, Prozessor)  
* ~~PPD42NS (Feinstaub messen)~~  
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
  
