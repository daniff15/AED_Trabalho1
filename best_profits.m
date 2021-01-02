clear all
close all

%Meter path onde se tem o ficheiro best_profit guardado
prof98498 = load('C:\Users\HP OMEN\Documents\MATLAB\AED\098498\profits.txt' , 'r');
prof98512 = load('C:\Users\HP OMEN\Documents\MATLAB\AED\098512\profits.txt' , 'r');
prof98513 = load('C:\Users\HP OMEN\Documents\MATLAB\AED\098513\profits.txt' , 'r');

figure(1)
profit498 = prof98498(: , 3);
histfit(profit498);
title('Lucros para nº Mecanográfico - 98498');
xlabel('Lucro');
ylabel('Nº de Ocorrências');

figure(2)
profit512 = prof98512(: , 3);
histfit(profit512);
title('Lucros para nº Mecanográfico - 98512');
xlabel('Lucro');
ylabel('Nº de Ocorrências');

figure(3)
profit513 = prof98513(: , 3);
histfit(profit513);
title('Lucros para nº Mecanográfico - 98513');
xlabel('Lucro');
ylabel('Nº de Ocorrências');

