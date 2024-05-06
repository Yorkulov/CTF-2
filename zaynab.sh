#!/bin/bash

flag="CTF{Bo'ldi charchading uyingga bor.}"

correct_password="Brazil"

read -sp "Parolni kiriting: " entered_password
echo

if [[ "$entered_password" == "$correct_password" ]]; then
    echo "Flag: $flag"
else
    echo "Incorrect Password"
    echo "WTF!"
fi
