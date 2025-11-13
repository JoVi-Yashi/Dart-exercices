/*

Desarrolle un algoritmo, que dado como dato una temperatura en grados Fahrenheit, determine
el deporte que es apropiado practicar a esa temperatura, teniendo en cuenta la siguiente tabla:

  Deporte     Temperatura

  Natacion    Temp > 85

  Tenis       70 < Temp < 85

  Golf        32 < Temp < 70

  Esquí       10 < Temp < 32

  Marcha      Temp <= 10

*/

import 'dart:io';

void temperaturaF() {
  print('=== TEMPERATURA ===');

  stdout.write('Ingrese la temperatura en grados Fahrenheit: ');
  double temperatura = double.parse(stdin.readLineSync()!);

  print('Segun la temperatura dada El deporte apropiado es:');

  if (temperatura > 85) {
    print('Natación, porque la temperatura es de ${temperatura.toStringAsFixed(2)} grados Fahrenheit');
  } else if (temperatura >= 70 && temperatura <= 85) {
    print('Tenis, porque la temperatura es de ${temperatura.toStringAsFixed(2)} grados Fahrenheit');
  } else if (temperatura >= 32 && temperatura <= 70) {
    print('Golf, porque la temperatura es de ${temperatura.toStringAsFixed(2)} grados Fahrenheit');
  } else if (temperatura >= 10 && temperatura <= 32) {
    print('Esquí, porque la temperatura es de ${temperatura.toStringAsFixed(2)} grados Fahrenheit');
  } else if (temperatura <= 10) {
    print('Marcha, porque la temperatura es de ${temperatura.toStringAsFixed(2)} grados Fahrenheit');
  }
}

void main(List<String> args) {
  temperaturaF();
}


