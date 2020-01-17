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
   result3=$(( number3+number1/number2 ))
   #UC-5
   result4=$(( number1/number2+number3 ))
   #UC-6
   declare -A arithmeticResult;
   arithmeticResult[result1]="$result1"
   arithmeticResult[result2]="$result2"
   arithmeticResult[result3]="$result3"
   arithmeticResult[result4]="$result4"
   echo "all operation is "${!arithmeticResult[@]}
   #UC-7
   counter=0
   for key in ${!arithmeticResult[@]}
   do
   arithmeticArray[((counter++))]=${arithmeticResult[$key]}
   done
   echo "array is "${arithmeticArray[@]}
else
   echo "please enter valid input"
fi
