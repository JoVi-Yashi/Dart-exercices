import 'dart:io';

void main() {
  print('=== CÁLCULO DE INGRESO POR TONELADA DE MAÍZ ===\n');
  
  stdout.write('Ingrese kilogramos de harina obtenidos (M): ');
  double m = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese litros de aceite obtenidos (N): ');
  double n = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese precio por bulto de harina de 24 kg (Bs. B1): ');
  double b1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese precio por caja de 15 envases de aceite (Bs. B2): ');
  double b2 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese precio por kg de harina al detal (Bs. B3): ');
  double b3 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese precio por litro de aceite al detal (Bs. B4): ');
  double b4 = double.parse(stdin.readLineSync()!);
  
  // Cálculos para harina
  int bultosHarina = (m / 24).floor();
  double kgHarinaSobrante = m - (bultosHarina * 24);
  double ingresoHarinaBultos = bultosHarina * b1;
  double ingresoHarinaDetal = kgHarinaSobrante * b3;
  
  // Cálculos para aceite
  int cajasAceite = (n / 15).floor();
  double litrosAceiteSobrante = n - (cajasAceite * 15);
  double ingresoAceiteCajas = cajasAceite * b2;
  double ingresoAceiteDetal = litrosAceiteSobrante * b4;
  
  // Ingreso total
  double ingresoTotal = ingresoHarinaBultos + ingresoHarinaDetal + 
                        ingresoAceiteCajas + ingresoAceiteDetal;
  
  print('\n=== RESULTADO ===');
  print('--- HARINA ---');
  print('Bultos de 24 kg vendidos: $bultosHarina');
  print('Kg sobrantes vendidos al detal: ${kgHarinaSobrante.toStringAsFixed(2)}');
  print('Ingreso por bultos: Bs. ${ingresoHarinaBultos.toStringAsFixed(2)}');
  print('Ingreso por kg al detal: Bs. ${ingresoHarinaDetal.toStringAsFixed(2)}');
  
  print('\n--- ACEITE ---');
  print('Cajas de 15 litros vendidas: $cajasAceite');
  print('Litros sobrantes vendidos al detal: ${litrosAceiteSobrante.toStringAsFixed(2)}');
  print('Ingreso por cajas: Bs. ${ingresoAceiteCajas.toStringAsFixed(2)}');
  print('Ingreso por litros al detal: Bs. ${ingresoAceiteDetal.toStringAsFixed(2)}');
  
  print('\n--- TOTAL ---');
  print('Ingreso total por tonelada de maíz: Bs. ${ingresoTotal.toStringAsFixed(2)}');
}