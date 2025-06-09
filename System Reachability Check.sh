#!/bin/bash

#This will run the ping command 100 times with an 8 seconds of delay if the system is reachable
#If the system is not reachable then the ping will stop and show message
for i in {1..100..1}
do
    #Start the ping command but do not display the output
    ping -c1 $1 > /dev/null
    if [ $? -eq 0]
    then   
        echo "+++++++++++++++++++++++"
        echo "The system is reachable"
        echo "+++++++++++++++++++++++"
        #Add an 8 seconds of delay before we run the next command
        sleep 8
        continue
    else
        #If the ping fails then print the message below and exit
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        echo "The system is not reachable. Check the IP or the Internet Connection"
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        break
    fi
done
