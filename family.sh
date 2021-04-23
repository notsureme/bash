#!/bin/bash

familysum(){
	result="name: $name   family: $family  age:$age nathional:$nationalcode" 
	echo $result
	echo $result>>resultfamily.txt
	echo "$result"
}


echo ">>Register Data number 1"
echo ">>Read All Data number 2"
echo ">>Read Specific one number 3"
read input

if [ $input -eq 1 ]
then
	echo "Please Enter your Name: "
	read name
	echo "Enter Your Family: "
	read family
	echo "Enter your Age: "
	read age
	echo "Enter National Code: "
	read nationalcode
	familysum 
fi

if [ $input -eq 2 ]
then
	cat  resultfamily.txt
fi

if [ $input -eq 3 ]
then
	echo "National Code: "
	read nationalcode2

	cat resultfamily.txt | grep $nationalcode2 
	
fi



