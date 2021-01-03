clear all
close all

%Meter path onde se tem o ficheiro best_profit guardado
%Cada variavel fica com 3 colunas
prof98498 = load('098498\best_profits.txt' , 'r'); % Tasks  Programadores Lucro
prof98512 = load('098512\best_profits.txt' , 'r');
prof98513 = load('098513\best_profits.txt' , 'r');

%% Histogramas

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

%% Código usado para guardar informação útil para a construção de tabelas dos bests profits em word

tabela_98498 = cell(40,9);

tabela_98498{1,1} = ' Tasks / Programadores ';  %cada linha representa as tasks
                                                %cada coluna representa os programadores

for linha = 2:40    %preenchimento da legenda de cada linha
    tabela_98498{linha,1} = linha - 1;
end

for coluna = 2:9    %preenchimento da legenda de cada coluna
    tabela_98498{1,coluna} = coluna - 1;
end

tabela_98513 = tabela_98498; %copiar os cabeçalhos
tabela_98512 = tabela_98498; %copiar os cabeçalhos

%Preencher cada elemento, com o valor de best profit das respetivas tasks e
%programadores, de acordo com os cabeçalhos adicionados:

for line = 1:284
    tabela_98498{prof98498(line , 1) + 1,prof98498(line , 2) + 1} = prof98498(line , 3);
end

for line = 1:284
    tabela_98513{prof98513(line , 1) + 1,prof98513(line , 2) + 1} = prof98513(line , 3);
end

for line = 1:284
    tabela_98512{prof98512(line , 1) + 1 ,prof98512(line , 2) + 1} = prof98512(line , 3);
end
