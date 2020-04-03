# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# Nr. indeksu: 241335
# Zadanie 24
# Napisz skrypt, który wyświetli nazwy wszystkich 
# dowiązań symbolicznych z danego katalogu (parametr wywołania skryptu), 
# a jeśli są to dowiązania poprawne (wskazywane elementy istnieją) to 
# dodatkowo wyświetlona zostanie ścieżka wskazywana przez to dowiązanie

for file in `ls $1`
do
    if [[ -L $1/$file ]]
    then
        echo "Nazwa dowiazania symbolicznego: ${file}"
        echo "Sciezka wskazywana przez dowiazanie: " 
        readlink -f $1/$file
    fi
done