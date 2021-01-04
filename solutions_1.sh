#! /bin/bash
cd ./098513

#Retirar de cada ficheiro o número máximo de tasks
#sed serve para ir apenas aos ficheiros que terminam apenas em _1.txt, sendo estes aqueles que tem o número máximo de tasks
grep "Solutions =" *.txt | sed -e 's/_1.txt:Solutions =//' -e 's/_/ /' > solutions.txt
