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
