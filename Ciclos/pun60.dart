/*

60. Una empresa está interesada en automatizar el proceso anual de cálculo de intereses de mora y de
descuentos en el cobro de las facturas de los clientes a crédito. Para ello la empresa utiliza los
siguientes criterios:

a. Si la factura se paga se paga 60 días después de haber realizado la compra se cobra un
interés de mora del 8% sobre el monto de la factura.

b. Si la factura se paga entre 31 y 59 días después de haber realizado la compra se cobra un
interés de mora del 6% sobre el monto de la factura.

c. Si la factura se paga antes de los 15 días de haber realizado la compra se hace un descuento
del 2% sobre el monto de la factura.

Realice un algoritmo que lea los datos de las facturas por pantalla e imprima para cada factura el
número, nombre del cliente, el monto a cancelar, el monto a pagar por interés de mora y monto
descontado por pronto pago.
Los datos de cada factura son: Número de factura (num-fac), nombre del cliente (num-cli), monto de
la factura (mon-fac), fecha de compra (fec-com) y fecha de pago (fec-pag).

*/

import 'dart:io';

void main() {
  while (true) {
    print("\n--- Datos de la factura ---");

    stdout.write("Número de factura: ");
    String numFac = stdin.readLineSync()!;

    stdout.write("Nombre del cliente: ");
    String nomCli = stdin.readLineSync()!;

    stdout.write("Monto de la factura: ");
    double monto = double.parse(stdin.readLineSync()!);

    stdout.write("Fecha de compra (AAAA-MM-DD): ");
    DateTime fechaCompra = DateTime.parse(stdin.readLineSync()!);

    stdout.write("Fecha de pago (AAAA-MM-DD): ");
    DateTime fechaPago = DateTime.parse(stdin.readLineSync()!);

    // Calcular días transcurridos
    int dias = fechaPago.difference(fechaCompra).inDays;

    double interes = 0;
    double descuento = 0;

    // Intereses por mora
    if (dias >= 60) {
      interes = monto * 0.08;
    } else if (dias >= 31) {
      interes = monto * 0.06;
    }

    // Descuento por pronto pago
    if (dias < 15) {
      descuento = monto * 0.02;
    }

    double montoFinal = monto + interes - descuento;

    print("\n===== RESULTADO DE LA FACTURA =====");
    print("Número de factura          : $numFac");
    print("Cliente                    : $nomCli");
    print("Monto original             : \$${monto.toStringAsFixed(2)}");
    print("Días transcurridos         : $dias días");
    print("Interés por mora           : \$${interes.toStringAsFixed(2)}");
    print("Descuento por pronto pago  : \$${descuento.toStringAsFixed(2)}");
    print("Monto final a pagar        : \$${montoFinal.toStringAsFixed(2)}");

    // Continuar
    stdout.write("\n¿Desea ingresar otra factura? (s/n): ");
    String resp = stdin.readLineSync()!.toLowerCase();

    if (resp == "n") break;
  }
}
