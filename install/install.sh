#!/bin/bash

sudo apt-get install install python3-pip
sudo apt-get update
pip3 install cryptography

cd /home/user/crypter-decrypter
mkdir toCrypt
mkdir crypted
mkdir toDecrypt
mkdir decrypted

cp /home/user/crypter-decrypter/service/crypt.service /etc/systemd/system/
cp /home/user/crypter-decrypter/service/decrypt.service /etc/systemd/system/
