#! /bin/bash
cd ./098512

grep "Maximum possible tasks =" *.txt | sed -e 's/_1.txt:Maximum possible tasks =//' > maxTasks.txt
