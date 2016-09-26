### Im Software-Sourcecode  
  
In der Datei ext_def.h können die Parameter für den WLAN-Zugang und die verwendeten Sensoren konfiguriert werden.  
Die Parameter-Bezeichnungen sollten eigentlich selbsterklärend sein.  
Voreingestellt ist:  
- Freifunk wird als WLAN-Zugang verwendet, dies sollte auf das eigene WLAN geändert werden, wenn Freifunk nicht verfügbar ist.  
- Gesendet werden die Daten an api.luftdaten.info (SEND2DUSTI)
- Ausgelesen wird der Feinstaubsensor SDS011 (SDS_READ) und der Temperatursensor DHT22 (DHT_READ)

### Per WifiConfig

Wenn der Feinstaub-Sensor keine Verbindung zum vorkonfigurierten WLAN aufbauen kann, wird der Sensor selbst zum Hotspot. Der Name dieses Hotspots ist "Feinstaubsensor-<chipid>". Die Chip-ID sollte man bei dieser Gelegenheit gleich notieren, da diese für den Eintrag in der Sensor-Datenbank benötigt wird. Mit diesem Hotspot kann sich jedes WLAN-fähige Gerät (Tablet, Handy,...) verbinden. Unter Android sieht dies z.B. so aus:  
Über den Status Bar:  
![Android WLAN über Taskbar](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/images/wificonfig/WLAN%20Auswahl%201.png)  
  
Über Einstellungen -> WLAN  
![Android über Einstellungen->WLAN](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/images/wificonfig/WLAN%20Auswahl%202.png)  
  
Nach dem Verbinden mit dem WLAN kann die Konfigurationsseite im Browser über die Adresse http://192.168.4.1/ geöffnet werden. Es sollte die folgende Seite angezeigt werden, auf der auch noch einmal die Chip-ID erscheint (spätestens jetzt notieren für den Eintrag in der Datenbank):  
![Startseite WifiKonfig](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/images/wificonfig/Startbild%20WLAN%20Config.png)  

Nach dem Klick auf "Config Wifi" kann es einen Moment dauern (es wird nach verfügbaren Netzwerken gesucht) und es öffnet sich folgende Seite:  
![Konfiguration Sensor](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/images/wificonfig/Konfiguration%20Sensor.png)  

Dort können die Zugangsdaten für das WLAN eingetragen werden. Die restlichen Felder konfigurieren die eingebauten Sensoren und sollten nicht ausgefüllt werden müssen. Leere Felder behalten die vorkonfigurierten Standardwerte. Nach dem Speichern der Konfiguration verbindet sich der Sensor dann mit dem eingetragenen WLAN.

### Löschen der Konfiguration  
  
Sollte die Konfiguration doch einmal zurückgesetzt werden müssen, folgende Schritte durchführen:  
  
I. Installation [ESP8266 filesystem uploader] (https://github.com/esp8266/arduino-esp8266fs-plugin)

* Download des Plugins von [https://github.com/esp8266/arduino-esp8266fs-plugin/releases/tag/0.2.0]
* Entpacken nach <home_dir>/Arduino/tools/ESP8266FS/tool/esp8266fs.jar), die Verzeichnisse unter Arduino müssen evtl. noch angelegt werden.
* Neustart Arduino IDE
* Unter dem Menüpunkt "Werkzeuge" sollte es jetzt einen Eintrag "ESP8266 Sketch Data upload" geben
  
  
II. Konfiguration löschen  
* Öffnen Sie den Sensor-Sketch, im entsprechenden Verzeichnis sollte sich kein Ordner data befinden, bzw. sollte der Ordner leer sein
* Unter "Werkzeuge" "ESP8266 Sketch Data upload" auswählen, die Meldung, daß keine Daten gefunden wurden, mit Ja/Yes bestätigen
* Die IDE sollte jetzt Daten auf den ESP8266 schreiben. Sollte eine Fehlermeldung erscheinen, den Vorgang wiederholen, evtl nochmals mit gedrücktem Flash-Button
