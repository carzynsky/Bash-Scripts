# !/bin/bash
#
# Arkadiusz Carzynski 241335
#
# Zadanie 2:
# Dane są katalog D (pierwszy parametr skryptu) 
# oraz plik regularny P (drugi parametr skryptu). 
# P zawiera (być może pustą) listę (zbiór wierszy). 
# Należy w D utworzyć puste pliki regularne o nazwach zgodnych z tą listą. 
# Jeżeli jakiś plik już istnieje, to nie powinien zostać zniszczony.

pliki=`cat $2`
for plik in $pliki
do
    if [ ! -e $1/$plik ]
    then
        touch $1/$plik
    fi
done
