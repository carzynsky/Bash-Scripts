# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 4
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy ponumerować wszystkie pliki regularne w D 
# poprzez dodanie na ich końcu członu .N, 
# gdzie N to kolejne liczy naturalne (1, 2, 3 itp.). 
# Numeracja powinna przebiegać według wielkości plików
# (w dowolną stronę).

katalog=$1
pliki=`ls --sort=size $katalog`
var=1

for plik in $pliki
do
    mv $plik $plik.$var
    var=$((var + 1))
done