import 'dart:io';

void calcularPrecioConDescuento() {
  print('--- Calculadora de Descuento en Compra ---');
  print('Ingrese el total de la compra:');
  double totalCompra = double.parse(stdin.readLineSync()!);

  print('Ingrese el porcentaje de descuento (ej. 15 para 15%):');
  double porcentajeDescuentoInput = double.parse(stdin.readLineSync()!);
  double porcentajeDescuento = porcentajeDescuentoInput / 100;

  double montoDescuento = totalCompra * porcentajeDescuento;
  double precioFinal = totalCompra - montoDescuento;

  print('El total de la compra es: ${totalCompra.toStringAsFixed(2)}');
  print('El descuento aplicado es de: ${montoDescuento.toStringAsFixed(2)}');
  print(
    'El cliente deberá pagar finalmente: ${precioFinal.toStringAsFixed(2)}',
  );
}

void main(List<String> args) {
  calcularPrecioConDescuento();
}
