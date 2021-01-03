#! /bin/bash
cd ./098498

#Retirar de cada ficheiro o número máximo de tasks
#sed serve para ir apenas aos ficheiros que terminam apenas em _1.txt, sendo estes aqueles que tem o número máximo de tasks
grep "Maximum possible tasks =" *.txt | sed -e 's/_1.txt:Maximum possible tasks =//' > maxTasks.txt
