import 'dart:io';

void main() {
  print('=== CÁLCULO DE INCENTIVOS PARA VENDEDORES ===\n');
  
  stdout.write('Ingrese las ventas del departamento 1: ');
  double ventas1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese las ventas del departamento 2: ');
  double ventas2 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese las ventas del departamento 3: ');
  double ventas3 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el salario mensual base de los vendedores: ');
  double salarioBase = double.parse(stdin.readLineSync()!);
  
  double ventasTotales = ventas1 + ventas2 + ventas3;
  double limiteIncentivo = ventasTotales * 0.33;
  
  print('\n=== ANÁLISIS ===');
  print('Ventas totales: Bs. ${ventasTotales.toStringAsFixed(2)}');
  print('Límite para incentivo (33%): Bs. ${limiteIncentivo.toStringAsFixed(2)}');
  
  double incentivo = salarioBase * 0.20;
  
  print('\n=== RESULTADO - PAGO FINAL POR DEPARTAMENTO ===');
  
  // Departamento 1
  double pagoDepto1;
  if (ventas1 > limiteIncentivo) {
    pagoDepto1 = salarioBase + incentivo;
    print('Departamento 1: Bs. ${pagoDepto1.toStringAsFixed(2)} (con incentivo)');
  } else {
    pagoDepto1 = salarioBase;
    print('Departamento 1: Bs. ${pagoDepto1.toStringAsFixed(2)} (sin incentivo)');
  }
  
  // Departamento 2
  double pagoDepto2;
  if (ventas2 > limiteIncentivo) {
    pagoDepto2 = salarioBase + incentivo;
    print('Departamento 2: Bs. ${pagoDepto2.toStringAsFixed(2)} (con incentivo)');
  } else {
    pagoDepto2 = salarioBase;
    print('Departamento 2: Bs. ${pagoDepto2.toStringAsFixed(2)} (sin incentivo)');
  }
  
  // Departamento 3
  double pagoDepto3;
  if (ventas3 > limiteIncentivo) {
    pagoDepto3 = salarioBase + incentivo;
    print('Departamento 3: Bs. ${pagoDepto3.toStringAsFixed(2)} (con incentivo)');
  } else {
    pagoDepto3 = salarioBase;
    print('Departamento 3: Bs. ${pagoDepto3.toStringAsFixed(2)} (sin incentivo)');
  }
}

// Para ejecutar:
// void main() {
//   main();
// }