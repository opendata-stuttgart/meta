### Im Software-Sourcecode  
  
In der Datei ext_def.h können die Parameter für den WLAN-Zugang und die verwendeten Sensoren konfiguriert werden.  
Die Parameter-Bezeichnungen sollten eigentlich selbsterklärend sein.  
Voreingestellt ist:  
- Freifunk wird als WLAN-Zugang verwendet, dies sollte auf das eigene WLAN geändert werden, wenn Freifunk nicht verfügbar ist.  
- Gesendet werden die Daten an api.luftdaten.info (SEND2DUSTI)
- Ausgelesen wird nur der günstigere Feinstaubsensor PPD42NS (PPD_READ)

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

