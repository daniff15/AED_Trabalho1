# AED_Trabalho1
* wheigthed Job Selection, with more than one programmer.



## Cadeira

Este trabalho prático foi desenvolvido para a cadeira de Algoritmos e Estrutura de Dados, curso da UA (Universidade de Aveiro)[https://www.ua.pt/].

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
