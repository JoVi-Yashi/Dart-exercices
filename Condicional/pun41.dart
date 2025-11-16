/* 

41. El gobierno del estado de México desea reforestar un bosque que mide determinado número de
hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
70% Pino
20% Oyamel
10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
50% Pino
30% Oyamel
20% Cedro
El gobierno desea saber el número de pinos, oyameles y cedros que tendrá que sembrar en el bosque,
si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 oyameles y

en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil
metros cuadrados.

*/

import 'dart:io';

void bosque() {
  print("--- Bosque ---");
  print("El estado desea roforestar un bosque");
  print(
    "Cual es la superficie del bosque en metros cuadrados?\n1. menor de 1M\n2. mayor de 1M\n",
  );
  int key = int.parse(stdin.readLineSync()!);

  if (key != 1 && key != 2) {
    bosque();
  }

  int superf = 0;
  int superficie() {
    print("Ingrese la superficie del bosque en metros cuadrados: ");
    superf = int.parse(stdin.readLineSync()!);
    return superf;
  }

  switch (key) {
    case 1:
      /*
    N<1M
    PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
    70% Pino
    20% Oyamel
    10% Cedro
    */
      superficie();

      if (superf > 1000000) {
        superficie();
      }

      break;

    case 2:
      /*
    N>1M
    PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
    50% Pino
    30% Oyamel
    20% Cedro
    */
      superficie();

      if (superf < 1000000) {
        superficie();
      }

      break;

    default:
  }
}

void main(List<String> args) {
  bosque();
}
