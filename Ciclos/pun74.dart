/*

74. La bloquera “El Milagro” es una pequeña empresa dedicada a la fabricación de bloques de cemento
para construcción. Actualmente cuenta con una plantilla de obreros, cada uno de los cuales tiene un
número X de unidades a producir por semana. La secretaria registra, cada día, el número de bloques
que produjo cada obrero, para totalizar el sábado lo producido en la semana. De cada obrero se
conoce: nombre y cantidad de unidades producidas por día. Desarrolle un programa, que calcule y
muestre:
• Por obrero:
o Nombre
o Total, producido en la semana.
o Porcentaje que representa la producción semanal, respecto al límite
establecido.
• En general:
o Porcentaje de obreros que alcanzaron o superaron el número de unidades
producidas establecidas.
o Nombre del obrero que más produjo y cantidad producida.
o Promedio de producción de la bloquera en la semana.

*/

import 'dart:io';

void main() {
  stdout.write("Ingrese límite de unidades a producir por semana: ");
  int limiteSemanal = int.parse(stdin.readLineSync()!);

  int totalObreros = 0;
  int obrerosSuperaronLimite = 0;
  int totalBloquesEmpresa = 0;
  String nombreMaxProd = "";
  int maxProduccion = 0;

  stdout.write("Ingrese nombre del obrero (o 'FIN' para terminar): ");
  String nombre = stdin.readLineSync()!;

  while (nombre.toUpperCase() != "FIN") {
    totalObreros++;
    int produccionSemanal = 0;

    // Registrar producción diaria (lunes a sábado)
    for (int dia = 1; dia <= 6; dia++) {
      stdout.write("Bloques producidos el día $dia: ");
      int producidos = int.parse(stdin.readLineSync()!);
      produccionSemanal += producidos;
    }

    // Porcentaje de producción respecto al límite
    double porcentaje = (produccionSemanal / limiteSemanal) * 100;

    print("\n--- Resumen por obrero ---");
    print("Nombre: $nombre");
    print("Producción semanal: $produccionSemanal bloques");
    print(
      "Porcentaje respecto al límite: ${porcentaje.toStringAsFixed(2)} %\n",
    );

    // Actualizar totales generales
    totalBloquesEmpresa += produccionSemanal;
    if (produccionSemanal >= limiteSemanal) {
      obrerosSuperaronLimite++;
    }

    if (produccionSemanal > maxProduccion) {
      maxProduccion = produccionSemanal;
      nombreMaxProd = nombre;
    }

    // Siguiente obrero
    stdout.write("Ingrese nombre del obrero (o 'FIN' para terminar): ");
    nombre = stdin.readLineSync()!;
  }

  // Resultados generales
  if (totalObreros > 0) {
    double porcentajeObrerosCumplen =
        (obrerosSuperaronLimite / totalObreros) * 100;
    double promedioEmpresa = totalBloquesEmpresa / totalObreros;

    print("\n========= RESULTADOS GENERALES =========");
    print(
      "Porcentaje de obreros que alcanzaron o superaron el límite: ${porcentajeObrerosCumplen.toStringAsFixed(2)} %",
    );
    print("Obrero que más produjo: $nombreMaxProd con $maxProduccion bloques");
    print(
      "Promedio de producción de la bloquera: ${promedioEmpresa.toStringAsFixed(2)} bloques/obrero",
    );
  } else {
    print("No se ingresaron datos de obreros.");
  }
}
