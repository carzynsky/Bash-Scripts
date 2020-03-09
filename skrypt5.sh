# !/bin/bash
#
# Autor: Arkadiusz Carzynski
# 
# Zadanie 5
# Dany jest katalog D (pierwszy parametr skryptu). 
# Należy wypisać na ekran zawartość wszystkich plików regularnych, 
# które znajdują się w katalogu D i do których my (nasz skrypt)
# mamy prawo zapisu. Kolejność w jakiej pliki zostaną połączone 
# jest nieistotna. W Wydruku treść każdego pliku powinna być 
# poprzedzona nagłówkiem z jego nazwą.

for plik in `ls $1`
do
    if [ -w $1/$file ]
    then
        echo $plik
        cat $plik
    fi
done