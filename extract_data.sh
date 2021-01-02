#! /bin/bash
cd 098498

grep "Solution time =" *.txt | sed -e 's/_0.txt:Solution time =//' -e 's/_/ /' >t1_98498

mv t1_98498 ..

