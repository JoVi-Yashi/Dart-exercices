/* 

Para cada una de las empresas del País se tienen como datos: actividad, localización y número de
trabajadores. La actividad y la localización, se codifican de la siguiente forma:

  actividad           Localizacion    

  1 = Agricola        1 = norte
  2 = Industrial      2 = sur
  3 = Mineria         3 = este
  4 = Pesquera        4 = oeste
  5 = otra


Desarrolle un algoritmo / programa que calcule y muestre:
i. Porcentaje de empresas agrícolas del País.
ii. Porcentaje de empresas mineras del sur respecto al total de empresas que realizan
esa actividad.
iii. Promedio de trabajadores de las empresas de cada tipo de actividad. iv.
Localización con mayor número de empresas industriales.

*/

import 'dart:io';

void main() {
  int totalEmpresas = 0;
  int empresasAgricolas = 0;

  int empresasMineriaTotal = 0;
  int empresasMineriaSur = 0;

  // Para promedios por actividad (1..5)
  List<double> sumaTrab = List.filled(5, 0);
  List<int> contTrab = List.filled(5, 0);

  // Para industrias por localización (1..4)
  List<int> industriasLoc = List.filled(4, 0);

  String repetir = "S";

  while (repetir.toUpperCase() == "S") {
    stdout.write(
      "Actividad (1=Agricola, 2=Industrial, 3=Mineria, 4=Pesquera, 5=Otra): ",
    );
    int actividad = int.parse(stdin.readLineSync()!);

    stdout.write("Localización (1=Norte, 2=Sur, 3=Este, 4=Oeste): ");
    int localizacion = int.parse(stdin.readLineSync()!);

    stdout.write("Número de trabajadores: ");
    int trabajadores = int.parse(stdin.readLineSync()!);

    totalEmpresas++;

    // i. Empresas agrícolas
    if (actividad == 1) {
      empresasAgricolas++;
    }

    // ii. Minería total y minería en el sur
    if (actividad == 3) {
      empresasMineriaTotal++;

      if (localizacion == 2) {
        empresasMineriaSur++;
      }
    }

    // iii. Promedios por actividad
    sumaTrab[actividad - 1] += trabajadores;
    contTrab[actividad - 1]++;

    // iv. Localización con más empresas industriales
    if (actividad == 2) {
      industriasLoc[localizacion - 1]++;
    }

    stdout.write("¿Desea ingresar otra empresa? (S/N): ");
    repetir = stdin.readLineSync()!.toUpperCase();
  }

  // RESULTADOS
  print("\n========= RESULTADOS =========\n");

  // i. Porcentaje de empresas agrícolas
  double porcentajeAgr = (empresasAgricolas / totalEmpresas) * 100;
  print(
    "Porcentaje de empresas agrícolas: ${porcentajeAgr.toStringAsFixed(2)} %",
  );

  // ii. % mineras del sur
  double porcentajeMinSur = empresasMineriaTotal == 0
      ? 0
      : (empresasMineriaSur / empresasMineriaTotal) * 100;
  print(
    "Porcentaje de empresas mineras en el sur: ${porcentajeMinSur.toStringAsFixed(2)} %",
  );

  // iii. Promedio de trabajadores por actividad
  print("\nPromedio de trabajadores por actividad:");
  for (int i = 0; i < 5; i++) {
    double promedio = contTrab[i] == 0 ? 0 : sumaTrab[i] / contTrab[i];
    print(
      "Actividad ${i + 1}: ${promedio.toStringAsFixed(2)} trabajadores en promedio",
    );
  }

  // iv. Localización con mayor número de empresas industriales
  int max = industriasLoc[0];
  int posMax = 0;

  for (int i = 1; i < 4; i++) {
    if (industriasLoc[i] > max) {
      max = industriasLoc[i];
      posMax = i;
    }
  }

  List<String> zonas = ["Norte", "Sur", "Este", "Oeste"];

  print("\nLocalización con más empresas industriales: ${zonas[posMax]}");
}
