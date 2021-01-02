clear all
close all

fid = fopen('t1_98513','r');
cell_98513 = textscan(fid,'%s %s','delimiter',newline); %cell_98513{1,1} = informação dos tempos quando I = 0
                                                        %cell_98513{1,2} = informação dos tempos quando I = 1
fclose(fid);

fid = fopen('t1_98498','r');
cell_98498 = textscan(fid,'%s %s','delimiter',newline); %cell_98498{1,1} = informação dos tempos quando I = 0
                                                        %cell_98498{1,2} = informação dos tempos quando I = 1
fclose(fid);

fid = fopen('t1_98512','r');
cell_98512 = textscan(fid,'%s %s','delimiter',newline); %cell_98512{1,1} = informação dos tempos quando I = 0
                                                        %cell_98512{1,2} = informação dos tempos quando I = 1
fclose(fid);

%% Gráfico dos tempos de execução para I=0

n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98513{1,1},'UniformOutput',false)) ); %n = tasks de 98513
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98513{1,1},'UniformOutput',false)) ); %p = programadores de 98513
t = cellfun(@str2double, (cellfun(@(x) x(7:end),cell_98513{1,1},'UniformOutput',false)) ); %t = tempos de 98513
figure
plot3(n,p,log10(t),'r*-');

hold on
n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98498{1,1},'UniformOutput',false)) ); %n = tasks de 98498
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98498{1,1},'UniformOutput',false)) ); %p = programadores de 98498
t = cellfun(@str2double, (cellfun(@(x) x(7:end),cell_98498{1,1},'UniformOutput',false)) ); %t = tempos de 98498
plot3(n,p,log10(t),'go-');

n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98512{1,1},'UniformOutput',false)) ); %n = tasks de 98512
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98512{1,1},'UniformOutput',false)) ); %p = programadores de 98512
t = cellfun(@str2double, (cellfun(@(x) x(7:end),cell_98512{1,1},'UniformOutput',false)) ); %t = tempos de 98512
plot3(n,p,log10(t),'bs-');

hold off
title('Tempos de execuçao, I=0')
xlabel('Tarefas');
ylabel('Programadores');
zlabel('Tempo (s)');
legend('98513', '98498', '98512')

%% ihbg


%% Gráfico dos tempos de execução para I=1

n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98513{1,2},'UniformOutput',false)) ); %n = tasks de 98513
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98513{1,2},'UniformOutput',false)) ); %p = programadores de 98513
t = cellfun(@str2double, (cellfun(@(x) x(29:end),cell_98513{1,2},'UniformOutput',false)) );  %t = tempos de 98513
figure
plot3(n,p,log10(t),'r*-');

hold on
n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98498{1,2},'UniformOutput',false)) ); %n = tasks de 98498
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98498{1,2},'UniformOutput',false)) ); %p = programadores de 98498
t = cellfun(@str2double, (cellfun(@(x) x(29:end),cell_98498{1,2},'UniformOutput',false)) ); %t = tempos de 98498
plot3(n,p,log10(t),'go-');

n = cellfun(@str2double, (cellfun(@(x) x(1:2),cell_98512{1,2},'UniformOutput',false)) );  %n = tasks de 98512
p = cellfun(@str2double, (cellfun(@(x) x(4:5),cell_98512{1,2},'UniformOutput',false)) ); %p = programadores de 98512
t = cellfun(@str2double, (cellfun(@(x) x(29:end),cell_98512{1,2},'UniformOutput',false)) ); %t = tempos de 98512
plot3(n,p,log10(t),'bs-');

hold off
title('Tempos de execuçao, I=1')
xlabel('Tarefas');
ylabel('Programadores');
zlabel('Tempo (s)');
legend('98513', '98498', '98512')
