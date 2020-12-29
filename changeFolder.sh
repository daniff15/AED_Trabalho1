#! /bin/bash
#Nome da pasta onde querem guardar os ficheiros quando I=1
nomePasta=098498_1
#Path onde estao guardados o ficheiros
cd /home/daniel/Desktop/AED_Trabalho1/AED_Trabalho1
#Se nao criarem pasta antes isto cria, com o $nomePasta
if ! [ -d $nomePasta ]; then
    #Aqui metam o vosso path onde têm as cenas guardadas+ o nome da Pasta onde vai ser guarda a info
    mkdir /home/daniel/Desktop/AED_Trabalho1/AED_Trabalho1/$nomePasta
fi
#Path de onde tao os ficheiros a ignorar o lucro e a nao ignorar o lucro
cd /home/daniel/Desktop/AED_Trabalho1/AED_Trabalho1/098498
re='[0-9]{1,2}_[0-9]{1,2}_1.txt'
for file in *; do
    if [[ $file =~ $re ]];then
        #Path da pasta onde vao ficar guardados os ficheiros com 1 de profit e move-os para essa pasta
        mv $file /home/daniel/Desktop/AED_Trabalho1/AED_Trabalho1/$nomePasta
    fi
done

cd ..