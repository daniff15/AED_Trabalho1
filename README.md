# AED_Trabalho1
* Wheigthed Job Selection, with more than one programmer.

Dadas T tasks, cada uma tendo uma data inicial, uma data final e um lucro, e dado P programadores, o problema de Wheigthed Job Selection pede pelo melhor subconjunto de tasks tal que:

* A soma dos lucros de todas as tasks pertencentes ao conjuntos seja a maior possível,

* Cada task é feita apenas por um programador, e

* Cada programador não pode fazer mais do que uma task ao mesmo tempo.

Caso se queira ignorar o lucro, então o programa, vai gerar o número máximo de tasks que se podem realizar fornecendo também quantas possibilidades há para se gerar o número máximo de tasks.

## Cadeira

Este trabalho prático foi desenvolvido para a cadeira de Algoritmos e Estrutura de Dados, curso de Engenharia Informática da [Universidade de Aveiro](https://www.ua.pt)

## Pré-Requisitos

Para que o programa seja corrido corretamente terá de adicionar um ficheiro (elapsed_time.c), feito previamente numa aula de AED:
```console
#include "PATH/elapsed_time.h"
```

## Como correr
* Compilar com o seguinte comando ou similar:
```console
$ gcc -Wall job_selection.c -o prog -lm
```

* Correr:
```console
$ ./prog [number_tasks] [number_programmers] [ignore profit or not]
```
O número de tasks deverá estar entre os valores 0 < num_tasks <= 64.

O número de programadores deverá estar entre os valores 0 < num_programmers <= 10.

Caso não se queira ignorar o lucro deveremos passar para esse argumento o valor 0. Caso se pretenda ignorar os lucros terá de se passar nesse argumento o valor 1. 

## Autores
* **Daniel Figueiredo**: [daniff15](https://github.com/daniff15)
* **Eva Bartolomeu**: [eva-pomposo](https://github.com/eva-pomposo)
* **Eduardo Fernandes**: [rezeett](https://github.com/rezeett)
