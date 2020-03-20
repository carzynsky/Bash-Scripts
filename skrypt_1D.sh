# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 1D
# Usuwanie z zadanego katalogu (pierwszy argument skryptu) 
# wszystkich plików, któ®ych nazwy pokrywają się z nazwami 
# w drugim katalogu (drugi argument). Nie usuwaj podkatalogów. 
# Nie usuwaj równie plików o nazwach pokrywających się 
# z nazwami podkatalogów w drugim katalogu. 
# a) skontroluj, czy podano poprawną liczbę argumentów do 
# skryptu 
# b) upewnij się, że oba katalogi robocze istniej oraz 
# możesz usuwać pliki z pierwszego katalogu
# c) nie usuwaj żadnych plików wykonywalnych
# d) przeprowadź usuwanie także w podkatalogach, 
# istniejących w obydwu katalogach roboczych 

required=2
if [ $# -ne $required ]
then
    echo "Niepoprawna liczba argumentow skryptu!"
    exit 1
fi

function myFunction
{
if [ -d $1 ] && [ -d $2 ] && [ -w $1 ]
then
    for file1 in `ls $1`
    do
        for file2 in `ls $2`
        do
            if [ $file1 == $file2 ]
            then
                if [ ! -d $1/$file1 ] && [ ! -d $2/$file2 ] && [ ! -x $1/$file1 ]
                then
                    rm $1/$file1
                elif [ -d $1/$file1 ] && [ -d $2/$file2 ]
                then
                    myFunction "$1/$file1" "$2/$file2"
                fi
            fi
        done
    done
else
    echo "Blad!"
    exit 1
fi
}
myFunction "$1" "$2"