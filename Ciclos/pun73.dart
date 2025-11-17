/*

ANIDAMIENTOS.
73. Un banco está interesado en diseñar un software que le permita calcular y generar ciertos listados
sobre las deudas de sus clientes a créditos. El algoritmo debe procesar para cada estado y sus
agencias los clientes con pagarés pendientes a una fecha (dd/mm/aaaa) dad y generar los recibos
correspondientes para ser enviados a los clientes. Cada estado, agencia y cliente es identificado por
un código. Los pagarés tienen una fecha de vencimiento (dd/mm/aaaa), un monto a pagar y un
número que lo identifica; un cliente debe tener más que un pagaré.
Se quiere un algoritmo o programa que permita:
• Imprimir un recibo para cada cliente cuyo encabezado es su código, nombre, dirección,
código de estado y código de agencia. El detalle del recibo contendrá un número del pagaré,
la fecha de vencimiento y el monto del pagaré. Al final del recibo debe colocar la cantidad
de pagares pendientes y el monto total pendiente.
• Imprimir por agencia su código, estado, la cantidad de clientes con pagares pendientes,
monto total adeudado y el código de cliente con mayor deuda.

• Imprimir por estado su código, el monto total adeudado en el estado y el código de agencia
con menor y mayor monto adeudado.
• Calcular e imprimir el monto promedio adeudado en razón de los montos máximos
adeudados por las agencias a nivel nacional.

NOTA: Los cálculos se deben realizar en función de una fecha dada. No se podrán utilizar vectores
ni matrices.

*/

import 'dart:io';

void main() {
  print("Ingrese la fecha de corte (aaaa-mm-dd): ");
  DateTime fechaCorte = DateTime.parse(stdin.readLineSync()!);

  // Variables para promedio nacional
  double sumaMaximosAgencias = 0;
  int cantidadAgencias = 0;

  stdout.write("Ingrese código de estado (0 para terminar): ");
  int codigoEstado = int.parse(stdin.readLineSync()!);

  while (codigoEstado != 0) {
    double montoTotalEstado = 0;
    double montoAgenciaMax = double.negativeInfinity;
    double montoAgenciaMin = double.infinity;
    String codigoAgenciaMax = "";
    String codigoAgenciaMin = "";

    stdout.write("Ingrese código de agencia (0 para terminar): ");
    int codigoAgencia = int.parse(stdin.readLineSync()!);

    while (codigoAgencia != 0) {
      cantidadAgencias++;
      double montoTotalAgencia = 0;
      int cantidadClientes = 0;
      String clienteMayorDeuda = "";
      double mayorDeudaCliente = 0;

      stdout.write("Ingrese código de cliente (0 para terminar): ");
      int codigoCliente = int.parse(stdin.readLineSync()!);

      while (codigoCliente != 0) {
        cantidadClientes++;
        stdout.write("Ingrese nombre del cliente: ");
        String nombre = stdin.readLineSync()!;
        stdout.write("Ingrese dirección del cliente: ");
        String direccion = stdin.readLineSync()!;

        int cantidadPagares = 0;
        double montoTotalCliente = 0;

        stdout.write("Ingrese número del pagaré (0 para terminar): ");
        int numeroPagare = int.parse(stdin.readLineSync()!);

        while (numeroPagare != 0) {
          stdout.write("Monto a pagar: ");
          double monto = double.parse(stdin.readLineSync()!);

          stdout.write("Fecha de vencimiento (aaaa-mm-dd): ");
          DateTime fechaVenc = DateTime.parse(stdin.readLineSync()!);

          // Solo considerar pagarés vencidos hasta la fecha de corte
          if (fechaVenc.isBefore(fechaCorte) ||
              fechaVenc.isAtSameMomentAs(fechaCorte)) {
            cantidadPagares++;
            montoTotalCliente += monto;
          }

          stdout.write("Ingrese número del pagaré (0 para terminar): ");
          numeroPagare = int.parse(stdin.readLineSync()!);
        }

        // Mostrar recibo del cliente
        print("\n--- RECIBO CLIENTE ---");
        print("Código: $codigoCliente");
        print("Nombre: $nombre");
        print("Dirección: $direccion");
        print("Código Estado: $codigoEstado");
        print("Código Agencia: $codigoAgencia");
        print("Cantidad de pagarés pendientes: $cantidadPagares");
        print(
          "Monto total pendiente: \$${montoTotalCliente.toStringAsFixed(2)}\n",
        );

        // Actualizar totales por agencia
        montoTotalAgencia += montoTotalCliente;
        if (montoTotalCliente > mayorDeudaCliente) {
          mayorDeudaCliente = montoTotalCliente;
          clienteMayorDeuda = "$codigoCliente";
        }

        // Leer siguiente cliente
        stdout.write("Ingrese código de cliente (0 para terminar): ");
        codigoCliente = int.parse(stdin.readLineSync()!);
      }

      // Mostrar resumen por agencia
      print("--- RESUMEN AGENCIA ---");
      print("Código Agencia: $codigoAgencia");
      print("Código Estado: $codigoEstado");
      print("Cantidad de clientes con pagarés: $cantidadClientes");
      print("Monto total adeudado: \$${montoTotalAgencia.toStringAsFixed(2)}");
      print("Cliente con mayor deuda: $clienteMayorDeuda\n");

      // Actualizar máximos/minimos para estado
      montoTotalEstado += montoTotalAgencia;
      if (montoTotalAgencia > montoAgenciaMax) {
        montoAgenciaMax = montoTotalAgencia;
        codigoAgenciaMax = "$codigoAgencia";
      }
      if (montoTotalAgencia < montoAgenciaMin) {
        montoAgenciaMin = montoTotalAgencia;
        codigoAgenciaMin = "$codigoAgencia";
      }

      // Acumular para promedio nacional
      sumaMaximosAgencias += montoAgenciaMax;

      // Leer siguiente agencia
      stdout.write("Ingrese código de agencia (0 para terminar): ");
      codigoAgencia = int.parse(stdin.readLineSync()!);
    }

    // Mostrar resumen por estado
    print("--- RESUMEN ESTADO ---");
    print("Código Estado: $codigoEstado");
    print("Monto total adeudado: \$${montoTotalEstado.toStringAsFixed(2)}");
    print("Agencia con menor monto adeudado: $codigoAgenciaMin");
    print("Agencia con mayor monto adeudado: $codigoAgenciaMax\n");

    // Leer siguiente estado
    stdout.write("Ingrese código de estado (0 para terminar): ");
    codigoEstado = int.parse(stdin.readLineSync()!);
  }

  // Mostrar promedio nacional
  double promedioNacional = cantidadAgencias == 0
      ? 0
      : sumaMaximosAgencias / cantidadAgencias;
  print(
    "Monto promedio nacional basado en máximos por agencia: \$${promedioNacional.toStringAsFixed(2)}",
  );
}
