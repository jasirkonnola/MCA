#!/bin/bash

read -p "Enter a password : " ps
length=${#ps}

if [[ $length -le 8 ]];then
        echo "The password must atleast 8 characters"
elif ! [[ $ps =~ [A-Z] ]];then
        echo "Password should be contain Uppercase letters"
elif ! [[ $ps =~ [a-z] ]];then
        echo "Password should be contain Lowercase letters"
elif ! [[ $ps =~ [0-9] ]];then
        echo "Password should be contain Numbers"
elif ! [[ $ps =~ [[:punct:]] ]];then
        echo "Password should be contain some special characters"
else
        echo "Strong Password."
fi
