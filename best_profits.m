clear all
close all

%Meter path onde se tem o ficheiro best_profit guardado
%Cada variavel fica com 3 colunas
prof98498 = load('098498\best_profits.txt' , 'r'); % Tasks  Programadores Lucro
prof98512 = load('098512\best_profits.txt' , 'r');
prof98513 = load('098513\best_profits.txt' , 'r');

figure(1)
% Ir à terceira coluna de cada variável para retirar apenas os lucros
profit498 = prof98498(: , 3);
% Histograma com distribuição normal
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

% Tabelas dos bests profits

tabela_98498 = table(prof98498(: , 1),prof98498(: , 2),prof98498(: , 3),'VariableNames',{'Tarefas','Programadores','Best profit'})
tabela_98513 = table(prof98513(: , 1),prof98513(: , 2),prof98513(: , 3),'VariableNames',{'Tarefas','Programadores','Best profit'})
tabela_98512 = table(prof98512(: , 1),prof98512(: , 2),prof98512(: , 3),'VariableNames',{'Tarefas','Programadores','Best profit'})
