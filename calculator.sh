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
#Addition
case $ch in
	1)sum=$(echo "$n1+$n2" | bc -l)
		echo "Addition is ="$sum;;
	2)sum=$(echo "$n1-$n2" | bc -l)
		echo"Sub is ="$sum;;

