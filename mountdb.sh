#! /bin/sh
# /etc/init.d/mountdb
#

# Some things that run always
touch /var/lock/mountdb

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting script mountdb "
    ssh db -N -M &
    ;;
  stop)
    echo "Stopping script blah"
    echo "Could do more here"
    ;;
  *)
    echo "Usage: /etc/init.d/mount {start|stop}"
    exit 1
    ;;
esac

exit 0

