#!/bin/bash
read  -t 10 -p 'autostart continue?(Y/n) ' CORA
case "${CORA}" in
    Y|y) 
        echo "autostart continued..."
        ;; 
    N|n)
        echo "autostart aborted..."
		echo "aborted" > $HOME/cora
        exit 0
        ;;
    *)
        echo "Invalid input. do the default action(autostart continued...)"
        ;;
esac
echo "continue" > $HOME/cora
