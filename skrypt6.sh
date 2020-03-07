# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 6
# Dane są katalogi D1 (pierwszy parametr skryptu) 
# oraz D2 (drugi parametr skryptu). Należy przesunąć 
# wszystkie pliki regularne, do których my (nasz skrypt) 
# mamy prawo wykonania z D1 do D2. Pozostałe pliki w katalogu 
# nie powinny być ruszane.

katalog1=$1
katalog2=$2

for plik in $katalog1/*
do
    if [ -e $plik ]
    then
        mv $plik $katalog2
    fi
done