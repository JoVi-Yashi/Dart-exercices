/*

66. Una aerolínea está interesada en diseñar un software que le permita calcular y acumular los montos
a pagar por equipaje para cada uno de sus vuelos. El algoritmo debe procesar todos los vuelos del
día con sus respectivos pasajeros y maletas, las cuales están identificadas por un código. Las tarifas
por kilogramos se muestran en la siguiente tabla:
PESOS TARIFA POR Kgs.
1 a 3 Kgs. 0
3.01 a 6 Kgs 600
6.01 a 9 Kgs 1200
9.01 a 12 Kgs 1500
12.01 a 15 Kgs 2000
más de 15 Kgs. 2500

Se quiere un algoritmo en seudocódigo o diagrama estructurado que permita:

i. Imprimir por pasajero el número de vuelo, el código de abordo, el nombre, el total
de kilogramos del equipaje con su respectivo monto a pagar.
ii. Imprimir por pasajero el número de vuelo, el nombre y el código de la maleta con
mayor peso.
iii. Imprimir para cada vuelo el número de vuelo, el código de abordo, el nombre y el
peso total para el pasajero con mayor y menor peso total del equipaje.
iv. Imprimir para cada vuelo el número de vuelo y el monto total cancelado por
equipaje.
v. Imprimir el porcentaje de pasajeros que no pagaron por equipaje.

NOTA: No se podrán utilizar vectores ni matrices.

*/

import 'dart:io';

double tarifaPorPeso(double peso) {
  if (peso <= 3) return 0;
  if (peso <= 6) return 600;
  if (peso <= 9) return 1200;
  if (peso <= 12) return 1500;
  if (peso <= 15) return 2000;
  return 2500;
}

void main() {
  String repetirVuelo = "S";
  int totalPasajerosDia = 0;
  int pasajerosSinPago = 0;

  while (repetirVuelo.toUpperCase() == "S") {
    stdout.write("\nNúmero de vuelo: ");
    String numeroVuelo = stdin.readLineSync()!;

    stdout.write("Cantidad de pasajeros: ");
    int cantPasajeros = int.parse(stdin.readLineSync()!);

    double montoTotalVuelo = 0;

    // Variables para máximo y mínimo peso por pasajero en el vuelo
    String nombreMax = "";
    String codigoMax = "";
    double pesoMax = -1;

    String nombreMin = "";
    String codigoMin = "";
    double pesoMin = 999999;

    for (int i = 0; i < cantPasajeros; i++) {
      stdout.write("\nNombre del pasajero: ");
      String nombre = stdin.readLineSync()!;

      stdout.write("Código de abordo: ");
      String codigo = stdin.readLineSync()!;

      stdout.write("Cantidad de maletas: ");
      int cantMaletas = int.parse(stdin.readLineSync()!);

      double pesoTotalPasajero = 0;
      String codigoMaletaMax = "";
      double pesoMaletaMax = -1;

      for (int j = 0; j < cantMaletas; j++) {
        stdout.write("Código de maleta ${j + 1}: ");
        String codMaleta = stdin.readLineSync()!;
        stdout.write("Peso de maleta ${j + 1} (kg): ");
        double pesoMaleta = double.parse(stdin.readLineSync()!);

        pesoTotalPasajero += pesoMaleta;

        // Maleta más pesada del pasajero
        if (pesoMaleta > pesoMaletaMax) {
          pesoMaletaMax = pesoMaleta;
          codigoMaletaMax = codMaleta;
        }
      }

      double montoAPagar = tarifaPorPeso(pesoTotalPasajero);

      // Contar pasajeros que no pagan
      if (montoAPagar == 0) pasajerosSinPago++;
      totalPasajerosDia++;

      // Acumular monto total del vuelo
      montoTotalVuelo += montoAPagar;

      // Comparar para máximo y mínimo peso
      if (pesoTotalPasajero > pesoMax) {
        pesoMax = pesoTotalPasajero;
        nombreMax = nombre;
        codigoMax = codigo;
      }
      if (pesoTotalPasajero < pesoMin) {
        pesoMin = pesoTotalPasajero;
        nombreMin = nombre;
        codigoMin = codigo;
      }

      // i. Imprimir datos del pasajero
      print(
        "\nPasajero: $nombre, Código: $codigo, Peso total: ${pesoTotalPasajero.toStringAsFixed(2)} kg, Monto a pagar: \$${montoAPagar.toStringAsFixed(2)}",
      );

      // ii. Maleta más pesada
      print(
        "Maleta más pesada: $codigoMaletaMax, Peso: ${pesoMaletaMax.toStringAsFixed(2)} kg",
      );
    }

    // iii. Pasajero con mayor y menor peso total en el vuelo
    print("\n--- Vuelo $numeroVuelo ---");
    print(
      "Pasajero con mayor peso: $nombreMax, Código: $codigoMax, Peso: ${pesoMax.toStringAsFixed(2)} kg",
    );
    print(
      "Pasajero con menor peso: $nombreMin, Código: $codigoMin, Peso: ${pesoMin.toStringAsFixed(2)} kg",
    );

    // iv. Monto total por vuelo
    print(
      "Monto total recaudado en vuelo: \$${montoTotalVuelo.toStringAsFixed(2)}",
    );

    stdout.write("\n¿Desea ingresar otro vuelo? (S/N): ");
    repetirVuelo = stdin.readLineSync()!;
  }

  // v. Porcentaje de pasajeros que no pagaron
  double porcentajeSinPago = totalPasajerosDia == 0
      ? 0
      : (pasajerosSinPago / totalPasajerosDia) * 100;
  print(
    "\nPorcentaje de pasajeros que no pagaron por equipaje: ${porcentajeSinPago.toStringAsFixed(2)} %",
  );
}
