#!/bin/bash

for i in {1..100..1}
do
    ping -c1 $1 > /dev/null
    if [ $? -eq 0]
    then   
        echo "+++++++++++++++++++++++"
        echo "The system is reachable"
        echo "+++++++++++++++++++++++"
        sleep 8
        continue
    else
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        echo "The system is not reachable. Check the IP or the Internet Connection"
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        break
    fi
done