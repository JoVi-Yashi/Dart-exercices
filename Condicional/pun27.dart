import 'dart:io';
import 'dart:math';

void main() {
  print('=== IDENTIFICACIÓN DE FIGURA GEOMÉTRICA ===\n');
  
  stdout.write('Ingrese el valor 1: ');
  double valor1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor 2: ');
  double valor2 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el área esperada (valor 3): ');
  double areaEsperada = double.parse(stdin.readLineSync()!);
  
  // Calcular áreas de las tres figuras
  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor2 * pow(valor1, 2); // pi * r²
  double areaRectangulo = valor1 * valor2;
  
  const double tolerancia = 0.01; // Tolerancia para comparación
  
  print('\n=== ANÁLISIS ===');
  print('Área del triángulo (base=$valor1, altura=$valor2): ${areaTriangulo.toStringAsFixed(2)}');
  print('Área del círculo (radio=$valor1, pi=$valor2): ${areaCirculo.toStringAsFixed(2)}');
  print('Área del rectángulo (base=$valor1, altura=$valor2): ${areaRectangulo.toStringAsFixed(2)}');
  print('Área esperada: ${areaEsperada.toStringAsFixed(2)}');
  
  print('\n=== RESULTADO ===');
  
  bool encontrada = false;
  
  if ((areaTriangulo - areaEsperada).abs() < tolerancia) {
    print('La figura es un TRIÁNGULO');
    encontrada = true;
  }
  
  if ((areaCirculo - areaEsperada).abs() < tolerancia) {
    print('La figura es un CÍRCULO');
    encontrada = true;
  }
  
  if ((areaRectangulo - areaEsperada).abs() < tolerancia) {
    print('La figura es un RECTÁNGULO');
    encontrada = true;
  }
  
  if (!encontrada) {
    print('No se encontró coincidencia con ninguna figura conocida');
  }
}

// Para ejecutar:
// void main() {
//   main();
// }