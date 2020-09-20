#!/bin/bash

sudo apt-get install install python3-pip
sudo apt-get update
pip3 install cryptography

cd /home/user/crypter-decrypter
mkdir toCrypt
mkdir crypted
mkdir toDecrypt
mkdir decrypted
python3 key.py

cp /home/user/crypter-decrypter/service/crypt.service /etc/systemd/system/
cp /home/user/crypter-decrypter/service/decrypt.service /etc/systemd/system/

sudo systemctl start crypt.service
sudo systemctl enable crypt.service
sudo systemctl start decrypt.service
sudo systemctl enable decrypt.service
