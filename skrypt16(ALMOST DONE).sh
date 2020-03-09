# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 16
# Dane są katalog D (pierwszy parametr skryptu) 
# oraz plik regularny P (drugi parametr skryptu). 
# P zawiera (być może pustą) listę (zbiór wierszy). 
# Należy wypisać różnice między D i P tzn. wypisać 
# listę plików, które są w D, ale nie ma ich na liście 
# P oraz takich, które są na liście P, ale nie ma ich w 
# katalogu D. W zadaniu można wykorzytać jedną zagnieżdżoną 
# pętlę for.

touch both only_d only_p
if [[ ! -s $2 ]]
then
    echo "Plik jest pusty!"
fi
for file in `cat $2`
do
    for file2 in `ls $1`
    do
        if [ $file == $file2 ]
        then
            echo $file >> both
        else
            echo $file > only_p
        fi
    done
done
