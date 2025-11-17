import 'dart:io';

void calcularGananciaInversion() {
  print('--- Calculadora de Inversión Mensual ---');
  print('Ingrese el capital inicial a invertir:');
  double capitalInicial = double.parse(stdin.readLineSync()!);

  print('Ingrese la tasa de interés mensual (ej. 0.02 para 2%):');
  double tasaInteresMensual = double.parse(stdin.readLineSync()!);

  double gananciaMensual = capitalInicial * tasaInteresMensual;
  double capitalTotal = capitalInicial + gananciaMensual;

  print(
    'Si invierte ${capitalInicial.toStringAsFixed(2)}, ganará ${gananciaMensual.toStringAsFixed(2)} después de un mes.',
  );
  print(
    'El capital total después de un mes será: ${capitalTotal.toStringAsFixed(2)}',
  );
}

void main(List<String> args) {
  calcularGananciaInversion();
}
