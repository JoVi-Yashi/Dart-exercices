/* 

80. La Oficina Central de Estadística e Informática (OCEI) desea conocer cierta información sobre la
situación actual del país en cuanto a los niveles actuales de desempleo, analfabetismo y del potencial
de profesionales existentes en Venezuela. Los Estados son identificados por un código entero
positivo de dos (02) dígitos significativos. Las ciudades mediante un código de cuatro (04) dígitos
significativos, de los cuales los dos últimos dígitos corresponden al Estado al cual pertenecen. Los
municipios se identifican con un código de cuatro (06) dígitos significativos, de los cuales los primeros
dígitos corresponden al código de Estado y los dos siguientes dígitos a los dos primeros dígitos del
código de la ciudad en la cual están ubicados. Los datos fueron tomados de personas mayores de 18
años y los mismos son los siguientes: edad; nivel de educación (N: ninguna, B: básica, S: secundaria,
P: profesional); situación actual (D: desempleado, E: empleado). Se requiere que desarrolle un
programa que cumpla con lo siguiente:
• Determinar e imprimir por municipio el código y la cantidad de personas con las siguientes
características: desempleado, sin ningún nivel de educación y mayores de 25 años.

• Calcular e imprimir el código de las ciudades cuyas personas establecidas en la parte anterior sean
más del 50%.
• Calcular e imprimir el código del Estado con mayor porcentaje de profesionales desempleados.

*/

import 'dart:io';

void main() {
  Map<String, int> municipioDesempleadoEducacion = {};
  Map<String, int> ciudadTotal = {};
  Map<String, int> ciudadCoincidentes = {};
  Map<String, int> estadoProfesionalesDesempleados = {};
  Map<String, int> estadoTotalProfesionales = {};

  stdout.write("Ingrese número de personas a procesar: ");
  int numPersonas = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numPersonas; i++) {
    stdout.write("\nCódigo de Estado (2 dígitos): ");
    String codEstado = stdin.readLineSync()!;

    stdout.write("Código de Ciudad (4 dígitos): ");
    String codCiudad = stdin.readLineSync()!;

    stdout.write("Código de Municipio (6 dígitos): ");
    String codMunicipio = stdin.readLineSync()!;

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write(
      "Nivel de educación (N: ninguna, B: básica, S: secundaria, P: profesional): ",
    );
    String educacion = stdin.readLineSync()!.toUpperCase();

    stdout.write("Situación actual (D: desempleado, E: empleado): ");
    String situacion = stdin.readLineSync()!.toUpperCase();

    // i. Desempleado, sin educación, >25 años
    if (situacion == 'D' && educacion == 'N' && edad > 25) {
      municipioDesempleadoEducacion[codMunicipio] =
          (municipioDesempleadoEducacion[codMunicipio] ?? 0) + 1;
      ciudadCoincidentes[codCiudad] = (ciudadCoincidentes[codCiudad] ?? 0) + 1;
    }

    // Total por ciudad (para calcular %)
    ciudadTotal[codCiudad] = (ciudadTotal[codCiudad] ?? 0) + 1;

    // iii. Profesionales desempleados
    if (educacion == 'P') {
      estadoTotalProfesionales[codEstado] =
          (estadoTotalProfesionales[codEstado] ?? 0) + 1;
      if (situacion == 'D') {
        estadoProfesionalesDesempleados[codEstado] =
            (estadoProfesionalesDesempleados[codEstado] ?? 0) + 1;
      }
    }
  }

  print(
    "\n--- Municipios con desempleados sin educación mayores de 25 años ---",
  );
  municipioDesempleadoEducacion.forEach((mun, count) {
    print("Municipio $mun: $count personas");
  });

  print("\n--- Ciudades con más del 50% de coincidencias ---");
  ciudadCoincidentes.forEach((ciu, count) {
    int total = ciudadTotal[ciu]!;
    double porcentaje = (count / total) * 100;
    if (porcentaje > 50) {
      print("Ciudad $ciu: ${porcentaje.toStringAsFixed(2)}%");
    }
  });

  print("\n--- Estado con mayor porcentaje de profesionales desempleados ---");
  String estadoMax = '';
  double porcentajeMax = 0;

  estadoTotalProfesionales.forEach((estado, total) {
    int desempleados = estadoProfesionalesDesempleados[estado] ?? 0;
    double porcentaje = (desempleados / total) * 100;
    if (porcentaje > porcentajeMax) {
      porcentajeMax = porcentaje;
      estadoMax = estado;
    }
  });

  print(
    "Estado $estadoMax con ${porcentajeMax.toStringAsFixed(2)}% de profesionales desempleados",
  );
}
