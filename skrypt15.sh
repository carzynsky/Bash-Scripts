# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 15

# Dany jest katalog D (pierwszy parametr skryptu). 
# Wypisać nazwy wszystkich plików w D. W przypadku 
# plików będących bezpośrednimi podkatalogami D 
# wypisać też nazwy plików które te podkatalogi 
# zawierają. Ograniczyć się do dwóch poziomów 
# (tzn. wypisać tylko zawartość D i jego podkatalogów, 
# nie głębiej). Wypisywane nazwy powinny posiadać 
# odpowiednią ścieżkę (np. D/plik, D/podkatalog/plik). 
# Można użyć zagnieżdżonej pętli for.

for file in `ls $1`
do
    echo $1/$file
    if [ -d $1/$file ]
    then
        for file2 in `ls $1/$file`
        do
            echo $1/$file/$file2
        done
    fi
done