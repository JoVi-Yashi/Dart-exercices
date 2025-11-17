/*

71. La UNICEF desea obtener información estadística sobre los orfanatorios ubicados dentro de la
República y sobre los niños huérfanos internados en esos orfanatorios. Por cada niño se conoce:
sexo, edad, nombre del orfanatorio y estado de la República al que pertenece el Orfanatorio. Escriba
un Programa para calcular y mostrar lo siguiente:
a. Porcentaje de huérfanos del Estado Táchira y del Distrito Capital respecto al total del País.
b. Número de huérfanos en cada grupo. Los grupos se definen según la Edad:
Grupo 1: menores de 1 año
Grupo 2: edad comprendida entre 1 y 3 años
Grupo 3: edad comprendida entre 4 y 6 años
Grupo 4: mayores de 6 años
c. Cantidad de niños y niñas y porcentaje que representa cada uno.

*/

import 'dart:io';

void main() {
  int totalNinos = 0;
  int totalTachira = 0;
  int totalDistrito = 0;

  int grupo1 = 0;
  int grupo2 = 0;
  int grupo3 = 0;
  int grupo4 = 0;

  int ninos = 0;
  int ninas = 0;

  while (true) {
    stdout.write("Ingrese edad del niño (0 para terminar): ");
    int edad = int.parse(stdin.readLineSync()!);
    if (edad == 0) break;

    stdout.write("Ingrese sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Ingrese estado del orfanatorio: ");
    String estado = stdin.readLineSync()!;

    // Total general
    totalNinos++;

    // Por estado
    if (estado.toLowerCase() == "táchira") totalTachira++;
    if (estado.toLowerCase() == "distrito capital") totalDistrito++;

    // Por grupo de edad
    if (edad < 1)
      grupo1++;
    else if (edad >= 1 && edad <= 3)
      grupo2++;
    else if (edad >= 4 && edad <= 6)
      grupo3++;
    else
      grupo4++;

    // Por sexo
    if (sexo == "M")
      ninos++;
    else if (sexo == "F")
      ninas++;
  }

  if (totalNinos > 0) {
    double porcentajeTachira = (totalTachira / totalNinos) * 100;
    double porcentajeDistrito = (totalDistrito / totalNinos) * 100;

    double porcentajeNinos = (ninos / totalNinos) * 100;
    double porcentajeNinas = (ninas / totalNinos) * 100;

    print("\n--- RESULTADOS ---");
    print(
      "Porcentaje de huérfanos en Táchira: ${porcentajeTachira.toStringAsFixed(2)} %",
    );
    print(
      "Porcentaje de huérfanos en Distrito Capital: ${porcentajeDistrito.toStringAsFixed(2)} %\n",
    );

    print("Cantidad de huérfanos por grupo de edad:");
    print("Grupo 1 (<1 año): $grupo1");
    print("Grupo 2 (1-3 años): $grupo2");
    print("Grupo 3 (4-6 años): $grupo3");
    print("Grupo 4 (>6 años): $grupo4\n");

    print("Cantidad por sexo:");
    print("Niños: $ninos (${porcentajeNinos.toStringAsFixed(2)} %)");
    print("Niñas: $ninas (${porcentajeNinas.toStringAsFixed(2)} %)");
  } else {
    print("No se ingresaron datos.");
  }
}
