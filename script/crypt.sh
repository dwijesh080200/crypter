#!/bin/bash

cd /home/user/crypter-decrypter/toCrypt
array=($(echo *))

cd /home/user/crypter-decrypter/crypted
In_Crypted="$(echo *)"

for file in ${array[*]}
do
	if [[ "$In_Crypted" == "$file.encrypted" ]]
	then
		echo "present $file"
	else
		cd /home/user/crypter-decrypter
		python3 encrypt.py "$file"
		mv /home/user/crypter-decrypter/toCrypt/"$file.encrypted" /home/user/crypter-decrypter/crypted/"$file.encrypted"
	fi
done
