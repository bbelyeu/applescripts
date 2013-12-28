#! /bin/bash
#  This script will reboot the macs.  It needs to be added as a cronjob and run as root.


# Test to see if anyone is logged in.
LOGGED_IN=`who | awk '{print $1}' | uniq | wc -l`; if [ $LOGGED_IN -gt 0 ] ; then USER_ON=TRUE ; else USER_ON=FALSE ; fi
 
case $USER_ON in
    TRUE)
          # Someone is logged in, send them a message that the system will be rebooting.
          shutdown -r +5
          /Library/Scripts/Reboot\ Script/reboot.app
          ;;
 
    FALSE)
          # Nobody is logged in, reboot.
          shutdown -r now
          ;;
    *)
          # USER_ON wasn't TRUE of FALSE?
          exit 2
          ;;
esac
exit 1