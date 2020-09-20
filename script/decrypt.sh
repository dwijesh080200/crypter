#!/bin/bash

cd /home/user/crypter-decrypter/toDecrypt
array=($(echo *))

cd /home/user/crypter-decrypter/decrypted
In_Crypted="$(echo *)"

for file in ${array[*]}
do
	if [[ "$In_Crypted" == "$file.encrypted" ]]
	then
		echo "present $file"
	else
		cd /home/user/crypter-decrypter
		python3 decrypt.py "$file"
		mv /home/user/crypter-decrypter/toDecrypt/"$file.decrypted" /home/user/crypter-decrypter/decrypted/"$file.decrypted"
	fi
done
