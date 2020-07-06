#!/bin/bash
#
# This script is run by $HOME/.config/lxsession/LXDE/autostart.
#

SLEEP=200

sleep 10

# left-top terminal
lxterminal --tabs=jijisa-mail,hcpi1,pvdi1,myshell1 &
sleep 1
$HOME/autostart/lxterminal1.xdo $SLEEP

sleep 5

# right-top terminal
lxterminal --tabs=pvdi4,harden1,durant1,myshell3 &
sleep 1
$HOME/autostart/lxterminal2.xdo $SLEEP

sleep 5

# right-bottom terminal
lxterminal --tabs=pvdi5,harden2,durant2,myshell4 &
sleep 1
$HOME/autostart/lxterminal3.xdo $SLEEP

sleep 5

# left-bottom terminal
lxterminal --tabs=jijisa-vdi,pvdi2,pvdi3,myshell2 &
sleep 1
$HOME/autostart/lxterminal4.xdo $SLEEP

sleep 5

# last run firefox
firefox &
