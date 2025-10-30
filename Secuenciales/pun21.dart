import 'dart:io';

void main() {
  print('=== CÁLCULO DE PORCENTAJE DE GANANCIA ===\n');
  
  stdout.write('Ingrese la cantidad de naranjas (X): ');
  int x = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el precio por docena (Bs. Y): ');
  double y = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el monto obtenido en la venta (Bs. K): ');
  double k = double.parse(stdin.readLineSync()!);
  
  double docenas = x / 12;
  double costoTotal = docenas * y;
  double ganancia = k - costoTotal;
  double porcentajeGanancia = (ganancia / costoTotal) * 100;
  
  print('\n=== RESULTADO ===');
  print('Cantidad de naranjas: $x');
  print('Docenas: ${docenas.toStringAsFixed(2)}');
  print('Costo total de inversión: Bs. ${costoTotal.toStringAsFixed(2)}');
  print('Monto obtenido en venta: Bs. ${k.toStringAsFixed(2)}');
  print('Ganancia: Bs. ${ganancia.toStringAsFixed(2)}');
  print('Porcentaje de ganancia: ${porcentajeGanancia.toStringAsFixed(2)}%');
}