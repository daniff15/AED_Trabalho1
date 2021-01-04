#! /bin/bash
cd ./098513
#Retirar de cada ficheiro o num_viables, o número de subconjuntos de tarefas válidas
#somar todos os num_viables, de modo a obter o numero de subconjuntos de tarefas válidas para cada numero mecanográfico 
total_viable_tasks=$( grep "Viable job selections =" *.txt | awk '{print $5}' | paste -sd+ - | bc)

echo $total_viable_tasks
