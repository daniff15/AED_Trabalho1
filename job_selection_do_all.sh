#! /bin/bash
NMec=98498
I=1
d=$(printf "%06d" $NMec)
if [ -d $d ]; then
  d=$(printf "%06d" $NMec)
  rm -vf $(grep -L End $d/*)
fi
for T in {39..39}; do
  for P in {5..8}; do
    if (( $T >= $P )); then
      f=$(printf "%06d/%02d_%02d_%d.txt" $NMec $T $P $I)
      if [ ! -e $f ]; then
        echo $f
        ./prog $NMec $T $P $I
      fi
    fi
  done
done
