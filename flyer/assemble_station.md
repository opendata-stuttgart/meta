# Station bauen{.allowframebreaks}

Diese Anleitung erläutert den Zusammenbau einer Feinstaubmesstation, wie sie im OK-Lab Stuttgart entwickelt wurde.  

## Einzelteile, die benötigt werden{.allowframebreaks}

|Bauteil|Abbildung|
|:-----------------------------------------|-----------------------------------------------:|
|ESP8266 (WLAN, Prozessor für Datenspeicherung)|![ESP8266](images/sensor/esp8266.jpg){width=13%} <!--  * PPD42NS (Feinstaubsensor) [](images/sensor/ppd.jpg)  -->|
|SDS011 (Feinstaubsensor), ersetzt PPD42NS|![SDS011](images/sensor/sds011.jpg){width=25%}|
|DHT22 (Sensor für Temperatur & Luftfeuchtigkeit)|<!-- ![DHT22](images/sensor/dht22.jpg){width=19%} -->![DHT22](images/sensor/DHT22.jpg){width=9%}|
|Abflussröhren zur Außenmontage (Schutzhülle)|<!-- ![Röhren zur Montage](images/sensor/roehren.jpg){width=49%} -->![Röhren zur Montage](images/sensor/twotubes.jpg){width=29%}|
|Stromversorgung (MicroUSB-Kabel + Netzteil)|<!-- ![Stromversorgung via Micro-USB](images/sensor/usbcharger.jpg){width=49%} -->![Stromversorgung via Micro-USB](images/sensor/usb_plug_cable.jpg){width=19%}|
|Kleinkram (Kabel, LED, ...)|![Dupont-Kabel](images/sensor/cable_dupont.jpg){width=29%}|

* Zugang zu Wifi-Netzwerk (ESSID + Passphrase), optional ein Freifunk-Router

![Alle elektronischen Teile](images/sensor/all_electronic_parts.jpg)


## Zusammenbau{.allowframebreaks}

Siehe Wiki unter \href{https://github.com/opendata-stuttgart/meta/wiki/Zusammenbau-der-Komponenten}{github.com/opendata-stuttgart/meta/wiki/Zusammenbau-der-Komponenten}

![Bauplan SDS](../files/nodemcu-v3-schaltplan-sds011.jpg){width=49%,angle=90}

![Elektronik zusammengebaut für Station](images/sensor/assembled2_annot_150dpi.pdf)

<!-- Für die Montage der einzelnen Komponenten empfehlen sich Dupont-Kabel mit ca. 20 cm Länge (siehe Bestellliste). -->
WICHTIG: Bei Verwendung des SDS011 unbedingt **vor dem Zusammenbau die Firmware aufspielen!**
Es scheint so, als ob die "Original-Firmware" nach Auslieferung auf einen der Pins D1 oder D2 5V schaltet, die zur Beschädigung des SDS011 führen können.

<!-- --- -->

### Anschluss SDS011 an ESP {.allowframebreaks}

Pins sind von RECHTS nach LINKS nummeriert. Beim Verbinden darauf achten, dass die Kabel AUF den Pins stecken, da die meisten Dupont-Kabel auch "NEBEN" die Pins passen.

    SDS011 Pin 1 -> Pin D1 / GPIO5
    SDS011 Pin 2 -> Pin D2 / GPIO4
    SDS011 Pin 3 -> GND
    SDS011 Pin 4 -> unused
    SDS011 Pin 5 -> VU (NodeMCU v3) / VIN (NodeMCU v2)
    SDS011 Pin 6 -> unused
    SDS011 Pin 7 -> unused

<!-- --- -->

### Anschluss des DHT22 an ESP {.allowframebreaks}

Pins sind von LINKS nach RECHTS nummeriert; Vorderseite ist das "Gitter"

    DHT22 Pin 1 -> Pin 3V3 (3.3V)
    DHT22 Pin 2 -> Pin D7 (GPIO13)
    DHT22 Pin 3 -> unused
    DHT22 Pin 4 -> Pin GND

Optional, und besser: DHT22 +(PIN1) auch an 5V(VU), z.B. mit doppelt männlichem Dupont-Kabel auf VU Dupontbuchse aufstecken.

<!-- --- -->

### Einbau der Elektronik in Schutzhülle, bzw. Röhren{.allowframebreaks}

![Zusammenstecken mit Kabelbindern](images/sensor/assembled_fixed.jpg){width=49%}
![Einbau in Röhre](images/sensor/assembled_fixed_in1tube.jpg){width=49%}

Vor dem Einbau die Nummer des Sensors auf die Röhren schreiben.
* Mit zwei Kabelbindern die Teile so zusammenbinden, dass sie genau in die Röhren passen, dabei Kabel nich dazwischen quetschen
* Einbau so, dass der Lüfter des SDS unten ist und auf der Röhrenseite *ohne* Gummidichtung
* Röhre 2 über Elektronik schieben und auf Röhre 1 stecken, dabei USB-Kabel herausführen (siehe Foto Einzelteile)

## Konfiguration der Station{.allowframebreaks}

![Sensorkonfiguration Startseite](images/wificonfig-01.png){width=49%}

![Sensorkonfiguration: Configure Wifi (No Scan)](images/wificonfig-02.png){width=49%}

<-- ![Sensorkonfiguration Configure Wifi](images/wificonfig-03.png){width=49%} -->


* Station einschalten (Stromkabel verbinden)
* Die Station versucht, sich auf den konfigurierten WLAN-Accesspoint zu verbinden
* Wenn das nicht klappt, öffnet der Sensor einen Accesspoint mit dem Namen *Feinstaubsensor-ID*, wobei ID die ChipID (in dezimal) ist.
    * Man verbinde sich mit diesem Wireless-Netzwerk
    * und rufe dann die Seite \href{http://192.168.4.1/}{http://192.168.4.1/} auf, dort kann der Sensor konfiguriert werden
    
        *Achtung:* Der Sensor versucht beim Start eine Verbindung zum WLAN, wenn das nicht funktioniert (nach ca. 10-20 sec.), dann erzeugt er diesen WLAN-Accesspoint (Oft braucht der Rechner auch noch ein bisschen Zeit, bis er das Netz "bemerkt"). Die Konfiguration ist für 300 sec erreichbar, im Zweifel nur SSID und Passwort eintragen, ich hatte schon beim senden, dass der AP schon wieder weg war (Browser meldet Netzwerkfehler). Es gibt einen Reset-Knopf (RST) links neben der USB-Buchse zum Reboot.
    * unter *Configure Wifi* SSID und password des eigenen Netzes eintragen
        * *(0/1)?* bedeutet, dass 1 (=ja) oder 0 (=nein) eingetragen wird (1 für ja/vorhanden, 0 für nein/nicht_da)
        * sinnvolle Voreinstellungen sind (mit SDS011 und DHT Sensoren):

                1 "Senden an luftdaten.info (0/1) ?"
                1 "Senden an madavi.de (0/1) ?"
                0 "Seriell als CSV (0/1) ?"
                1 "DHT Sensor (0/1) ?"
                0 "PPD42NS Sensor (0/1) ?"
                1 "SDS Sensor (0/1) ?"
                0 "BMP Sensor (0/1) ?"
                1 "Auto-Update (0/1) ?"
                0 "Display (0/1) ?"
                3 "Debug output (0-5) ?"
                0 "Senden an eigene API (0/1)?"
    
        * *save*, dann sollte diese Seite erscheinen ansonsten noch einmal RST und von vorne
	
                Credentials Saved
                Trying to connect ESP to network.
                If it fails reconnect to AP to try again

	* die URL kann übrigens wiederverwendet werden, und sieht so aus (MYESSID MYPASSWORD anpassen):
	  [192.168.4.1/wifisave?s=MYESSID&p=MYPASSWORD&send2dusti=1&send2madavi=1&send2csv=0&dht_read=1&ppd_read=0&sds_read=1&bmp_read=0&auto_update=1&has_display=0&debug=3&%CC.%FF%3F%BC%94%FE%3F%CC%3B%FF%3F%0D%0A=0](http://192.168.4.1/wifisave?s=MYESSID&p=MYPASSWORD&send2dusti=1&send2madavi=1&send2csv=0&dht_read=1&ppd_read=0&sds_read=1&bmp_read=0&auto_update=1&has_display=0&debug=3&%CC.%FF%3F%BC%94%FE%3F%CC%3B%FF%3F%0D%0A=0)

## Output auf der seriellen Schnittstelle

Im folgenden ein Beispiel für die Ausgaben auf der seriellen Schnittstelle (USB2serial, Treiber müssen unter Windows und OSX erst installiert werden).

<!-- ![Bauplan PPD](../files/nodemcu-v3-schaltplan.jpg) -->

    output on serial
    mounting FS...
    mounted file system...
    config file not found ...
    6
    Connecting to FREIFUNK
    ....................
    
    * Konfiguration via Browser on http://192.168.4.1/
    
    	Credentials Saved
    	Trying to connect ESP to network.
    	If it fails reconnect to AP to try again
    
    ---- Result from Webconfig ----
    WLANSSID: Freifunk
    DHT_read:  - 1
    PPD_read:  - 0
    SDS_read:  - 1
    BMP_read:  - 0
    Dusti:  - 1
    Madavi:  - 1
    CSV:  - 0
    Display:  - 0
    Custom API:  - 0
    ------
    WiFi connected
                  IP address: 192.168.44.131
    saving config...
    {"SOFTWARE_VERSION":"NRZ-2016-020","wlanssid":"Freifunk","wlanpwd":"","dht_read":true,"ppd_read":false,"sds_read":true,"bmp_read":false,"send2dusti":true,"send2madavi":true,"send2mqtt":false,"send2csv":false,"auto_update":true,"has_display":false,"debug":3,"send2custom":false,"host_custom":"192.168.234.1","url_custom":"/data.php","httpPort_custom":80}
    Starting OTA update ...
    
    
    mounting FS...
    mounted file system...
    reading config file...
    opened config file...
    parsed json...
    6
    Connecting to Freifunk
    .........
    WiFi connected
                  IP address: 192.168.44.131
    saving config...
    {"SOFTWARE_VERSION":"NRZ-2016-028","wlanssid":"Freifunk","wlanpwd":"","dht_read":true,"ppd_read":false,"sds_read":true,"bmp_read":false,"gps_read":false,"send2dusti":true,"send2madavi":true,"send2mqtt":false,"send2lora":false,"send2csv":false,"auto_update":true,"has_display":false,"debug":3,"send2custom":false,"host_custom":"192.168.234.1","url_custom":"/data.php","httpPort_custom":80}
    Starting OTA update ...
    [update] No Update.
    
    ChipId: 
    418466
    Lese SDS...
    Lese DHT...
    Sende an luftdaten.info...
    Sende an madavi.de...
    Auto-Update wird ausgeführt...
    PM10:  11.43
    PM2.5: 6.25
    ------
    Humidity    : 52.90%
    Temperature : 26.50 C
    ------
    Creating data string:
    ## Sending to luftdaten.info (SDS):
    Start connecting to api.luftdaten.info
    Requesting URL: /v1/push-sensor-data/
    418466
    {"software_version": "NRZ-2016-028", "sensordatavalues":[{"value_type":"P1","value":"11.43"},{"value_type":"P2","value":"6.25"},{"value_type":"samples","value":"535701"},{"value_type":"min_micro","value":"101"},{"value_type":"max_micro","value":"32678"}]}
    
    closing connection
    ------

    End connecting to api.luftdaten.info
    ## Sending to luftdaten.info (DHT):
    Start connecting to api.luftdaten.info
    Requesting URL: /v1/push-sensor-data/
    418466
    {"software_version": "NRZ-2016-028", "sensordatavalues":[{"value_type":"temperature","value":"26.50"},{"value_type":"humidity","value":"52.90"},{"value_type":"samples","value":"535701"},{"value_type":"min_micro","value":"101"},{"value_type":"max_micro","value":"32678"}]}
    
    closing connection
    ------    
    End connecting to api.luftdaten.info
    ## Sending to madavi.de:
    Start connecting to www.madavi.de
    Requesting URL: /sensor/data.php
    418466
    {"software_version": "NRZ-2016-028", "sensordatavalues":[{"value_type":"SDS_P1","value":"11.43"},{"value_type":"SDS_P2","value":"6.25"},{"value_type":"temperature","value":"26.50"},{"value_type":"humidity","value":"52.90"},{"value_type":"samples","value":"535701"},{"value_type":"min_micro","value":"101"},{"value_type":"max_micro","value":"32678"}]}
    
    closing connection
    ------
    End connecting to www.madavi.de