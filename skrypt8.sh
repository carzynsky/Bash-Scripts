# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 8
# Dana są katalogu D1 (pierwszy parametr skryptu) 
# oraz d2 (Drugi parametry skryptu). Należy wyświetlić 
# listę (nazwy) plików regularnych o identycznych nazwach 
# w obu katalogach

for file1 in `ls $1`
do
    for file2 in `ls $2`
    do
        if [ $file1 == $file2 ] && [ -f $1/$file1 ] && [ -f $2/$file2 ]
        then
            echo $file1
        fi
    done
done
