#!/bin/bash/

echo "Welcome to User Registration Problem"

#This UC describes validation of User Name(UC-1 and UC-2) and it contains all possible combination of names such as
# Kajol Patira, Kajol D'Patira, Kajol Doe-Patira, Kajol d'Patira

read -p "Enter name : " FullName

pattern="^[A-Z]{1}[a-zA-Z]{2,}[ ]([a-zA-Z]{1,}'?-?)?[A-Z]{1}[a-zA-Z]{2,}$"

if [[ $FullName =~ $pattern ]]
then
        echo "User Name is valid"
else
        echo "User Name is invalid"
fi

#UC-3 describes validation of an User Email.

read -p "Enter your email address : " email
#abc.xyz@BridgeLabz.co.in
pat="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+[.]+[a-z]{2,4}([.][a-z]{2})*$"

if [[ $email =~ $pat ]]
then
        echo "Email address $email is Valid"
else
        echo "Email address $mail is Invalid"
fi

