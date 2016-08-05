vorherige Seite: [Bezugsquellen Einzelteile](/opendata-stuttgart/meta/wiki/Bezugsquellen-Einzelteile) - nächste Seite: [Firmware einspielen](/opendata-stuttgart/meta/wiki/Firmware-einspielen)  
  
Für die Montage der einzelnen Komponenten empfehlen sich Dupont-Kabel mit ca. 20 cm Länge (siehe Bestellliste).
  
![Schaltplan SDS011 + DHT22](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/files/nodemcu-v3-schaltplan-sds011.jpg)  
  
### Anschluß SDS011  
Pins sind von RECHTS nach LINKS nummeriert, beim Verbinden darauf achten, das die Kabel wirklich auf den Pins stecken, da die meisten Dupont-Kabel auch "neben" die Pins passen  
SDS011 Pin 1 -> Pin D1 / GPIO5  
SDS011 Pin 2 -> Pin D2 / GPIO4  
SDS011 Pin 3 -> GND  
SDS011 Pin 4 -> unused  
SDS011 Pin 5 -> VU (NodeMCU v3) / VIN (NodeMCU v2)  
SDS011 Pin 6 -> unused  
SDS011 Pin 7 -> unused  
  
### Anschluß des DHT22  
Pins sind von LINKS nach RECHTS nummeriert, Vorderseite ist das "Gitter"  
DHT22 Pin 1 -> Pin 3V3 (3.3V)  
DHT22 Pin 2 -> Pin D7 (GPIO13)  
DHT22 Pin 3 -> unused  
DHT22 Pin 4 -> Pin GND  
  
![Schaltplan PPD42NS + DHT22](https://raw.githubusercontent.com/opendata-stuttgart/meta/master/files/nodemcu-v3-schaltplan.jpg)  

### Anschluß des PPD42NS  
Pins sind von RECHTS nach LINKS nummeriert  
PPD42NS Pin 1 => GND  
PPD42NS Pin 2 => Pin D5 /GPIO14  
PPD42NS Pin 3 => VU (NodeMCU v3) / VIN (NodeMCU v2)  
PPD42NS Pin 4 => Pin D6 / GPIO12  
PPD42NS Pin 5 => unused  
  
### Montage in der Röhre  

Einbau NodeMCU:  
  
Die NodeMCU wird in einem der senkrechten Teile der Röhre montiert. Die beiden dafür benötigten Bohrungen liegen auf der (gedachten/geplanten) Rückseite, der Abstand entspricht dem Abstand der Befestigungslöcher der NodeMCU. Von unten sollten die beiden Bohrungen ca. 2-3 cm mehr als die Länge der NodeMCU entfernt sein. So ist die NodeMCU zum Anstecken des USB-Kabels/Netzteils noch gut erreichbar. Die NodeMCU sollte dann mit den Pins zur Röhrenmitte via Kabelbinder befestigt werden.  
  
  
Variante SDS011:  
  
  
Variante PPD42NS:  
  
Bei der Montage in der Röhre ist darauf zu achten, das der PPD42NS im Betrieb möglichst senkrecht steht. Nur so ist ein maximaler Luftstrom durch den PPD42NS gegeben. Für unsere bisher montierten Geräte wurde dieser dafür im waagerechten Teil mit einem schmalen (3,2mm) Kabelbinder durch zwei Bohrungen befestigt. Die beiden Bohrungen liegen dabei oben mittig ca. 2 cm auseinander.  
  
Nach der Montage von NodeMCU und Sensor sollten die Bohrungen und Kabelbinder mit Gaffa-Tape/Gewebeklebeband möglichst wasserdicht verklebt werden.  
  
Wird auch der Temperatursensor verbaut, kann dieser einfach in der Röhre nach oben gelegt werden. Die Dupont-Kabel sind meist stabil genug, den Sensor oben zu halten.  
  
  
  
### Anschluß von I2C-Hardware (z.B. Luftdruck-Sensor BMP180, Display ...)
Die Firmware kann I2C-Hardware auslesen, welche wie folgt angeschlossen ist:  
Vcc => 3V3  
Gnd => GND  
SDA => D3  
SCL => D4  

Die I2C-Hardware muss für 3.3V ausgelegt sein. Zur Zeit ist in der Firmware der Anschluß eines Luftdrucksensors BMP180 und von Displays mit SSD1306-Treiber vorgesehen. Weitere Sensoren können aber noch eingebunden werden.  