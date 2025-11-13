import 'dart:io';

void financiamientoCompra() {
  print('=== CÁLCULO DE FINANCIAMIENTO DE COMPRA ===\n');
  
  stdout.write('Ingrese el monto total de la compra: ');
  double montoTotal = double.parse(stdin.readLineSync()!);
  
  double inversionPropia;
  double creditoFabricante;
  double prestamoBanco = 0;
  double intereses;
  
  if (montoTotal > 500000) {
    inversionPropia = montoTotal * 0.55;
    prestamoBanco = montoTotal * 0.30;
    creditoFabricante = montoTotal * 0.15;
  } else {
    inversionPropia = montoTotal * 0.70;
    creditoFabricante = montoTotal * 0.30;
  }
  
  intereses = creditoFabricante * 0.20;
  double totalPagar = montoTotal + intereses;
  
  print('\n=== RESULTADO ===');
  print('Monto total de la compra: \$${montoTotal.toStringAsFixed(2)}');
  print('\n--- FORMA DE PAGO ---');
  print('Inversión propia: \$${inversionPropia.toStringAsFixed(2)}');
  
  if (prestamoBanco > 0) {
    print('Préstamo del banco: \$${prestamoBanco.toStringAsFixed(2)}');
  }
  
  print('Crédito al fabricante: \$${creditoFabricante.toStringAsFixed(2)}');
  print('\n--- INTERESES ---');
  print('Intereses por crédito (20%): \$${intereses.toStringAsFixed(2)}');
  print('\n--- TOTAL ---');
  print('Total a pagar: \$${totalPagar.toStringAsFixed(2)}');
}

// void main() {
//   financiamientoCompra();
// }