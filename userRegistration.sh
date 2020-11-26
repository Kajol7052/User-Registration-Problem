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

#UC-4 describes validation of pre-defined mobile format such as
#+1 8087339090,+91 8087339090,+912 8087339090,8087339090,08087339090,+1-8087339090,+91-8087339090, +912-8087339090

read -p "Enter mobile number : " mob
pat="^(\+[0-9]{1,3}[- ]?)?[0-9]{10}$"
if [[ $mob =~ $pat ]]
then
        echo "Valid Number"
else
        echo "Invaild Number"
fi

#UC-5 describes user need to follow predefined password format
# RULE-1 : Password contain minimum 8 characters

read -p "Enter Password that contains Minimum 8 Characters : " password
pat="^[a-zA-Z0-9]{8,}$ "
if [[ $password =~ $pat ]]
then
        echo "Valid Password"
else
        echo "Invaild Password"
fi


#UC-6 describes user need to follow predefined password format
# RULE-2 : Password contains atleast one Upper Case

read -p "Enter Password that contains atleast one Upper Case : " password
pat="^(?=.*?[A-Z])(?=.*?[a-z]).{8,}$ "
if [[ $password =~ $pat ]]
then
        echo "Valid Password"
else
        echo "Invaild Password"
fi


#UC-7 describes user need to follow predefined password format
# RULE-3 : Password contains atleast one Numeric Number

read -p "Enter Password that contains atleast one Numeric Number : " password
pat="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$"
if [[ $password =~ $pat ]]
then
        echo "Valid Password"
else
        echo "Invaild Password"
fi


#UC-8 describes user need to follow predefined password format
# RULE-4 : Password contains atleast one Special Character

read -p "Enter Password that contains atleast one Special Charater : " password
pat="^(?=.*[a-z])(?=.*[A-Z])(?=.*?[0-9])(?=.*[#$@!%&*?]).{8,}$"
if [[ $password =~ $pat ]]
then
        echo "Valid Password"
else
        echo "Invaild Password"
fi
