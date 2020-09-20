# crypter git

## comment installer:

1. ouvrez un terminal et faire un git clone du projet

`git clone https://github.com/dwijesh080200/crypter.git`

2. une fois fini avec le clone deplacer vous vers le dossier ou vous avez clonez le projet

une fois arrivez vous verez 4 dossiers donc:
- `install`
- `python files`
- `script`
- `service`

## installation

1. deplacer vous dans le dosier install et ouvrez un terminal

2. faites

`./install.sh`

3. en cas il vous demande les droit d'execution, donner les droit en typant 

`chmod u+x install.sh`

sur le terminal, puis relancer(./install.sh)

4. une fois lancer, le fichier install.sh installera le librarie cryptography
5. apres il va creer 4 autres dossiers donc:

vous allez inserez les fichiers pour incrypter dans ce dossier
- `toCrypt:`
  - `vous allez inserez les fichiers pour crypter dans ce dossier`

- `crypted:`
  - `ce dosier va contenir le/s fichier/s qui a etait crypter`

- `toDecrypt:`
  - `vous allez inserez les fichier pour decrypter dans ce dossier`

- `decrypted:`
  - `ce dossier va contenir le fichier qui a etait crypter`

6. apres il va copier le service dans 

`/etc/systems/system`

##changer le chemin d'acces
1. ouvrez un terminal depuis de le dossier ou vous avez cloner

2. faites `pwd` pour gagner le chemin. changer le dans chaque fichiers dans les dossiers:
- `python files`
- `script`
- `service`

pour checker si les service on etait bien copier deplacer vous dans 
`/etc/systemd/system`
faites dans un terminal

`cd /etc/systemd/system`

- apres faites un 

`ls`

##crypter et decrypter
- `pour crypter inserez un fichier dans le dossiers toCrypt`
- `pour decrypter inserez un fichier crypter dans le toDecrypt`

##stop service

pour stopper les service faites 

- `sudo systemctl stop crypt.service`
- `sudo systemctl stop decrypt.service`
