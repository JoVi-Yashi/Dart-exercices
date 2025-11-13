/*

Dada una cantidad entera de Bolívares, desarrolle un algoritmo que permita desglosar dicha
cantidad en los billetes de curso legal en el País. Recuerde que estos son: 50000, 20000, 10000,
5000, 2000, 1000, 500, 100, 50, 20, 10.

*/

import 'dart:io';

void desglosarBilletes() {
  print("--- Desglosar Billetes ---");

  stdout.write("Ingrese la cantidad de Bolívares: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  int resCantidad = cantidad;

  int billete50000 = 0,
      billete20000 = 0,
      billete10000 = 0,
      billete5000 = 0,
      billete2000 = 0,
      billete1000 = 0,
      billete500 = 0,
      billete100 = 0,
      billete50 = 0,
      billete20 = 0,
      billete10 = 0;

  // Billetes de 50000
  if (cantidad >= 50000) {
    billete50000 = (cantidad ~/ 50000);
    resCantidad = cantidad % 50000;
  }

  // Billetes de 20000
  if (resCantidad >= 20000) {
    billete20000 = resCantidad ~/ 20000;
    resCantidad = resCantidad % 20000;
  }

  // Billetes de 10000
  if (resCantidad >= 10000) {
    billete10000 = resCantidad ~/ 10000;
    resCantidad = resCantidad % 10000;
  }

  // Billetes de 5000
  if (resCantidad >= 5000) {
    billete5000 = resCantidad ~/ 5000;
    resCantidad = resCantidad % 5000;
  }

  // Billetes de 2000
  if (resCantidad >= 2000) {
    billete2000 = resCantidad ~/ 2000;
    resCantidad = resCantidad % 2000;
  }

  // Billetes de 1000
  if (resCantidad >= 1000) {
    billete1000 = resCantidad ~/ 1000;
    resCantidad = resCantidad % 1000;
  }

  // Billetes de 500
  if (resCantidad >= 500) {
    billete500 = resCantidad ~/ 500;
    resCantidad = resCantidad % 500;
  }

  // Billetes de 100
  if (resCantidad >= 100) {
    billete100 = resCantidad ~/ 100;
    resCantidad = resCantidad % 100;
  }

  // Billetes de 50
  if (resCantidad >= 50) {
    billete50 = resCantidad ~/ 50;
    resCantidad = resCantidad % 50;
  }

  // Billetes de 20
  if (resCantidad >= 20) {
    billete20 = resCantidad ~/ 20;
    resCantidad = resCantidad % 20;
  }

  // Billetes de 10
  if (resCantidad >= 10) {
    billete10 = resCantidad ~/ 10;
    resCantidad = resCantidad % 10;
  }

  // Mostrar resultados (solo los billetes que se usaron)
  print("\n--- Desglose de billetes ---");
  if (billete50000 > 0) print("Billetes de 50000: $billete50000");
  if (billete20000 > 0) print("Billetes de 20000: $billete20000");
  if (billete10000 > 0) print("Billetes de 10000: $billete10000");
  if (billete5000 > 0) print("Billetes de 5000: $billete5000");
  if (billete2000 > 0) print("Billetes de 2000: $billete2000");
  if (billete1000 > 0) print("Billetes de 1000: $billete1000");
  if (billete500 > 0) print("Billetes de 500: $billete500");
  if (billete100 > 0) print("Billetes de 100: $billete100");
  if (billete50 > 0) print("Billetes de 50: $billete50");
  if (billete20 > 0) print("Billetes de 20: $billete20");
  if (billete10 > 0) print("Billetes de 10: $billete10");

  if (resCantidad > 0) {
    print("\nSobrante que no se puede desglosar: $resCantidad Bs");
  }
}

  void main() {
    desglosarBilletes();
  }