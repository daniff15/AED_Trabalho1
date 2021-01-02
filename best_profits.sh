#! /bin/bash
cd ./098498

grep "Best total profit =" *.txt | sed -e 's/_0.txt:Best total profit =//' > best_profits.txt
