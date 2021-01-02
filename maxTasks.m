clear all
close all

%Meter path onde se tem o ficheiro maxTasks guardado
task98498 = load('098498\maxTasks.txt' , 'r');
task98512 = load('098512\maxTasks.txt' , 'r');
task98513 = load('098513\maxTasks.txt' , 'r');

maxTask498 = task98498(:,3);
figure(1)
histogram(maxTask498)
title('Histograma para o número máximo de tasks possíveis - 98498')
xlabel('Número máximo de tasks possíveis')
ylabel('Número de ocorrências')

maxTask512 = task98512(:,3);
figure(2)
histogram(maxTask512)
title('Histograma para o número máximo de tasks possíveis - 98512')
xlabel('Número máximo de tasks possíveis')
ylabel('Número de ocorrências')

maxTask513 = task98513(:,3);
figure(3)
histogram(maxTask513)
title('Histograma para o número máximo de tasks possíveis - 98513')
xlabel('Número máximo de tasks possíveis')
ylabel('Número de ocorrências')

