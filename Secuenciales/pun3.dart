import 'dart:io';

void calcularSueldoVendedor() {
  print('--- Calculadora de Sueldo de Vendedor ---');
  print('Ingrese el sueldo base del vendedor:');
  double sueldoBase = double.parse(stdin.readLineSync()!);

  print('Ingrese el monto de la primera venta:');
  double venta1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el monto de la segunda venta:');
  double venta2 = double.parse(stdin.readLineSync()!);

  print('Ingrese el monto de la tercera venta:');
  double venta3 = double.parse(stdin.readLineSync()!);

  double porcentajeComision = 0.10; // 10% fijo

  double totalVentas = venta1 + venta2 + venta3;
  double comisiones = totalVentas * porcentajeComision;
  double sueldoTotal = sueldoBase + comisiones;

  print(
    'El vendedor realizó ventas por un total de: ${totalVentas.toStringAsFixed(2)}',
  );
  print('Las comisiones por sus ventas son: ${comisiones.toStringAsFixed(2)}');
  print(
    'El sueldo total que recibirá el vendedor es: ${sueldoTotal.toStringAsFixed(2)}',
  );
}

// void main(List<String> args) {
//   calcularSueldoVendedor();
// }
