#!/bin/bash
#
# This script is run by $HOME/.config/lxsession/LXDE/autostart.
#

SLEEP=200
MYPASS="<my password>"
INTERVAL=3

sleep 30

# left-top terminal
lxterminal -t jijisa-mail &
sleep 1
$HOME/autostart/lxterminal1.xdo $SLEEP $MYPASS

sleep $INTERVAL

# right-top terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal2.xdo $SLEEP $MYPASS

sleep $INTERVAL

# right-bottom terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal3.xdo $SLEEP $MYPASS

sleep $INTERVAL

# left-bottom terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal4.xdo $SLEEP $MYPASS

sleep $INTERVAL

# last run firefox
firefox &
