vorherige Seite: [Zusammenbau der Komponenten](/opendata-stuttgart/meta/wiki/Zusammenbau-der-Komponenten) - nächste Seite: [Sensor-Konfiguration](/opendata-stuttgart/meta/wiki/Konfiguration-der-Sensoren)  

## Firmware einspielen und Konfig löschen
  
Variante 1:

* Arduino IDE unter <https://www.arduino.cc/en/Main/Software> downloaden und installieren.  
  
* Erweiterung für ESP8266 installieren. Anleitung unter <https://github.com/esp8266/Arduino>.  
  
* Die Dateien der zu installierenden Firmware-Version (aktuell: <https://github.com/opendata-stuttgart/sensors-software/tree/master/esp8266-arduino/ppd42ns-wificonfig-ppd-sds-dht>) in ein Verzeichnis kopieren. Achtung, Github zeigt im Browser zunächst eine HTML-Version an, zuerst oben rechts über dem Sourcecode auf "Raw" klicken, dann das Ergebnis speichern.  
  
* Alle in der Readme.md aufgelisteten Bibliotheken installieren, dabei auf die angegebenen Versionen achten.  
  
* Die Datei ext_def.h an die eigenen Anforderungen anpassen (WLAN-Einstellungen, Sensoren, wohin mit den Daten, ...)  
  
* Nach einem Neustart der IDE sollte sich die INO-Datei ohne Fehlermeldung auf die NodeMCU hochladen lassen.  
  
  
  
Variante 2:

* Installation der Arduino IDE und der Erweiterterung für ESP8266 wie oben.

* Download der fertig übersetzten Firmware von <https://www.madavi.de/sensor/update/data/latest.bin>  
  
* Unter Windows die Kommandozeile, unter Linux/MacOS ein Terminal öffnen  
  
* Windows: %USERPROFILE%\AppData\Local\Arduino15\packages\esp8266\tools\esptool\0.4.8\esptool.exe -vv -cd nodemcu -cb 57600 -ca 0x00000 -cp COM11 -cf _Pfad_zur_heruntergeladenen_Firmwaredatei_ (der Port hinter '-cp' muss gegebenenfalls angepasst werden)  
  
* Linux/MacOS: ~/Library/Arduino15/packages/esp8266/tools/esptool/0.4.8/esptool -vv -cd nodemcu -cb 57600 -ca 0x00000 -cp /dev/cu.wchusbserial1410 -cf _Pfad_zur_heruntergeladenen_Firmwaredatei_ (der Port hinter '-cp' muss gegebenenfalls angepasst werden)  
  
* Den passenden Port erfährt man zum Beispiel, indem man die NodeMCU am gewünschten Port anschließt und danach die Arduino IDE startet. Unter 'Werkzeuge -> Port' sind die verfügbaren Port zu sehen, meist ist recht einfach der Port mit der NodeMCU erkennbar. Die IDE danach wieder schließen, da sonst dieser Port blockiert ist.  
  
  
Löschen der Konfiguration:  
  
Variante 1:  

Über die Arduino IDE lässt sich die gespeicherte Konfiguration mit dem Plugin ["ESP8266 Sketch data upload"] (https://github.com/esp8266/arduino-esp8266fs-plugin) löschen. Das Plugin nach Anleitung installieren. Beim Ausführen des Plugins kommt eine Meldung, dass das Daten-Verzeichnis leer ist, und ob man ein leeres SPIFFS Image hochladen möchte. Diese Meldung mit "Ja" beantworten. Der Upload der 3 MB kann dann etwas dauern. Wenn der Upload fertig ist, kann die NodeMCU neu gestartet werden.  
  
Variante 2:  
  
Das Vorgehen entspricht Variante 2 des Firmware einspielens. Als "Firmware"-Datei die Datei [ppd42ns-wificonfig-ppd-sds-dht.spiffs.bin] (https://github.com/opendata-stuttgart/sensors-software/raw/master/esp8266-arduino/ppd42ns-wificonfig-ppd-sds-dht/ppd42ns-wificonfig-ppd-sds-dht.spiffs.bin) herunterladen. Der Aufruf des esptool muss dann geändert werden bei "-ca 0x00000" auf "-ca 0x100000" und der Pfad zur "Firmware"-Datei auf den eben erfolgten Download.