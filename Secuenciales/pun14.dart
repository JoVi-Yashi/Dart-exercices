import 'dart:io';

void main() {
  print('=== SISTEMA DE ECUACIONES LINEALES ===');
  print('aX + bY = c');
  print('dX + eY = f\n');
  
  stdout.write('Ingrese el valor de a: ');
  double a = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de b: ');
  double b = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de c: ');
  double c = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de d: ');
  double d = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de e: ');
  double e = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de f: ');
  double f = double.parse(stdin.readLineSync()!);
  
  double denominador = (a * e) - (b * d);
  
  if (denominador == 0) {
    print('\nEl sistema no tiene solución única (denominador = 0)');
  } else {
    double x = ((c * e) - (b * f)) / denominador;
    double y = ((a * f) - (c * d)) / denominador;
    
    print('\n=== RESULTADO ===');
    print('X = ${x.toStringAsFixed(2)}');
    print('Y = ${y.toStringAsFixed(2)}');
  }
}