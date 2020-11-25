#!/bin/bash/

echo "Welcome to User Registration Problem"

#UC-1 User validate First Name
read -p "Enter First name : " FirstName

pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $FirstName =~ $pattern ]]
then
       echo "First name is valid"
else
       echo "First name is invalid"
fi
