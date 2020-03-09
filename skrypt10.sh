# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 10
# Dane są katalogi D1 (pierwszy parametr skryptu) 
# oraz D2 (drugi parametr skryptu). Należy z D1 usunąć 
# wszystkie pliki regularne, które mają swoje odpowiedniki 
# w D2 (tzn. w D2 też są plikami regularnymi o tej samej nazwie).

for fileInD1 in `ls $1`
do
    for fileInD2 in `ls $2`
    do
        if [ $fileInD1 == $fileInD2 ]
        then
            rm $1/$fileInD1
        fi
    done
done