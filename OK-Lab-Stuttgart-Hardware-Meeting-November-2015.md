# OK Lab Stuttgart Hardware Meeting November 2015

## Basteln

Verwendete Software: 

* https://github.com/esp8266/Arduino
* https://github.com/opendata-stuttgart/sensors-software/tree/master/esp8266-arduino/ppd42ns-wifi-dht

## Einkaufsliste

* http://www.aliexpress.com/item/SHINYEI-dust-sensor-PPD42NS-PPD4NS-PPD42NJ-dust-sensor-with-cable/32305336628.html
* http://www.aliexpress.com/item/4M-4FLASH-NodeMcu-Lua-WIFI-Networking-development-board-Based-ESP8266/32448662166.html

## Todos (vom letzen Monat durchgearbeitet und angepasst)

### arduino-c-esp-software

done:

 - http-code + ppd-code zusammenführen @David
 - dokumentieren @David

### arduino prototyp

todos:

 - ppd42ns-serial mit LAN code versehen und auf API pushen lassen

### API

done:
 - api-endpunkte für sensor, data
 - both with pagination
 - data (timestamp_newer=..., sensor=...)
 - location (lat/lon) feld hinzufügen
 - api für mehr als einen sensor an einer node (PIN!) 

todos:

 - api-endpunkte für user, location, user_profile
 - hmac auf die node-id
 - ratelimiting (max 1 push alle 10s)

### Outdoor

done:

 - gehäuse öffnungen gleich hoch (parallel)
 - gefestigung des sensors und des nodemcu im rohr (kabelbinder!)
 - unten kommt ein micro-usb-kabel raus
 
todo: (postponed)
 
 - reinigung (a) lüfter [spannungsverdoppler vs. kondensator-schaltung] (b) öffnen und staubsaugen?
 - evt. eine platine um alles draufzustecken
 - usb-netzteile auf vorrat?
 - auf wie viel ist usb-strom spezifiziert: 500mA
 
todo:

 - vorwiderstand zwischen D5/D6 und P1/P2
 - schrumpfschlauch drüber
 - mehr röhren bebasteln

### Battery

todos (postponed):

 - stromverbrauch des prototyps messen
 - 25min schlafen / 5min arbeiten evaluieren
 - alternative spannungsquellen
 - pufferakku (evt. eine billige powerbank (i.e. billig-anker))

### REST-Clients

done: 
 - api last_update client mit push wenn kein update in den letzten 5 minuten ...
   https://github.com/opendata-stuttgart/feinstaub-monitoring-client-python/
 - api last_update client mit push/mail/twitter-notify/telegram/sms(twilio,??)... - 
 - api-monitoring mit push, wenn wieder da

todos:

 - wetter (aktuelles/vorhersage) (forecast.io/openweathermap) in die api pushen [Andreas, Michael]
 - kindle client mit wettervorhersage [Andreas]
 - https://github.com/opendata-stuttgart/feinstaub-data-evaluation-client-python

### MQTT

todos:

 * zu https://opensensors.io/ mqtt pushen
 * alternativ thingspeak
 

### Auswertung (mit python)

todos:

 - jupyter notebook [Andreas]
 - documentation wie man ein jupyter installiert / ausführt
 - andere statistische auswertungen!!
 - visualisierungen! (karte?!)
 - einfärben der tiles -- api-endpunkt in der feinstaub-api [aggregation!]

### daten der stadt in die API pushen

done:
 - script, dass excel-file liest: https://gist.github.com/michael-k/f98bcc2b8a7b4b397aa7

todo: 
 - in die api pusht!

### dokumentation allgemein

todos:

 - blogposts von frank / andreas / arne
 - blog für luftdaten.info - hugo mit wercker nach github
 
 
### android app

in progress:

 - daten anzeigen von der api mit diesem androiden

## Sonstiges

- Demo gegen Feinstaub am 21.11.2015
  https://bineckartor.wordpress.com/2015/11/10/fahrverbote-retten-leben-autoflut-stoppen-jetzt-2/