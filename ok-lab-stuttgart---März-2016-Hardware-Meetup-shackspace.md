# ok lab stuttgart - März Hardware Meetup shackspace

## Review letztes Protokoll
- Liste machen von Blogposts
- archive.luftdaten.info tut jetzt

## Vorstellungsrunde
Andreas: Softwareentwickler und Verursacher von den Feinstabdingern
Thomas: Software löten und Geldspenden
Ulrich: HiddenAgenda ist hidden
maxim: Software .macher. hat schon sensoren angeschaut.
mathieu: softwareentwickler. interessiert an vielen disziplinen durch das projekt.
jan: lablead; pr-schlampe; sonst kann er nichts ;)
stefan: software; privat auch anderes
Stefan: will nen sensor.
Reinhold: war in der bücherei. einfach mal anschauen
Horst: war in der bücherei vor 2 wochen. hat selbst gemessen.
frank: baut auch sensoren. misst. macht marketing.
david: hilft überall aus. schon länger dabei
rainer: 1992 das letzte mal gelötet. betreibt internetplatformen.

## Feinstaub Messgeräte

## api.luftdaten.info nutzen!!
weil: dusti.xyz - Registry Expiry Date: 2016-03-31T23:59:59.0Z 
und wir wollen es nicht verlängern.
In den nächsten 2-3 Wochen muss man alle Sensoren neu flashen.
Die neue Firmware hat nun sogar eine Versionierung.

## howto für eine der komplexeren firmwares
Es gibt aktuell 3 verschiedene Firmwares
- mfandreas <= Sogar mit Anleitung- https://github.com/opendata-stuttgart/sensors-software/tree/master/esp8266-arduino/ppd42ns-wifi-dht
- martins - https://github.com/opendata-stuttgart/sensors-software/tree/master/esp8266-arduino/multisens
- rajkos - https://github.com/opendata-stuttgart/sensors-software/tree/master/esp8266-arduino/ppd42ns-wificonfig-ppd-sds-dht
Da wir jetzt Geld gesammelt haben werden 300 Sensoren gebaut.
Jetzt muss eine Firmware ausgewählt werden auf die man sich einigt und die muss supportet werden.


## werden die 300 sensoren mit DHT22 produziert?
Kostet so 2 Euro und sollten investiert werden da schon bekannt ist das es korrelationen gibt.

12€+3€+2€+...

Luftdrucksensor für Luftdruckmessung:
Es gäbe ein Bosch BMP180

Diskussionen um Lautstärkemessung:
Wenn es was fertiges gäbe was schon ein ausgewertets Signal liefern würde dann könnte man es einbauen.

Diskussionen um Speichererweiterung:
SDKarten könnten Daten puffern wenn das Netzwerk mal weg ist

Gassensoren wären auch cool vorallem NOx-Messung
zu billige Sensoren helfen am Ende dann auch nicht weiter


## Bestellungen über okfde am laufen?

ja. jan kümmert sich.

(fill list in here!)


## Horst - Messungen Firma Grimm - Messungen vorstellen
Er hat die Daten und Unterlagen auch noch in elektronischer Form und wird es uns zu Verfügung stellen
http://www.grimm-aerosol.com/products/environmental-dust-monitors/index.php

http://wiki.grimm-aerosol.de/index.php?title=ENVIRO-11E

Messprinzip: Mini-LAS
Modell 107E

Wichtig sind immer lange Messversuche damit man die Auswirkungen auswerten kann.

## Was misst eigentlich der von uns eingesetzte Sensor?
Wir können keine direkten Werte messen und vergleichen
Die Messwerte streuen.
Veränderungen im Messwert können allerdings dargestellt werden.
Bestes Beispiel ist natürlich Silvester.
Wir wollen unsere Geräte an das LUWB heranführen. Aber 100% genau gibts bei den Messverfahren eh nicht.

Unsere Intension: Messung über Zeit und über Dauer - als relative Werte, nicht absolut. Wir messen alle 30 Sekunden und bekommen so eine stetige Kurve. Dann die Werte in eine Karte einzeichnen.

Gesundheitliche Fragen könnte beantworten:
Prof. Dr. med. Norbert Krug, FRaunhofer Institut Toxikologie und experimentelle Medizin

## Es gibt einen alternativen Sensor
Nova PM Sensor SDS011
Ist noch etwas teurer. Einer wurde gekauft und wird bespielt.
Der preis ist halt zwei einhalb mal so teuer aber die Werte sind gut.

## Datenblatt Sensor:
http://www.seeedstudio.com/wiki/images/4/4c/Grove_-_Dust_sensor.pdf

## Uni Stuttgart Dr. Frick - Email wegen Kontrollmessung - 3-5 Sensoren um die Anlage (Offizielle Messung) auf der Insel Reichenau
Er ist Denkmalschützer und misst die Feinstaubbelastung in einer Kirche auf der Insel Reichenau.
Er spielt gerade mit mittelmäßig teuerer Hardware im Rahmen von 500Euro.
Wir sehen ob unsere Geräte so gut sind wie seine 500Euro sensoren.
Und er sieht ob er Geld sparen kann.
Die ganzen Versuche finden alle Indoor statt. Es geht nur um die Staubbewegung in der Kirche.
riedelwerk hätte frei und würde/könnte da auch mit ein paar Sensoren und Internet(UMTS) hinfahren.

## Die betterplaceaktion
ist beendet. Die Piraten wollen noch 300Euro dem Projekt nachschießen/spenden.

## Neue Spendenkampanie
für Zubehör starten? Oder die aktuelle Aktion offen lassen?
Kann man noch spenden? Auf luftdaten.info geht es noch

## Im Juni ist der Cycle hack 24-26 Juni
Was ist das? http://cyclehack.com
Ideen zum Thema Fahrad quasi ein Fahrrad Hackathon
Es werden ca. 5 Mitspieler gesucht die da mitorganisieren würden.
Eventuell in den Waagenhallen Fahrad für Afrika
Eventuell auch im shackspace.
Besprechen wir beim nächsten Termin

## Hat sich jemand mozilla sensorweg angeschaut.
noch sieht man zuwenig

## Mitshubishi hat einen PM2,5 Sensor
Hat sich das jemand angeschaut? - schweigen

## Es gibt einen Haufen Fanpost und positive Resonanz
Der meiste Input wird von Jan abgedeckt.
Aber für den 19. März wird für Schorndorf jemand gesucht der dort vorstellen könnte.
Wer hätte da Zeit? David überlegt.

## basteln!

ENDE 2037
