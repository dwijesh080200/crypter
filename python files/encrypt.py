from cryptography.fernet import Fernet
import os
import sys
fichier = sys.argv[1]

file = open('key.key','rb')
key = file.read()
file.close	

os.chdir("/home/user/crypter-decrypter/toCrypt")

with open( fichier,'rb') as f:
	data = f.read()

fernet = Fernet(key)
encrypted = fernet.encrypt(data)

nom_encrypt = fichier+'.encrypted'
#write encypted file

with open(nom_encrypt,'wb') as f:
	f.write(encrypted)
	


