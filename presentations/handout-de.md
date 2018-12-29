**Feinstaubsensor Bauanleitung Kurzversion**


![Bausatz, SDS011, NodeMCU, DHT22](images/Feinstaub-Sensor-Bausatz-e1479558693357.jpg)\
Bausatz \
SDS011, NodeMCU, DHT22\
![Feinstaubsensor SDS011](images/Foto_SDS011-300x261.jpg){width=50%}
![NodeMCU ESP8266-basiertes Board](images/Foto_NodeMCU-300x235.jpg){width=30%}
![DHT22](images/Foto_DHT22-245x300.jpg){width=15%}\
![Schaltplan NodeMCU SDS011 - DHT22](images/nodemcu-v3-schaltplan-sds011.jpg)

**weitere Sensoren** (s. FAQ)

BMP180, BMP280 und BME280 werden per I2C (serieller Bus, mehrere Komponenten teilen sich die gleichen Anschluß-Pins, Beschreibung auf Wikipedia) angeschlossen:

* VCC	->	Pin 3V3
* GND	->	Pin GND
* SCL	->	Pin D4 (GPIO2)
* SDA	->	Pin D3 (GPIO0)

Nach den Anschließen müssen die Sensoren noch in der Konfiguration aktiviert werden. Danach ist ein Neustart notwendig, da die Sensoren beim Starten entsprechend initialisiert werden müssen.


<!--
![Sensor + ESP](images/IMG_6490-e1500917420519-495x400.png){width=30%}

![DHT am Schlauch](images/IMG_6491-495x400.png){width=50%}

![Komplett](images/IMG_6492-e1500917451756-495x400.png){width=50%}

![Einsetzen in den Bogen](images/IMG_6494-e1500917517160-495x400.png){width=30%}

-->

<!--

![](images/feisntaub-software-300x240.png){width=50%}

---

![](images/Firmware-Feinstaub-Einspielen-300x183.png){width=50%}


---

![](images/IMG_6492-e1500917451756-495x400.png){width=50%}

---

![](images/IMG_6493-e1500917485942-495x400.png){width=50%}

---

![](images/IMG_6494-e1500917517160-495x400.png){width=50%}

---

![](images/IMG_6496-e1500917549862-495x400.png){width=50%}

---

![](images/karte-feinstaub-300x205.png){width=50%}

---

![](images/luftdaten-feinstaub-selber-messen-logo.png){width=50%}

---

![](images/multi-300x155.png){width=50%}

---

![](images/nodemcu-v3-schaltplan-sds011.jpg){width=50%}

---

![](images/Screenshot_20170318-234502.png){width=50%}

---

![](images/Screenshot_20170318-234511.png){width=50%}

---

![](images/wlan-config-de-01.png){width=50%}

---

![](images/wlan-config-de-02.png){width=50%}

---

![](images/wlan-config-de-03.png){width=50%}

---

![](images/wlan-config-de-04.png){width=50%}

---

![](images/wlan-config-de-05.png){width=50%}

---
-->
