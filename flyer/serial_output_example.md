# Output auf der seriellen Schnittstelle

Im folgenden ein Beispiel für die Ausgaben auf der seriellen Schnittstelle, wenn das USB-Kabel mit einem Rechner verbunden ist (USB2serial).

* Treiber müssen unter Windows und OSX erst installiert werden, dann ein Terminalprogramm o.ä. verwenden
* Linux: `screen /dev/ttyUSB0` oder mit GUI z.B. `cutecom`

~~~

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

~~~
