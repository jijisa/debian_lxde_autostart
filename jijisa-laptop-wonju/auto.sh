#!/bin/bash
#
# This script is run by $HOME/.config/lxsession/LXDE/autostart.
#

SLEEP=200
MYPASS="<my_password>"
VNCPASS="<vnc_password>"

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
lxterminal -t jijisa-vdi &
sleep 1
$HOME/autostart/lxterminal4.xdo $SLEEP $MYPASS $VNCPASS

sleep 3

# last run firefox
firefox &
