#!/bin/bash`

counter=0

while [ $counter [[-lt]] 20 ]
do
	echo "Looping..."
	echo "Value of counter is $counter."
	counter=$(( $counter + 1 ))
	sleep 1
done