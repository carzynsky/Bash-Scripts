# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 7
# Dane są katalog D (pierwszy parametr skryptu) oraz nazwa P 
# (drugi parametr skryptu). Należy skasować wszystkie puste 
# (o zerowej wielkości) pliki regularne w D. Należy też 
# utworzyć w D plik regularny o nazwie P, które będzie
# zawierał listę usuniętych plików.

deleted=$2
touch $deleted
for file in `ls $1`
do
    if [[ ! -s $1/$file ]]
    then
        echo "Usuwam plik: $file" >> $deleted
        rm $file
    fi
done