# Protokolle OK Lab Treffen 

## Termine  

* Stadtbücherei (OK Lab): jeden 4. Dienstag im Monat
* Shackspace (Hardware): jeden 2. Dienstag im Monat

## Daten:


<!--
* [[2017-12-26]] Stadtbücherei
* [[2017-12-12]] Shackspace
* [[2017-11-28]] Stadtbücherei
* [[2017-11-14]] Shackspace
* [[2017-10-24]] Stadtbücherei
* [[2017-10-10]] Shackspace
* [[2017-09-26]] Stadtbücherei
* [[2017-09-12]] Shackspace
* [[2017-08-22]] Stadtbücherei
* [[2017-08-08]] Shackspace
* [[2017-07-25]] Stadtbücherei
* [[2017-07-11]] Shackspace
* [[2017-06-27]] Stadtbücherei
* [[2017-06-13]] Shackspace
* [[2017-05-23]] Stadtbücherei
* [[2017-05-09]] Shackspace
* [[2017-04-25]] Stadtbücherei
* [[2017-04-11]] Shackspace
* [[2017-03-28]] Stadtbücherei
* [[2017-03-14]] Shackspace
* [[2017-02-28]] Stadtbücherei
* [[2017-02-14]] Shackspace
* [[2017-01-24]] Stadtbücherei
* [[2017-01-10]] Shackspace
* [[2016-12-27]] Stadtbücherei
* [[2016-12-13]] Shackspace
* [[2016-11-22]] Stadtbücherei
* [[2016-11-08]] Shackspace
* [[2016-10-25]] Stadtbücherei
* [[2016-10-11]] Shackspace
* [[2016-09-27]] Stadtbücherei
* [[2016-09-13]] Shackspace
* [[2016-08-23]] Stadtbücherei
* [[2016-08-09]] Shackspace
* [[2016-07-26]] Stadtbücherei
* [[2016-07-12]] Shackspace
* [[2016-06-28]] Stadtbücherei
* [[2016-06-14]] Shackspace
* [[2016-05-24]] Stadtbücherei
* [[2016-05-10]] Shackspace
* [[2016-04-26]] Stadtbücherei
* [[2016-04-12]] Shackspace
-->
* [[2016-03-22|ok lab stuttgart März 2016 Meetup Stadtbücherei]] Stadtbücherei 
* [[2016-03-08|ok-lab-stuttgart---März-2016-Hardware-Meetup-shackspace]] Shackspace
* [[2016-02-23|ok lab stuttgart Februar 2016 Meetup Stadtbücherei]] Stadtbücherei
* [[2016-02-09|ok lab stuttgart Februar 2016 Hardware Meetup shackspace]] Shackspace
* [[2016-01-26|Protokoll OK Lab Treffen Januar 2016 Stadtbücherei]] Stadtbücherei
* [[2016-01-12|ok lab stuttgart Januar 2016 Hardware Meetup shackspace]] Shackspace
* [[2015-12-22|Protokoll OK Lab Treffen Dezember 2015 Stadtbücherei]] Stadtbücherei
* [[2015-12-08|]] Shackspace
* [[2015-11-24|Protokoll OK Lab Treffen November 2015 Stadtbücherei]] Stadtbücherei
* [[2015-11-10|OK Lab Stuttgart Hardware Meeting November 2015]] Shackspace
* [[2015-10-27|Protokoll OK Lab Treffen Oktober 2015 Stadtbücherei]] Stadtbücherei
* [[2015-10-13|OK Lab Stuttgart Hardware Meeting Oktober 2015]] Shackspace
* [[2015-09-22|ok lab stuttgart September 2015 Meetup Stadtbücherei]] Stadtbücherei
* [[2015-09-08|OK Lab Stuttgart Hardware Meeting September 2015]] Shackspace
* [[2015-08-25|Protokoll OK Lab Treffen August 2015 Stadtbücherei]] Stadtbücherei
* [[2015-08-11|Protokoll OK Lab Lua hacking August 2015 shackspace]] Shackspace
* [[2015-07-28|Protokoll OK Lab Treffen Juli 2015 Stadtbücherei]] Stadtbücherei
<!-- 
* [[2015-07-14|]] Shackspace
-->
* [[2015-06-23|Protokoll OK Lab Treffen Juni 2015 Stadtbücherei]] Stadtbücherei
* [[2015-06-09|Protokoll Hardwaretreffen 09.06.2015]] Shackspace
<!-- 
* [[2015-05-26|]] Stadtbücherei 
-->
* [[2015-05-12|OK Lab Stuttgart Hardware Meeting Mai 2015]] Shackspace
* [[2015-04-28|Agenda OK Lab Stuttgart Treffen April 2015]] Stadtbücherei

## Anmerkungen

* Don't use the following characters in your wiki page's titles: `\ / : * ? " < > |`
    * Martin adds dashes to the list: `-`  

Date generation via commandline, 2nd and 4th Tuesday of month:

    for y in {2015..2017}; do for m in {01..12};  do d=$(ncal -1 -M  -N -m $m $y|awk 'NR==3{print $3}'); if [ $d -lt 10 ] ; then d="0$d";fi; echo "* [[$y-$m-$d]] Shackspace";d=$(ncal -1 -M  -N -m $m $y|awk 'NR==3{print $5}'); echo "* [[$y-$m-$d]] Stadtbücherei";done;done|tac
