import 'dart:io';

void main() {
  print('=== CÁLCULO DE RECIBO DE LUZ ELÉCTRICA ===\n');
  
  stdout.write('Ingrese la lectura anterior: ');
  double lecturaAnterior = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese la lectura actual: ');
  double lecturaActual = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el costo por kilovatio: ');
  double costoPorKw = double.parse(stdin.readLineSync()!);
  
  double consumo = lecturaActual - lecturaAnterior;
  double montoPagar = consumo * costoPorKw;
  
  print('\n=== RESULTADO ===');
  print('Consumo del mes: $consumo kW');
  print('Monto total a pagar: Bs. ${montoPagar.toStringAsFixed(2)}');
}