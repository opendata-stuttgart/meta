# OK Lab Stuttgart Hardware Meeting Oktober 2015

## Begrüssung / Vorstellrunde

## Todos (vom letzen Monat durchgearbeitet und angepasst)

### arduino-c-esp-software

todos:

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

todos:

 - api-endpunkte für user, location, user_profile
 - hmac auf die node-id
 - location (lat/lon) feld hinzufügen
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

todos:

 - api-monitoring mit push, wenn wieder da
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

todos:

 - script, dass excel-file liest und in api pusht!

### dokumentation allgemein

todos:

 - blogposts von frank / andreas / arne
 - blog für luftdaten.info - hugo mit wercker nach github
 
 
### android app

in progress:

 - daten anzeigen von der api mit diesem androiden
 


