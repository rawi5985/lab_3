#!/bin/bash
# Authors : Your Name & Your partner's name
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem

echo "input a file name : "
# read numOne
read file
echo "enter an expression: "
read regex

#search for the file using grep
egrep $regex $file
# count phone nmbers
echo " Number of phone numbers in regex_practive.txt: "
# any 3 numbers - any 3 - any 4 numbers
egrep -c "^[0-9][0-9][0-9]- [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt
#count number of emails in regex_practice
echo "Number of emails in regex_practice.txt: "

egrep -c "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" regex_practice.txt
#print list of phone numbers in 303 area code
echo "Phonee numebrs in 303 area code: "
egrep -o "^3-3-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$" regex_practice.txt
#store list of emails in regex ina file called email_results.txt, remove file to make sure it doesnt exist also
rm email_results.txt
egrep "^.+@geocities.com$" regex_practice.txt >> email_results.txt




