#! /bin/bash
cd ./098498
#Retirar de cada ficheiro o lucro
#sed serve para ir apenas aos ficheiros que terminam apenas em _0.txt, sendo estes aqueles que tem os profits
grep "Best total profit =" *.txt | sed -e 's/_0.txt:Best total profit =//' -e 's/_/ /' > best_profits.txt
