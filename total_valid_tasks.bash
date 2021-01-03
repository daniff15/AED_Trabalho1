#! /bin/bash
cd ./098513

total_viable_tasks=$( grep "Viable job selections =" *.txt | awk '{print $5}' | paste -sd+ - | bc)

echo $total_viable_tasks