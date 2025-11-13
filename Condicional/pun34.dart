/*

Construya un programa que, dados como datos la categoría y el sueldo del trabajador, calcule el
aumento correspondiente teniendo en cuenta la siguiente tabla:

  1   15%

  2   10%

  3   8%

  4   7%

Como salida, mostrar la categoría del trabajador y su nuevo sueldo.

*/

import 'dart:io';

void calculoAumento() {
  print('=== CÁLCULO DE AUMENTO DE SUELDO ===\n');

  stdout.write("Ingrese el nombre del trabajor: ");
  String nombre = stdin.readLineSync()!;

  stdout.write("Ingrese la categoría del trabajador: ");
  int categoria = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el sueldo del trabajador: ");
  double sueldo = double.parse(stdin.readLineSync()!);

  double porcentajeAumento;
  double nuevoSueldo;

  if (categoria == 1) {
    porcentajeAumento = 15;
    nuevoSueldo = sueldo * 1.15;

    print('\n=== RESULTADO ===');
    print('Hola $nombre!');
    print('Sueldo actual: Bs. ${sueldo.toStringAsFixed(2)}');
    print('Porcentaje de aumento: $porcentajeAumento%');
    print('Aumento: Bs. ${(nuevoSueldo - sueldo).toStringAsFixed(2)}');
    print('Nuevo sueldo: Bs. ${nuevoSueldo.toStringAsFixed(2)}');
  } else if (categoria == 2) {
    porcentajeAumento = 10;
    nuevoSueldo = sueldo * 1.10;

    print('\n=== RESULTADO ===');
    print('Hola $nombre!');
    print('Sueldo actual: Bs. ${sueldo.toStringAsFixed(2)}');
    print('Porcentaje de aumento: $porcentajeAumento%');
    print('Aumento: Bs. ${(nuevoSueldo - sueldo).toStringAsFixed(2)}');
    print('Nuevo sueldo: Bs. ${nuevoSueldo.toStringAsFixed(2)}');
  } else if (categoria == 3) {
    porcentajeAumento = 8;
    nuevoSueldo = sueldo * 1.08;

    print('\n=== RESULTADO ===');
    print('Hola $nombre!');
    print('Sueldo actual: Bs. ${sueldo.toStringAsFixed(2)}');
    print('Porcentaje de aumento: $porcentajeAumento%');
    print('Aumento: Bs. ${(nuevoSueldo - sueldo).toStringAsFixed(2)}');
    print('Nuevo sueldo: Bs. ${nuevoSueldo.toStringAsFixed(2)}');
  } else if (categoria == 4) {
    porcentajeAumento = 7;
    nuevoSueldo = sueldo * 1.07;

    print('\n=== RESULTADO ===');
    print('Hola $nombre!');
    print('Sueldo actual: Bs. ${sueldo.toStringAsFixed(2)}');
    print('Porcentaje de aumento: $porcentajeAumento%');
    print('Aumento: Bs. ${(nuevoSueldo - sueldo).toStringAsFixed(2)}');
    print('Nuevo sueldo: Bs. ${nuevoSueldo.toStringAsFixed(2)}');
  } else {
    print('\n=== RESULTADO ===');
    print('Hola $nombre!');
    print('Categoría inválida');
  }
}

void main(List<String> args) {
  calculoAumento();
}
