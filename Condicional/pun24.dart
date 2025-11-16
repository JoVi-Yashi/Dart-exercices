import 'dart:io';

void calInteresesEInversion() {
  print('=== CÁLCULO DE INTERESES E INVERSIÓN ===\n');

  stdout.write('Ingrese la cantidad invertida en el banco: ');
  double inversion = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la tasa de interés anual (%): ');
  double tasaInteres = double.parse(stdin.readLineSync()!);

  double intereses = inversion * (tasaInteres / 100);

  print('\n=== RESULTADO ===');
  print('Inversión inicial: Bs. ${inversion.toStringAsFixed(2)}');
  print('Intereses generados: Bs. ${intereses.toStringAsFixed(2)}');

  if (intereses > 7000) {
    double montoFinal = inversion + intereses;
    print('\nLos intereses exceden Bs. 7000');
    print('Se reinvertirán los intereses');
    print('Monto final en cuenta: Bs. ${montoFinal.toStringAsFixed(2)}');
  } else {
    print('\nLos intereses NO exceden Bs. 7000');
    print('No se reinvertirán los intereses');
    print('Monto final en cuenta: Bs. ${inversion.toStringAsFixed(2)}');
  }
}

// Para ejecutar:
void main() {
  calInteresesEInversion();
}
