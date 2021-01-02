#! /bin/bash
<<<<<<< HEAD
cd ./098512
=======

cd 098512

>>>>>>> 77cd3a10a310f10c4f6fbf384e7aefbbaaefd691
#grep "Solution time =" *.txt | cut -b 1-2,4-5,28- >t0
grep "Solution time =" *.txt | sed -e 's/_0.txt:Solution time =//' -e 's/_/ /' >t1_98512.txt

mv t1_98512.txt ..

