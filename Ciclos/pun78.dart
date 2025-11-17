// ignore_for_file: unused_local_variable

/*

78. Una empresa comercializadora de productos cerámicos con sucursales y puntos de venta a nivel
nacional está interesada en desarrollar un software que le permita controlar sus ventas. Cada
sucursal posee un monto de venta esperado el cual debe cubrir y tiene asignados varios puntos de
venta, los cuales debe controlar. La sucursal es identificada con un código entero positivo de dos
dígitos y los puntos de venta por un código entero positivo de cuatro dígitos, en el cual los dos
primeros dígitos corresponden al código de la sucursal a la cual reporta. Los productos
comercializados por la empresa son identificados por un código que va del 1 al 3, el PVP de cada uno
es dado como constante y todos los puntos de venta, venden los 3 tipos de productos. El 10% de las
ventas brutas de cada punto de venta es repartido entre los vendedores de la misma en forma
equitativa como comisión de venta. Se requiere que desarrolle un programa que responda a lo
siguiente:
• Imprimir por punto de venta: su código, las unidades vendidas, el monto neto de la venta,
el monto pagado por comisión a los vendedores y el código del producto con menor número
de unidades vendidas.
• Calcular y mostrar por sucursal su código, descripción, el monto total vendido, el porcentaje
de venta alcanzado en función de lo esperado y el código y monto del punto de venta que
más pagó por comisión de venta.
• Calcular y mostrar el porcentaje de las sucursales que alcanzaron el monto de venta
esperado.

*/

import 'dart:io';

void main() {
  // Precio de cada producto (PVP)
  const List<double> precios = [100.0, 200.0, 300.0]; // Producto 1,2,3
  const int numProductos = 3;

  stdout.write("Ingrese número de sucursales: ");
  int numSucursales = int.parse(stdin.readLineSync()!);

  int sucursalesCumplieronMeta = 0;

  for (int s = 1; s <= numSucursales; s++) {
    stdout.write("\nIngrese código de la sucursal (2 dígitos): ");
    int codSucursal = int.parse(stdin.readLineSync()!);

    stdout.write("Ingrese descripción de la sucursal: ");
    String descripcion = stdin.readLineSync()!;

    stdout.write("Ingrese monto de venta esperado: ");
    double ventaEsperada = double.parse(stdin.readLineSync()!);

    stdout.write("Ingrese número de puntos de venta: ");
    int numPuntos = int.parse(stdin.readLineSync()!);

    double totalSucursal = 0;
    double maxComisionPV = 0;
    int codMaxComisionPV = 0;

    for (int p = 1; p <= numPuntos; p++) {
      stdout.write("\nIngrese código del punto de venta (4 dígitos): ");
      int codPV = int.parse(stdin.readLineSync()!);

      List<int> unidadesVendidas = [];

      for (int prod = 0; prod < numProductos; prod++) {
        stdout.write("Ingrese unidades vendidas del producto ${prod + 1}: ");
        int unidades = int.parse(stdin.readLineSync()!);
        unidadesVendidas.add(unidades);
      }

      // Monto neto de venta
      double montoVenta = 0;
      for (int i = 0; i < numProductos; i++) {
        montoVenta += unidadesVendidas[i] * precios[i];
      }

      // Comisión del 10%
      double comision = montoVenta * 0.10;

      // Producto con menor venta
      int minUnidades = unidadesVendidas[0];
      int codProductoMin = 1;
      for (int i = 1; i < numProductos; i++) {
        if (unidadesVendidas[i] < minUnidades) {
          minUnidades = unidadesVendidas[i];
          codProductoMin = i + 1;
        }
      }

      print("\n--- Punto de venta $codPV ---");
      print("Monto neto de venta: \$${montoVenta.toStringAsFixed(2)}");
      print("Monto de comisión: \$${comision.toStringAsFixed(2)}");
      print("Producto con menor venta: $codProductoMin");

      totalSucursal += montoVenta;

      // Actualizar punto de venta con mayor comisión
      if (comision > maxComisionPV) {
        maxComisionPV = comision;
        codMaxComisionPV = codPV;
      }
    }

    double porcentajeVenta = (totalSucursal / ventaEsperada) * 100;
    print("\n--- Sucursal $codSucursal ---");
    print("Monto total vendido: \$${totalSucursal.toStringAsFixed(2)}");
    print(
      "Porcentaje de venta alcanzado: ${porcentajeVenta.toStringAsFixed(2)} %",
    );
    print(
      "Punto de venta con mayor comisión: $codMaxComisionPV (\$${maxComisionPV.toStringAsFixed(2)})",
    );

    if (totalSucursal >= ventaEsperada) {
      sucursalesCumplieronMeta++;
    }
  }

  double porcentajeSucursales =
      (sucursalesCumplieronMeta / numSucursales) * 100;
  print(
    "\nPorcentaje de sucursales que alcanzaron la meta: ${porcentajeSucursales.toStringAsFixed(2)}%",
  );
}
