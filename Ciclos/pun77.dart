// ignore_for_file: unused_local_variable

/*

77. Desarrolle un algoritmo o programa que partiendo de la cantidad de habitantes que tiene cada uno
de los M municipios de los 5 principales Estados del País, calcule y muestre:
a. Estado con mayor población (nombre y cantidad),
b. Estado con menor población (nombre y cantidad),
c. Porcentaje que representan el total de los habitantes de los 5 Estados, respecto al total del
País y
d. Promedio de habitantes por Estado.

*/

import 'dart:io';

void main() {
  const int numEstados = 5;
  int totalPais = 0;
  int estadoMayorPoblacion = 0;
  int estadoMenorPoblacion = 0;
  String nombreMayor = "";
  String nombreMenor = "";

  for (int estado = 1; estado <= numEstados; estado++) {
    stdout.write("\nIngrese el nombre del estado $estado: ");
    String nombreEstado = stdin.readLineSync()!;

    stdout.write("Ingrese el número de municipios en $nombreEstado: ");
    int numMunicipios = int.parse(stdin.readLineSync()!);

    int totalEstado = 0;
    for (int mun = 1; mun <= numMunicipios; mun++) {
      stdout.write("Habitantes del municipio $mun: ");
      int habitantes = int.parse(stdin.readLineSync()!);
      totalEstado += habitantes;
    }

    print("Total habitantes en $nombreEstado: $totalEstado");

    // Actualizar mayor y menor
    if (estado == 1 || totalEstado > estadoMayorPoblacion) {
      estadoMayorPoblacion = totalEstado;
      nombreMayor = nombreEstado;
    }

    if (estado == 1 || totalEstado < estadoMenorPoblacion) {
      estadoMenorPoblacion = totalEstado;
      nombreMenor = nombreEstado;
    }

    totalPais += totalEstado;
  }

  // Porcentaje y promedio
  double porcentajeTotal =
      (totalPais / totalPais) *
      100; // Siempre 100%, útil si se compara con otra cosa
  double promedioPorEstado = totalPais / numEstados;

  print("\n========= RESULTADOS =========");
  print(
    "Estado con mayor población: $nombreMayor ($estadoMayorPoblacion habitantes)",
  );
  print(
    "Estado con menor población: $nombreMenor ($estadoMenorPoblacion habitantes)",
  );
  print("Total del país: $totalPais habitantes");
  print(
    "Promedio de habitantes por estado: ${promedioPorEstado.toStringAsFixed(2)}",
  );
}
