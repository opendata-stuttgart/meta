vorherige Seite: [Eintrag in der Datenbank](/opendata-stuttgart/meta/wiki/Eintrag-in-unsere-Datenbank) - nächste Seite: [Pinouts NodeMCU v2, v3](/opendata-stuttgart/meta/wiki/Pinouts-NodeMCU-v2,-v3)  

### api.luftdaten.info (aka dusti.api)  
Die API nimmt die Sensordaten entgegen und dient als Basis für die grafische Darstellung auf http://opendata-stuttgart.github.io/feinstaub-map/ . Zudem werden die Daten der "öffentlichen" Sensoren einmal täglich (gegen 8:00 Uhr) als CSV exportiert und unter http://archive.luftdaten.info/ zur Verfügung gestellt.  

### madavi-API  
Die API nimmt ebenfalls die Sensordaten entgegen und speichert diese in ein CSV-Dateien (jeweils eine Datei pro Sensor und Tag). Desweiteren werden die Daten in einer RoundRobin-Datenbank abgelegt und via RRDTools grafisch aufbereitet. Das Dateiarchiv kann unter https://www.madavi.de/sensor/csvfiles.php abgerufen werden, die grafische Darstellung unter https://www.madavi.de/sensor/graph.php .  