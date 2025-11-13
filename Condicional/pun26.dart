import 'dart:io';
import 'dart:math';

void calExpresiones() {
  print('=== CÁLCULO DE EXPRESIONES ===\n');
  
  stdout.write('Ingrese el valor de A: ');
  int a = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de B: ');
  int b = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de C: ');
  int c = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de D: ');
  int d = int.parse(stdin.readLineSync()!);
  
  double resultado;
  String expresion;
  
  if (d == 0) {
    resultado = pow(a - c, 2).toDouble();
    expresion = '(A - C)² = ($a - $c)²';
  } else if (d > 0) {
    resultado = pow(a - b, 3) / d;
    expresion = '(A - B)³ / D = ($a - $b)³ / $d';
  } else {
    resultado = pow(a - b, 3).toDouble();
    expresion = '(A - B)³ = ($a - $b)³';
  }
  
  print('\n=== RESULTADO ===');
  print('Valor de D: $d');
  print('Expresión evaluada: $expresion');
  print('Resultado: ${resultado.toStringAsFixed(2)}');
}

// void main() {
//   calExpresiones();
// }