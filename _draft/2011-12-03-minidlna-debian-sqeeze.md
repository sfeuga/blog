---
layout: post

title: "minidlna under Debian sqeeze"

categories:
- Computer science

tag:
- GNU\Linux
- Operating system

published: false
---
[http://minidlna.sourceforge.net/](http://minidlna.sourceforge.net/)

To install it :

    sudo aptitude install build-essential libexif-dev libjpeg62-dev libid3tag0-dev libflac-dev libvorbis-dev libsqlite3-dev libavformat-dev libuuid1 libavcodec-dev libavutil-dev
    sudo cd /tmp/
    sudo wget http://downloads.sourceforge.net/project/minidlna/minidlna/1.0.22/minidlna_1.0.22_src.tar.gz
    sudo tar -zxvf minidlna_1.0.22_src.tar.gz
    sudo cd minidlna-1.0.22
    sudo make
    sudo cp minidlna /usr/sbin/
    sudo cp minidlna.conf /etc/
    sudo cat linux/minidlna.init.d.script &gt; /etc/init.d/minidlna
    sudo chmod +X /etc/init.d/minidlna
    sudo chmod 755 /etc/init.d/minidlna
    sudo update-rc.d minidlna defaults
    sudo nano /etc/minidlna.conf

My minidlna.conf conf :

    port=8200
    network_interface=eth0
    media_dir=V,/media/Data/data/Video/Series
    media_dir=V,/media/Data/data/Video/Films
    media_dir=V,/media/Data/data/Video/Docs
    friendly_name=SrvData - DLNA
    db_dir=/var/cache/minidlna
    log_dir=/var/log
    inotify=yes
    enable_tivo=no
    strict_dlna=no
    notify_interval=900
    serial=12345678
    model_number=1

Optional : Remove unused lib-dev `sudo aptitude remove libexif-dev libjpeg8-dev libjpeg62-dev libid3tag0-dev libflac-dev libvorbis-dev libsqlite3-dev libavformat-dev libavcodec-dev libavutil-dev`
