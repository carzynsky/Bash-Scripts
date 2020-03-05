# !/bin/bash
#
# Autor: Arkadiusz Carzynski
#
# Zadanie 1:
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy zmienić nazwy wszystkich plików w D, 
# do których my (nasz skrypt) mamy prawo zapisu, 
# przez dopisanie dodatkowego członu ".old".

katalog=$1

for plik in $katalog/*
do
    if [ -w $plik ]
    then
        mv $plik $plik.old
    fi
done