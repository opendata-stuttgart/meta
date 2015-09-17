# OK Lab Stuttgart Hardware Meeting September 2015

## Begrüssung / Vorstellrunde

## Todos

### lua software

tut das richtige; ist nur nicht schön

todos:

 - ppd42ns in plugin-framework einbauen  [prio low]

### arduino-c-esp-software

todos:

 - http-code + ppd-code zusammenführen @David
 - dokumentieren @David

### arduino prototyp

todos:

 - ppd42ns-serial mit LAN code versehen und auf API pushen lassen

### API

todos:

 - api-endpunkte für node, user, location, user_profile
 - hmac auf die node-id
 - location (lat/lon) feld hinzufügen
 - ratelimiting (max 1 push alle 10s)

### Outdoor

todos:

 - gehäuse öffnungen gleich hoch (parallel)
 - gefestigung des sensors und des nodemcu im rohr (schaumstoff oder 3d-druck)
 - reinigung (a) lüfter [spannungsverdoppler vs. kondensator-schaltung] (b) öffnen und staubsaugen?
 - unten kommt ein micro-usb-kabel raus
 - evt. eine platine um alles draufzustecken
 - usb-netzteile auf vorrat?
 - wie lange ist usb-strom spezifiziert

### Battery

todos:

 - stromverbrauch des prototyps messen
 - 25min schlafen / 5min arbeiten evaluieren
 - alternative spannungsquellen
 - pufferakku (evt. eine billige powerbank (i.e. billig-anker))

### REST-Clients

done: 
 - api last_update client mit push wenn kein update in den letzten 5 minuten ... - 
   https://github.com/opendata-stuttgart/feinstaub-monitoring-client-python/

todos:

 - api last_update client mit push/mail/twitter-notify/telegram/sms(twilio,??)... - https://github.com/opendata-stuttgart/feinstaub-monitoring-client-python/
   -> wenn wieder da, dann auch nachricht!!
 - wetter (aktuelles/vorhersage) (forecast.io/openweathermap) in die api pushen [Andreas]
 - kindle client mit wettervorhersage [Andreas]


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
 - blog für luftdaten.info - jekyll auf github
 