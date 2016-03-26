---
layout: post

title: "apcupsd Config & Webmin Module"

categories:
- Computer science

tag:
- GNU\Linux
- Operating system

published: false
---

First of all, install [apcupsd](http://www.apcupsd.org/) with the commande `sudo apt-get install apcupsd apcupsd-doc apcupsd-cgi`.

The Webmin Module can be downloaded at [http://download.webmin.com/download/modules/apcupsd-0.81-2.wbm.gz](http://download.webmin.com/download/modules/apcupsd-0.81-2.wbm.gz).

__Configurables options for the APC UPS Daemon__ :

* Configuration file : `/etc/apcupsd/apcupsd.conf`
* Time interval for update screens (in sec) : `30`
* Path to multimon.cgi : `/usr/lib/cgi-bin/apcupsd/multimon.cgi`
* Path to upsfstats.cgi : `/usr/lib/cgi-bin/apcupsd/upsfstats.cgi`
* Path to upsstats.cgi : `/usr/lib/cgi-bin/apcupsd/upsstats.cgi`
* Path to upsimage.cgi : `/usr/lib/cgi-bin/apcupsd/upsimage.cgi`
* Start apcupsd command : `/etc/init.d/apcupsd start`
* Stop apcupsd command : `/etc/init.d/apcupsd stop`

According to [http://www.apcupsd.com/manual/manual.html#checking-your-configuration-file](http://www.apcupsd.com/manual/manual.html#checking-your-configuration-file) if you have a USB UPS, the essential elements of your `apcupsd.conf` file should look like the following:

    ## apcupsd.conf v1.1 ##
    UPSCABLE usb
    UPSTYPE usb
    DEVICE
    LOCKFILE /var/lock
    UPSCLASS standalone
    UPSMODE disable

Then you must edit the file `/etc/default/apcupsd` and change the `no` of the `ISCONFIGURED` with a `yes`.

My file :

    ## apcupsd.conf v1.1 ##
    UPSCABLE usb
    UPSTYPE usb
    DEVICE
    POLLTIME 60
    LOCKFILE /var/lock
    SCRIPTDIR /etc/apcupsd
    PWRFAILDIR /etc/apcupsd
    NOLOGINDIR /etc
    ONBATTERYDELAY 6
    BATTERYLEVEL 5
    MINUTES 3
    TIMEOUT 0
    ANNOY 300
    ANNOYDELAY 60
    NOLOGON disable
    KILLDELAY 0
    NETSERVER on
    NISIP 127.0.0.1
    NISPORT 3551
    EVENTSFILE /var/log/apcupsd.events
    EVENTSFILEMAX 10
    UPSCLASS standalone
    STATTIME 0
    STATFILE /var/log/apcupsd.status
    LOGSTATS off
    DATATIME 0
