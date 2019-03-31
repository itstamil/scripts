### check_avail_iface ###
#!/bin/bash
if [ -z "$1" ]
  then
    echo "Missing Interface "
    echo "Run Script With ./check_avail_iface.sh <iface_need_to_be_checked>"
else
        cat /sys/class/net/enp1s0/operstate
        STATUS=$?
if [ $STATUS -eq 1 ];
then
echo "not"
else
echo "find"
fi

fi
