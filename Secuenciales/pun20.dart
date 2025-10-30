import 'dart:io';

void main() {
  print('=== CÁLCULO DE TASA DE INTERÉS ANUAL ===\n');
  
  stdout.write('Ingrese el monto del préstamo (Bs. X): ');
  double capital = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el monto de intereses pagados (Bs. Y): ');
  double intereses = double.parse(stdin.readLineSync()!);
  
  const int tiempo = 4; // años
  
  // Fórmula: I = (Capital * Tiempo * Razón) / 100
  // Despejando Razón: Razón = (I * 100) / (Capital * Tiempo)
  double tasaAnual = (intereses * 100) / (capital * tiempo);
  
  print('\n=== RESULTADO ===');
  print('Capital prestado: Bs. ${capital.toStringAsFixed(2)}');
  print('Intereses pagados: Bs. ${intereses.toStringAsFixed(2)}');
  print('Tiempo: $tiempo años');
  print('Tasa de interés anual: ${tasaAnual.toStringAsFixed(2)}%');
}