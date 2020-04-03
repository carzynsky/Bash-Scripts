# Bash-Scripts
Bash scripts written for Operating Systems 2 classes at Wroclaw University of Science. Made on Linux.
## Access permissions
> Firstly you might add standard execute rights for user to each script
```bash
chmod u+x ./skrypt.sh
```
## How to run
> every script starts with # !/bin/bash

> number of parametres depends on each task!
```bash
./script.sh parametr1 parametr2 
```
## Scripts written at classes
- **skrypt8.sh**
  - Dane są katalogi D1 (pierwszy parametr skryptu) oraz d2 (Drugi parametry skryptu). Należy wyświetlić listę (nazwy) plików regularnych o identycznych nazwach w obu katalogach
- **skrypt_1D.sh**
  - Usuwanie z zadanego katalogu (pierwszy argument skryptu) wszystkich plików, których nazwy pokrywają się z nazwami w drugim katalogu (drugi argument). Nie usuwaj podkatalogów. Nie usuwaj równie plików o nazwach pokrywających się z nazwami podkatalogów w drugim katalogu. 
    - a) skontroluj, czy podano poprawną liczbę argumentów do 
  skryptu 
    - b) upewnij się, że oba katalogi robocze istniej oraz 
  możesz usuwać pliki z pierwszego katalogu
    - c) nie usuwaj żadnych plików wykonywalnych
    - d) przeprowadź usuwanie także w podkatalogach, 
  istniejących w obydwu katalogach roboczych 
- **skrypt22.sh**
  - Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu (parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie
- **skrypt32.sh**
  - Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu (parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie. Dodatkowo:
    - a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików,
    - b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już dowiązanie twarde (wcześniej zakładaliśmy, że na pewno nie istnieje)
    - c) zadbaj o to, żeby dowiązania symboliczne byłī stworzone względem katalogu roboczego (pwd)
    - d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie dowiązania do plików z tych podkatalogów w drugim danym katalogu (załóż, że nazwy plików są unikalne)
