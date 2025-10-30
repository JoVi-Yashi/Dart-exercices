import 'dart:io';

void main() {
  print('=== CÁLCULO DE COBRO EN GASOLINERA ===\n');
  
  const double litrosPorGalon = 3.785;
  const double precioPorLitro = 100.0;
  
  stdout.write('Ingrese la cantidad de galones surtidos: ');
  double galones = double.parse(stdin.readLineSync()!);
  
  double litros = galones * litrosPorGalon;
  double montoCobrar = litros * precioPorLitro;
  
  print('\n=== RESULTADO ===');
  print('Galones surtidos: ${galones.toStringAsFixed(2)}');
  print('Equivalente en litros: ${litros.toStringAsFixed(2)}');
  print('Precio por litro: Bs. $precioPorLitro');
  print('Monto a cobrar: Bs. ${montoCobrar.toStringAsFixed(2)}');
}