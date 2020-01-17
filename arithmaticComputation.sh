#!/bin/bash -x

read -p "enter 1st input " number1
read -p "enter 2nd input " number2
read -p "enter 3rd input " number3

if [ $number1 -ge 0 -a $number2 -ge 0 -a $number3 -ge 0 ]
then
   #UC-2
   result1=$(( number1+number2*number3 ))
   #UC-3
   result2=$(( number1*number2+number3 ))
   #UC-4
   result3=$(echo "scale=2;$number3+$number1/$number2" | bc)
   #UC-5
   result4=$(echo "scale=2;$number1/$number2+$number3" | bc)
else
   echo "please enter valid input"
fi
