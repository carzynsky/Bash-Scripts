# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 14
# Dany jest katalog D (pierwszy parametr skryptu). 
# Do wszystkich plików regularnych w D należy dodać 
# prawo zapisu dla właściciela, a katalogom należy 
# odebrać prawo wykonania dla właściciela.

for file in `ls $1`
do
    if [ -f $1/$file ]
    then
        chmod u+w $1/$file
    elif [ -d $1/$file ]
    then
        chmod u-x $1/$file
    fi
done