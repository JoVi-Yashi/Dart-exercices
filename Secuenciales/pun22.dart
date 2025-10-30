import 'dart:io';

void main() {
  print('=== CÁLCULO DE RECARGO POR PAGO EN CUOTAS ===\n');
  
  stdout.write('Ingrese el precio de compra al contado (Bs. P): ');
  double precioContado = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el valor de cada cuota (Bs. T): ');
  double valorCuota = double.parse(stdin.readLineSync()!);
  
  const int numeroCuotas = 12;
  
  double totalCuotas = valorCuota * numeroCuotas;
  double recargo = totalCuotas - precioContado;
  double porcentajeRecargo = (recargo / precioContado) * 100;
  
  print('\n=== RESULTADO ===');
  print('Precio al contado: Bs. ${precioContado.toStringAsFixed(2)}');
  print('Valor de cada cuota: Bs. ${valorCuota.toStringAsFixed(2)}');
  print('Número de cuotas: $numeroCuotas');
  print('Total pagado en cuotas: Bs. ${totalCuotas.toStringAsFixed(2)}');
  print('Recargo: Bs. ${recargo.toStringAsFixed(2)}');
  print('Porcentaje de recargo: ${porcentajeRecargo.toStringAsFixed(2)}%');
}