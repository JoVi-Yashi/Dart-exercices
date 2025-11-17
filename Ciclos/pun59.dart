/*

59. Desarrolle un programa que capture las notas del primer parcial de Matemática, Programación
e inglés de un grupo indeterminado de alumnos y calcule e imprima:

a. Nota menor de Programación.

b. Porcentaje de alumnos que no presentaron el examen de inglés, respecto a los que sí
presentaron.

c. Número de alumnos que aprobaron todas las materias.

d. Promedio general en Programación.

e. Porcentaje de alumnos que reprobaron Matemática, respecto al total de alumnos que
presentaron el examen de matemática.

*/

import 'dart:io';

void main() {
  double? notaMat, notaProg, notaIng;

  double minProg = double.infinity;
  int totalAlumnos = 0;
  int noIngles = 0, siIngles = 0;
  int aprobaronTodas = 0;
  double sumaProg = 0;
  int presentaronMat = 0;
  int reprobaronMat = 0;

  while (true) {
    print("\n--- Nuevo alumno ---");

    stdout.write("Nota de Matemática (-1 si no presentó): ");
    notaMat = double.parse(stdin.readLineSync()!);

    stdout.write("Nota de Programación: ");
    notaProg = double.parse(stdin.readLineSync()!);

    stdout.write("Nota de Inglés (-1 si no presentó): ");
    notaIng = double.parse(stdin.readLineSync()!);

    // a) Nota menor de Programación
    if (notaProg < minProg) {
      minProg = notaProg;
    }

    // b) Porcentaje no presentaron inglés
    if (notaIng == -1) {
      noIngles++;
    } else {
      siIngles++;
    }

    // c) Aprobó todas las materias
    if (notaMat >= 10 && notaProg >= 10 && notaIng >= 10) {
      aprobaronTodas++;
    }

    // d) Promedio general de programación
    sumaProg += notaProg;

    // e) Reprobados de matemática
    if (notaMat != -1) {
      presentaronMat++;
      if (notaMat < 10) {
        reprobaronMat++;
      }
    }

    totalAlumnos++;

    stdout.write("¿Desea ingresar otro alumno? (s/n): ");
    String resp = stdin.readLineSync()!.toLowerCase();

    if (resp == "n") break;
  }

  print("\n===== RESULTADOS =====");

  // a
  print("a) Nota menor de Programación: $minProg");

  // b
  double porcentajeNoIng = siIngles == 0 ? 0 : (noIngles / siIngles) * 100;
  print(
    "b) % de alumnos que NO presentaron inglés respecto a los que SÍ: ${porcentajeNoIng.toStringAsFixed(2)}%",
  );

  // c
  print(
    "c) Número de alumnos que aprobaron todas las materias: $aprobaronTodas",
  );

  // d
  double promProg = sumaProg / totalAlumnos;
  print("d) Promedio general en Programación: ${promProg.toStringAsFixed(2)}");

  // e
  double porcentajeReprobMat = presentaronMat == 0
      ? 0
      : (reprobaronMat / presentaronMat) * 100;
  print(
    "e) % de reprobados en Matemática respecto a los que presentaron: ${porcentajeReprobMat.toStringAsFixed(2)}%",
  );
}
