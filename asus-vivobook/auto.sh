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

# check vpn connectable day (weekday only)
IS_VPN='true'
w=$(date +%u)
if [[ ${w} -ge 6 ]]; then
    logger -p syslog.info "VPN connection is not allowed today."
	IS_VPN='false'
else
    logger -p syslog.info "VPN connection is allowed today."
fi

## Let's start!!!
SLEEP=200
MYPASS="<MYPASS>"
# orchard pass
ORCHARDPASS='<ORCHARDPASS>'
VPNPASS='<VPNPASS>'

# mocp play
mocp -S
mocp -o shuffle,autonext
mocp -v 70
mocp -p

# left-top terminal
lxterminal -t jijisa-mail &
sleep 1

# remove durant.pid file
rm -f ${HOME}/durant.pid
if [[ "${IS_VPN}" = "true" ]]; then
  $HOME/autostart/lxterminal1.xdo $SLEEP $MYPASS $VPNPASS
else
  $HOME/autostart/lxterminal1_novpn.xdo $SLEEP $MYPASS
fi

sleep 3

# right-top terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal2.xdo $SLEEP $MYPASS $ORCHARDPASS

sleep 3

# right-bottom terminal
lxterminal &
sleep 1
$HOME/autostart/lxterminal3.xdo $SLEEP $MYPASS

sleep 3

# left-bottom terminal
lxterminal &
sleep 1
if [[ "${IS_VPN}" = "true" ]]; then
  $HOME/autostart/lxterminal4.xdo $SLEEP $MYPASS
else
  $HOME/autostart/lxterminal4_novpn.xdo $SLEEP $MYPASS
fi

sleep 3

# run firefox
firefox &

# open SKB monthly report document if IS_VPN is true.
if [[ "${IS_VPN}" = "true" ]]; then
  Ym=$(date +%Y%m)
  DOCX="${HOME}/문서/${Ym:0:4}skb/검수문서/${Ym}/${Ym}_*월간보고서.docx"
  libreoffice ${DOCX} &
fi

# last, run evince pdf document
evince $HOME/myread.pdf &
