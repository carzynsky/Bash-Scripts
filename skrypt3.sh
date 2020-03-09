# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 3:
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy skasować wszystkie pliki regularne i puste katalogi w D, 
# poza tymi do których my (nasz skrypt) mamy prawo wykonania. 
# Uwaga! Katalogi też mogą mieć prawo wykonania!

for plik in `ls $1`
do
    if [ ! -f $1/$plik/* ]
    then
        if [ -d $1/$plik -a -e $1/$plik ]
        then 
            rmdir $1/$plik

        elif [ -e $1/$plik ]
        then
            rm $1/$plik
        fi
    fi
done