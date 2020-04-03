# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# Nr. indeksu: 241335
#
# Zadanie 32
# # Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu 
# (parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu 
# (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie. 
# Dodatkowo:
# # a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików,
# # b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już 
# dowiązanie twarde (wcześniej zakładaliśmy, że na pewno nie istnieje)
# # c) zadbaj o to, żeby dowiązania symboliczne byłī stworzone względem 
# katalogu roboczego (pwd)
# # d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie 
# dowiązania do plików z tych podkatalogów w drugim danym katalogu 
# (załóż, że nazwy plików są unikalne)

required=2
if [ $# -ne $required ]; then
    echo "Niepoprawna liczba argumentow!"
    exit 1
fi

function myFunction
{
    if [ -d $1 ] && [ -w $2 ] && [ -x $1 ]; then
        for file in `ls $1`
        do
            if [ -x $1/$file ] && [ -f $1/$file ]; then
                if [ $1/$file -ef $2/$file ]; then
                    echo "W katalogu ${2} istnieje juz dowiazanie twarde dla tego pliku!"
                else
                    ln $1/$file $2/$file
                fi
            elif [ -d $1/$file ]; then
                ln -s `realpath --relative-to=$2 $1`/$file $2/$file
                myFunction "$1/$file" "$2"
            fi
        done
    else
        echo "Blad!"
        exit 1
    fi
}

myFunction "$1" "$2"
