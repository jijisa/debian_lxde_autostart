#!/bin/bash
#
# This script is run by $HOME/.config/lxsession/LXDE/autostart.
#

# check internet connectivity.
ping -c1 -q -W 3 google.com. > /dev/null 2>&1
if [ $? -ne 0 ]; then
    logger -p syslog.error "Abort: Internet is not connected!"
    exit 1
fi

SLEEP=200
MYPASS="<password>"

sleep 10

# left-top terminal
lxterminal -t jijisa-mail &
sleep 1
$HOME/autostart/lxterminal1.xdo $SLEEP $MYPASS

sleep 3

# right-top terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal2.xdo $SLEEP $MYPASS

sleep 3

# right-bottom terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal3.xdo $SLEEP $MYPASS

sleep 3

# left-bottom terminal
#lxterminal -t jijisa-vdi &
lxterminal &
sleep 1
$HOME/autostart/lxterminal4.xdo $SLEEP $MYPASS

sleep 3

# last run firefox
firefox &
