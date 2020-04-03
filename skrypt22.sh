# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# Nr. indeksu: 241335
#
# Zadanie 22
# Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś 
# katalogu (parametr wywołania skryptu) utworzy dowiązania twarde 
# w drugim katalogu (parametr wywołania skryptu), zaś dla 
# podkatalogów utworzy on dowiązania miękkie.

for file in `ls $1`
do
    if [ -x $1/$file ] && [ -f $1/$file ]; then
        ln $1/$file $2/$file
    elif [ -d $1/$file ]; then
        ln -s $1/$file $2/$file
    fi
done