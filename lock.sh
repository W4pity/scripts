#! /bin/sh

import -window root ~/tmp/lock1.png
convert ~/tmp/lock1.png -paint 1x1 ~/tmp/lock5.png
i3lock -i ~/tmp/lock5.png
