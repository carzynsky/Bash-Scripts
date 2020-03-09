# !/bin/bash
#
# Autor: Arkadiusz Carzynski
#
# Zadanie 1:
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy zmienić nazwy wszystkich plików w D, 
# do których my (nasz skrypt) mamy prawo zapisu, 
# przez dopisanie dodatkowego członu ".old".

for plik in `ls $1`
do
    if [ -w $1/$plik ]
    then
        mv $plik $plik.old
    fi
done