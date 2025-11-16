/* Dados como datos los valores enteros P y Q, determine si los mismos satisfacen la siguiente
expresión: P3 + Q4 – 2*P2 > 680. En caso afirmativo debe mostrar los valores de P y Q, de lo contrario
muestre un mensaje alusivo al hecho. */

import 'dart:io';
import 'dart:math';

void Expresion() {
  print('=== VALIDACIÓN DE EXPRESIÓN ===');
  print('P³ + Q⁴ - 2*P² > 680\n');

  stdout.write('Ingrese el valor de P: ');
  int p = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el valor de Q: ');
  int q = int.parse(stdin.readLineSync()!);

  // Calcular la expresión: P³ + Q⁴ - 2*P²
  int resultado =
      pow(p, 3).toInt() + pow(q, 4).toInt() - (2 * pow(p, 2)).toInt();

  print('\n=== EVALUACIÓN ===');
  print('P³ = ${pow(p, 3).toInt()}');
  print('Q⁴ = ${pow(q, 4).toInt()}');
  print('2*P² = ${(2 * pow(p, 2)).toInt()}');
  print('Resultado de la expresión: ${resultado.toInt()}');

  print('\n=== RESULTADO ===');
  if (resultado > 680) {
    print('La expresión P³ + Q⁴ - 2*P² > 680 es VERDADERA');
    print('Valores que satisfacen la condición:');
    print('P = $p');
    print('Q = $q');
  } else {
    print('La expresión P³ + Q⁴ - 2*P² > 680 es FALSA');
    print('Los valores P=$p y Q=$q NO satisfacen la condición.');
  }
}

void main() {
  Expresion();
}
