#! /bin/bash
cd ./098513

grep "Best total profit =" *.txt | sed -e 's/_0.txt:Best total profit =//' -e 's/_/ /' >profits.txt