# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 12
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy wypisać dwie liczby: liczbę wszystkich plików 
# regularnych w D oraz liczbę wszystkich bezpośrednich 
# podkatalogów w D. W obu przypadkach należy wziąć pod 
# uwagę jedynie te pliki, do których my (nasz skrypt) mamy prawo wykonania.

numb1=0
numb2=0

for file in `ls $1`
do
    if [ -f $1/$file ] && [ -x $1/$file ]
    then
        numb1=$((numb1 + 1))
    elif [ -d $1/$file ] && [ -x $1/$file ]
    then
        numb2=$((numb2 + 1))
    fi
done
echo "Liczba plikow regularnych: ${numb1}"
echo "Liczba bezposrednich podkatalogow: ${numb2}"