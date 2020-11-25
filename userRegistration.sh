#!/bin/bash/

echo "Welcome to User Registration Problem"

read -p "Enter name : " FullName

pattern="^[A-Z]{1}[a-zA-Z]{2,}[ ][a-zA-Z]{1,}'?-?[A-Z]{1}[a-zA-Z]{2,}[ ]?([a-zA-Z]{1,})$"

if [[ $FullName =~ $pattern ]]
then
        echo "User Name is valid"
else
        echo "User Name is invalid"
fi

