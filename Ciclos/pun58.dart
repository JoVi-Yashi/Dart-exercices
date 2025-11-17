/*

58. Muchos bancos y cajas de ahorro calculan los intereses de las cantidades depositadas por los clientes
diariamente con base en las siguientes premisas: un capital de $1000, con una tasa de interés del
6%, renta un interés en un día de 0.06 multiplicado por 1000 y dividido por 365. Esta operación
producirá $0.16 de interés y el capital acumulado será 1000,16. El interés para el segundo día se
calculará multiplicando 0.06 por 1000 y dividiendo el resultado por 365. Diseñar un programa que
reciba tres entradas: el capital a depositar, la tasa de interés y la duración del depósito en semanas
y calcule el capital total acumulado al final del período de tiempo especificado.

*/

import 'dart:io';

void main() {
  // Entradas
  stdout.write("Ingrese el capital inicial: ");
  double capital = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la tasa de interés anual (ejemplo 0.06 para 6%): ");
  double tasa = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la duración del depósito en semanas: ");
  int semanas = int.parse(stdin.readLineSync()!);

  int dias = semanas * 7;

  // Cálculo diario
  for (int i = 1; i <= dias; i++) {
    double interesDiario = (capital * tasa) / 365;
    capital += interesDiario;
  }

  print(
    "Capital total acumulado después de $semanas semanas: ${capital.toStringAsFixed(2)}",
  );
}
