# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 11
# Dany jest katalog D (pierwszy parametr skryptu). 
# Dla wszyskich plików w D, do których my (nasz skrypt) 
# mamy prawo zapisu należy zmienić czas ostatniej 
# modyfikacji na czas aktualny.

for file in `ls $1`
do
    if [ -w $1/$file ]
    then
        touch -m $1/$file
    fi
done