import 'dart:io';

void descuentoTienda() {
  print('=== CÁLCULO DE DESCUENTOS EN TIENDA ===\n');

  stdout.write('Ingrese el nombre del cliente: ');
  String nombreCliente = stdin.readLineSync()!;

  stdout.write('Ingrese el monto de la compra: \$');
  double montoCompra = double.parse(stdin.readLineSync()!);

  double porcentajeDescuento;
  double descuento;
  double montoPagar;

  if (montoCompra < 500) {
    porcentajeDescuento = 0;
  } else if (montoCompra <= 1000) {
    porcentajeDescuento = 5;
  } else if (montoCompra <= 7000) {
    porcentajeDescuento = 11;
  } else if (montoCompra <= 15000) {
    porcentajeDescuento = 18;
  } else {
    porcentajeDescuento = 25;
  }

  descuento = montoCompra * (porcentajeDescuento / 100);
  montoPagar = montoCompra - descuento;

  print('\n=== TICKET DE COMPRA ===');
  print('Cliente: $nombreCliente');
  print('Monto de la compra: \$${montoCompra.toStringAsFixed(2)}');
  print('Porcentaje de descuento: $porcentajeDescuento%');
  print('Descuento recibido: \$${descuento.toStringAsFixed(2)}');
  print('─' * 40);
  print('MONTO A PAGAR: \$${montoPagar.toStringAsFixed(2)}');
}

void main() {
  descuentoTienda();
}
