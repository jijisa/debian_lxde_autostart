#!/bin/bash
#
# This script is run by $HOME/.config/lxsession/LXDE/autostart.
#

SLEEP=200
MYPASS="<my_password>"
VNCPASS="<vnc_password>"

sleep 10

# left-top terminal
lxterminal &
sleep 5
$HOME/autostart/lxterminal1.xdo $SLEEP $MYPASS

sleep 5

# right-top terminal
lxterminal &
sleep 5
$HOME/autostart/lxterminal2.xdo $SLEEP $MYPASS

sleep 5

# right-bottom terminal
lxterminal &
sleep 5
$HOME/autostart/lxterminal3.xdo $SLEEP $MYPASS

sleep 5

# left-bottom terminal
lxterminal -t jijisa-vdi &
sleep 5
$HOME/autostart/lxterminal4.xdo $SLEEP $MYPASS $VNCPASS

sleep 5

# last run firefox
firefox &
