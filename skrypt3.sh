# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 3:
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy skasować wszystkie pliki regularne i puste katalogi w D, 
# poza tymi do których my (nasz skrypt) mamy prawo wykonania. 
# Uwaga! Katalogi też mogą mieć prawo wykonania!

for plik in $1/*
do
    if [ ! -f $plik/* ]
    then
        if [ -d $plik -a -e $plik ]
        then 
            rmdir $plik

        elif [ -e $plik ]
        then
            rm $plik
        fi
    fi
done