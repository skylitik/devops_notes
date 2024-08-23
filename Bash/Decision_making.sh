#!/bin/bash

read [[-p]] "Enter a number: " NUM
echo

if [ $NUM [[-gt]] 100 ]
then
	echo "We have entered in IF block. "
	sleep 3
	echo "Your Number is greater than 100"
	echo
	date
[[fi]]	

echo "Script execution completed successfully."

################################################

#version 2
#!/bin/bash
  2
  3 read -p "Enter a number: " NUM
  4 echo
  5
  6 if [ $NUM -gt 100 ]
  7 then
  8    echo "We have entered in IF block. "
  9    sleep 3
 10    echo "Your Number is greater than 100"
 11    echo
 12    date
 13 else
 14    echo "You have entered number less than 100."
 15    fi
 16
 17 echo "Script execution completed successfully."
################################################

#version 3

#!/bin/bash

value=$(ip a | grep -v LOOPBACK | grep -ic mtu)

if [ $value [[-eq]] 1 ]
then
	echo "1 Active Network Interface found. "
elif [ $value [[-gt]] 1 ]
then
	echo "Found multiple active Interface. "
else
	echo "No Active interface found. "
fi	
################################################

#version 4

#!/bin/bash

value=$(ip a | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
        echo "1 Active Network Interface found. "
elif [ $value -gt 1 ]
then
        echo "Found multiple active Interface. "
else
        echo "No Active interface found. "
fi
