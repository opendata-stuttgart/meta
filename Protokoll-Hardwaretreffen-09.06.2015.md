# Protokoll OK Lab Hardwaretreffen 9.6.2015

19:14h: Es geht los.

IRC-Channel: #opendata-stuttgart auf freenode


## TOP 1: Vorstellungsrunde

Alle stellen sich vor, manche haben schonmal was mit Hardware gemacht, manche nicht. Aktuell sind 8 Leute anwesend.


## TOP2: aktueller Hardwarezustand

mfandreas stellt vor:
* Um den Feinstaub zu messen versuchen wir immernoch den PPD42NS zu verwenden, da es ja auch Studien gibt, die sagen, dass es zumindest grundsätzlich mal keine total kaputten Werte liefert.
* Netzwerk/WLAN-Fähigkeit wird mit ESP8266 realisiert (am besten ESP8266-12 nehmen, da dort viele Pins rausgeführt werden)
* Vorher gabs Versuche mit Arduino und RaspberryPi, welche allerdings für "Production-Use" nicht geeignet sind (zu teuer, zu viel Stromverbrauch, ...)
* Es wird erklärt wie der PPD42NS funktioniert und warum es nicht ganz trivial ist die Ansteuerung/Auswertung mit dem ESP zu machen (für Arduino gabs ne fertige lib)

Zwischenzeitlich sind nochmal 2 Gäste gekommen.

* Die verschiedenen ESP-Versionen haben alle den gleichen Chip verbaut, sind aber auf unterschiedlichen Boards verbaut, die unterschiedlich viele Pins rausgeführt haben.
* Allgemeine Infos, die Namen der Sensoren etc gibts hier: https://github.com/opendata-stuttgart/meta/wiki

Demos durch asmaps:
* asmaps stellt seinen Temperatur und Luftfeuchtigkeits-Node vor und zeigt wie es Dinge tut und auf die API pushed
* Frage: Was passiert wenn zwischendrin Internet/WLAN/whatever schiefgeht?
* Antwort: Errorhandling ist nur sehr rudimentär implementiert, muss man bei Gelegenheit noch besser machen

Das WLAN fällt aus. Gleich mal schauen was dann mit dem Temperatur-Node passiert - bevor das WLAN wiederkommt gibts allerdings eine PANIC, er rebootet und ist im "Warte auf WLAN-Verbindung"-Modus.
Es wird mit Code von der Festplatte improvisiert.

Demo durch mfandreas:
* mfandreas zeigt was er so gebastelt hat und erklärt, dass es anfangs schwierig war den ESP mit einem offenen (passwortlosen) WLAN (Freifunk) zum Laufen zu kriegen.
* Es folgt eine Erklärung was Freifunk ist und dass jeder für 20€ einen Node bei sich hinstellen sollte. Mehr Info: http://freifunk-stuttgart.de/ (Das Internet geht wieder)
* Danach zeigt mfandreas sienen Code um den Feinstaub-Sensor mit dem ESP auszulesen. Es kommen Werte raus, ob die "richtig" sind ist ungeklärt und muss noch evaluiert werden.


## TOP3: next Treffen

* Hardware-Treffen in 4 Wochen (immer am 2. Dienstag im Monat)
* "Reden"-Treffen und andere Projekte machen in 2 Wochen in der Stadtbibliothek (imemr am 4. Dienstag im Monat)


## TOP4: Was machen

Da fast niemand eigene Teile dabei hat ist leider nicht viel zum "Machen" da. 
Daher der Aufruf: Bitte Teile bestellen und nächstes Mal mitbringen, wenn Zeit auch schon bisschen mit rumprobieren.
asmaps grad schreibt an einem Blog Post wo alles was gebraucht wird mit Links aufgelistet sein wird und eine kleine Anleitung wie man die ersten Schritte begeht:
http://blog.asw.io/esp8266/2015/06/06/howto-flash-esp8266-with-nodemcu-firmware/

ansonsten gibts es auch im GitHub Wiki eine rudimentäre Liste.

Hilfe zum ersten Flashen gibt es bereits jetzt hier:
http://blog.madflex.de/first-steps-with-the-esp8266/
