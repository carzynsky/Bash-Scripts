# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 13
# Dane są katalog D (pierwszy parametr skryptu), 
# plik regularny P (drugi parametr skryptu) oraz 
# ścieżka W (trzeci argument skryptu). P zawiera 
# (być może pustą) listę (zbiór wierszy). Należy 
# utworzyć plik regularny W, którego zawartość 
# będzie połączoną zawartością plików regularnych 
# z listy z pliku P. Kolejność w jakiej pliki 
# zostaną połączone powinna być zgodna z kolejnością 
# na liście P. Treść każdego pliku powinna być 
# poprzedzona nagłówkiem z jego nazwą.
# todo

w=$1/$3
touch w
for file in `cat $1/$2`
do
    echo $1/$file >> $w
    echo `cat $1/$file` >> $w
    echo $'\n' >> $w
done
