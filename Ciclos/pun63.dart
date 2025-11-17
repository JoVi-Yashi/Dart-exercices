/*

63. En una encuesta de alumnos se tomaron los siguientes datos: edad, sexo, estado civil, y especialidad
que cursa. La empresa encuestadora, desea generar las siguientes estadísticas:

a. Promedio de edad de las mujeres.
b. Promedio de edad de los hombres.
c. Cantidad de hombres y de mujeres encuestados.
d. Porcentaje de personas para cada uno de los tipos de estado civil, respecto al total.
e. Cantidad de alumnos por especialidad y porcentaje que representan.
f. Porcentaje de mujeres adultas, tomando en cuenta que los adultos son los que tienen más
de 21 años.
g. Porcentaje de hombres jóvenes, tomando en cuenta que estos son los que tienen menos
de 21 años, pero más de 17.
h. Cantidad de hombres solteros y cantidad de mujeres solteras.

*/

import 'dart:io';

void main() {
  // Acumuladores y contadores
  int sumaEdadMujeres = 0, sumaEdadHombres = 0;
  int contadorMujeres = 0, contadorHombres = 0;
  int totalAlumnos = 0;

  Map<int, int> estadoCivilCount = {
    1: 0,
    2: 0,
    3: 0,
  }; // 1=Soltero,2=Casado,3=Otro
  Map<int, int> especialidadCount = {}; // puede crecer según los códigos

  int contadorMujeresAdultas = 0; // edad>21
  int contadorHombresJovenes = 0; // 17<edad<21
  int contadorHombresSolteros = 0;
  int contadorMujeresSolteras = 0;

  String repetir = "S";

  while (repetir.toUpperCase() == "S") {
    stdout.write("\nEdad del alumno: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Estado civil (1=Soltero,2=Casado,3=Otro): ");
    int estadoCivil = int.parse(stdin.readLineSync()!);

    stdout.write("Especialidad (ingrese código numérico): ");
    int especialidad = int.parse(stdin.readLineSync()!);

    totalAlumnos++;

    // a y b: promedio edad por sexo
    if (sexo == "F") {
      sumaEdadMujeres += edad;
      contadorMujeres++;
      if (edad > 21) contadorMujeresAdultas++;
      if (estadoCivil == 1) contadorMujeresSolteras++;
    } else if (sexo == "M") {
      sumaEdadHombres += edad;
      contadorHombres++;
      if (edad > 17 && edad < 21) contadorHombresJovenes++;
      if (estadoCivil == 1) contadorHombresSolteros++;
    }

    // d. estado civil
    estadoCivilCount[estadoCivil] = (estadoCivilCount[estadoCivil] ?? 0) + 1;

    // e. especialidad
    especialidadCount[especialidad] =
        (especialidadCount[especialidad] ?? 0) + 1;

    stdout.write("¿Desea ingresar otro alumno? (S/N): ");
    repetir = stdin.readLineSync()!.toUpperCase();
  }

  // RESULTADOS
  print("\n========== RESULTADOS ==========\n");

  double promedioMujeres = contadorMujeres == 0
      ? 0
      : sumaEdadMujeres / contadorMujeres;
  double promedioHombres = contadorHombres == 0
      ? 0
      : sumaEdadHombres / contadorHombres;

  print("a. Promedio edad mujeres: ${promedioMujeres.toStringAsFixed(2)} años");
  print("b. Promedio edad hombres: ${promedioHombres.toStringAsFixed(2)} años");
  print(
    "c. Cantidad de mujeres: $contadorMujeres, Cantidad de hombres: $contadorHombres",
  );

  print("\nd. Porcentaje por estado civil:");
  estadoCivilCount.forEach((k, v) {
    double porcentaje = totalAlumnos == 0 ? 0 : (v / totalAlumnos) * 100;
    String estado = k == 1
        ? "Soltero"
        : k == 2
        ? "Casado"
        : "Otro";
    print("   $estado: ${porcentaje.toStringAsFixed(2)} %");
  });

  print("\ne. Alumnos por especialidad:");
  especialidadCount.forEach((k, v) {
    double porcentaje = (v / totalAlumnos) * 100;
    print("   Especialidad $k: $v alumnos (${porcentaje.toStringAsFixed(2)}%)");
  });

  double porcentajeMujeresAdultas = contadorMujeres == 0
      ? 0
      : (contadorMujeresAdultas / contadorMujeres) * 100;
  double porcentajeHombresJovenes = contadorHombres == 0
      ? 0
      : (contadorHombresJovenes / contadorHombres) * 100;

  print(
    "\nf. Porcentaje de mujeres adultas (>21 años): ${porcentajeMujeresAdultas.toStringAsFixed(2)} %",
  );
  print(
    "g. Porcentaje de hombres jóvenes (18-20 años): ${porcentajeHombresJovenes.toStringAsFixed(2)} %",
  );
  print(
    "h. Hombres solteros: $contadorHombresSolteros, Mujeres solteras: $contadorMujeresSolteras",
  );
}
