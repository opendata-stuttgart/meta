# ZIEL

Das Ziel ist es einen massentauglichen Feinstaubsensor zu bauen.
Dieser soll via freifunk seine Messwerte zu einem zentralen Server schicken, um eine bessere Datenabdeckung der Feinstaubbelastung unserer Umgebung zu erhalten

# Status

->  https://github.com/opendata-stuttgart/meta/issues


# Vorraussichtlich für einen Sensor benötigte Bauteile

* ESP8266 (WLAN, Prozessor)
* PPD42NS (Feinstaub messen)
* Stromversorgung (MicroUSB/Handy-Netzteil oder Akku)
* Spannungsregelung (3.3V & 5V)

optional:

* DHT22/SHTxx o.ä. (Temperatur & Luftfeuchtigkeit)
* BMP180 (Luftdruck, Temperatur(?), Feuchtigkeit(?))
* MQ135 (Gas-Messung (CO2, etc))