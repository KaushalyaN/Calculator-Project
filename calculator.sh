#!/bin/bash

###############
# Author: Kaushalya
#Date: 15th Feb 2024
#Version: V1

#This is my first project for a simple calculator.

################

echo "Simple Calculator"

sum=0
i="y"

#Take User Input
echo "Enter first number"
read n1
echo "Enter second number"
read n2

#Input Type of Operation
while [ $i = "y"]
do
	echo "1.Addition"
	echo "2.Substarction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "Enter your choice"
	read ch
#Switch Case to Perform
#Calculator Operations

case $ch in
	1)sum=$(echo "$n1+$n2" | bc -l) #Addition
		echo "Addition is ="$sum;;
	2)sum=$(echo "$n1-$n2" | bc -l) #Substraction
		echo "Sub is ="$sum;;
	3)sum=$(echo "$n1*$n2" | bc -l) #Multiplication
		echo "Mul is ="$sum;;
	4)sum=$(echo "$n1/$n2" |bc -l) #Division
		echo "Dev is ="$sum;;
	*)echo "Invalid choice"
esac
echo "Do you want to continue?"
read i
if [$i!="y"]
then
	exit
fi
done
