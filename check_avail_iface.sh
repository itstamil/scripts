### check_avail_iface ###
#!/bin/bash
if [ -z "$1" ]
  then
    echo "Missing Interface "
    echo "Run Script With ./check_avail_iface.sh <iface_need_to_be_checked>"
else
        cat /sys/class/net/$1/operstate
        STATUS=$?
if [ $STATUS -eq 1 ];
then
echo "The Interface " $1 " is not Available "
else
echo "The Interface " $1 " is Available "
fi

fi
