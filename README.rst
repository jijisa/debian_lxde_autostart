Debian LXDE autostart
=========================

This is a repo about autostarting my linux desktop environment using xdotool.

I'm using lxde desktop on debian 10 (buster).

How to use it
---------------

In your home directory, download this source.::

   $ git clone https://github.com/jijisa/debian_lxde_autostart.git autostart

Install xdotool package.::

   $ sudo apt- y install xdotool

Copy one of directories to $HOME/autostart.::

   $ cp -a asus-vivobook $HOME/autostart

Edit $HOME/.config/lxsession/LXDE/autostart.::

   $ vi $HOME/.config/lxsession/LXDE/autostart
   ...
   @bash -c "$HOME/autostart/auto.sh"

Edit auto.sh and lxterminal[1-4].xdo in $HOME/autostart/.

Now, when x-window starts, auto.sh will run and it calls 
xdo scripts to set up your desktop.

