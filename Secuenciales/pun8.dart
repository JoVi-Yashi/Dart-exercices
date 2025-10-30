import 'dart:io';

void CalcularAreaTriangulo() {
  // p = (a+b+c) / 2

  print('--- Calculadora de Area de Triangulo irregular---');
  print('Ingrese la medida de a del triangulo:');
  double a = double.parse(stdin.readLineSync()!);

  print('Ingrese la medida b del triangulo:');
  double b = double.parse(stdin.readLineSync()!);

  print('Ingrese la medida c del triangulo:');
  double c = double.parse(stdin.readLineSync()!);


  double area = (a + b + c) / 2;

  print('El area del triangulo es: ${area.toStringAsFixed(2)}');
}

void main(List<String> args) {
  CalcularAreaTriangulo();
  }
