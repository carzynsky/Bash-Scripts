# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 9
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy usunąć wszystkie bezpośrednie podkatalogi D. 
# Zawartość usuwanych katalogów należy wcześniej 
# przenieść do D. W zadaniu można wykorzystać zagnieżdżoną petlę for.

for file in `ls $1`
do
    if [ -d $1/$file ]
    then
        for file2 in `ls $file`
        do
            mv $1/$file/$file2 $1
            rm $1/$file2
        done
    fi
done