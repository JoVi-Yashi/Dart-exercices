/*

76. Se desea obtener el promedio de g grupos que están en un mismo año escolar, siendo que cada
grupo puede tener n alumnos que cada alumno puede llevar m materias y que en todas las materias
se promedian tres calificaciones para obtener el promedio de la materia. Lo que se desea es mostrar
el promedio de los grupos, el promedio de cada grupo y el promedio de cada alumno.

*/

import 'dart:io';

void main() {
  stdout.write("Ingrese el número de grupos: ");
  int g = int.parse(stdin.readLineSync()!);

  double sumaPromediosGrupos = 0;

  for (int grupo = 1; grupo <= g; grupo++) {
    stdout.write("\nIngrese número de alumnos en el grupo $grupo: ");
    int n = int.parse(stdin.readLineSync()!);

    double sumaPromedioAlumnosGrupo = 0;

    for (int alumno = 1; alumno <= n; alumno++) {
      stdout.write("\nIngrese número de materias del alumno $alumno: ");
      int m = int.parse(stdin.readLineSync()!);

      double sumaPromedioMaterias = 0;

      for (int materia = 1; materia <= m; materia++) {
        double sumaCalificaciones = 0;

        for (int cal = 1; cal <= 3; cal++) {
          stdout.write("Ingrese calificación $cal de la materia $materia: ");
          double nota = double.parse(stdin.readLineSync()!);
          sumaCalificaciones += nota;
        }

        double promedioMateria = sumaCalificaciones / 3;
        sumaPromedioMaterias += promedioMateria;
      }

      double promedioAlumno = sumaPromedioMaterias / m;
      sumaPromedioAlumnosGrupo += promedioAlumno;

      print(
        "Promedio del alumno $alumno: ${promedioAlumno.toStringAsFixed(2)}",
      );
    }

    double promedioGrupo = sumaPromedioAlumnosGrupo / n;
    sumaPromediosGrupos += promedioGrupo;

    print("\nPromedio del grupo $grupo: ${promedioGrupo.toStringAsFixed(2)}");
  }

  double promedioGeneral = sumaPromediosGrupos / g;
  print(
    "\nPromedio general de todos los grupos: ${promedioGeneral.toStringAsFixed(2)}",
  );
}
