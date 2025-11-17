/* 

49. 100 personas presentaron una prueba constituida por 3 preguntas. Se requiere desarrollar un
algoritmo o programa que permita determinar la cantidad de personas que respondieron:
a. correctamente las tres preguntas.
b. Correctamente solamente la primera y la segunda pregunta.
c. Correctamente solamente la primera y la tercera pregunta.
d. Correctamente solamente la segunda y la tercera pregunta.
e. Correctamente la primera pregunta por lo menos.
f. Correctamente la segunda pregunta por lo menos.
g. Correctamente la tercera pregunta por lo menos.
h. Además, cuántos no respondieron correctamente ninguna pregunta.

*/

import 'dart:io';

void main() {
  int todasCorrectas = 0;
  int p1p2 = 0;
  int p1p3 = 0;
  int p2p3 = 0;

  int alMenosP1 = 0;
  int alMenosP2 = 0;
  int alMenosP3 = 0;

  int ninguna = 0;

  print("=== Registro de respuestas de 100 personas ===");

  for (int i = 1; i <= 100; i++) {
    print("\nPersona $i:");
    stdout.write("P1 correcta? (1 = sí, 0 = no): ");
    int p1 = int.parse(stdin.readLineSync()!);

    stdout.write("P2 correcta? (1 = sí, 0 = no): ");
    int p2 = int.parse(stdin.readLineSync()!);

    stdout.write("P3 correcta? (1 = sí, 0 = no): ");
    int p3 = int.parse(stdin.readLineSync()!);

    // A) Correctas las 3
    if (p1 == 1 && p2 == 1 && p3 == 1) {
      todasCorrectas++;
    }

    // B) Solo P1 y P2
    if (p1 == 1 && p2 == 1 && p3 == 0) {
      p1p2++;
    }

    // C) Solo P1 y P3
    if (p1 == 1 && p2 == 0 && p3 == 1) {
      p1p3++;
    }

    // D) Solo P2 y P3
    if (p1 == 0 && p2 == 1 && p3 == 1) {
      p2p3++;
    }

    // E) Al menos P1
    if (p1 == 1) alMenosP1++;

    // F) Al menos P2
    if (p2 == 1) alMenosP2++;

    // G) Al menos P3
    if (p3 == 1) alMenosP3++;

    // H) Ninguna correcta
    if (p1 == 0 && p2 == 0 && p3 == 0) {
      ninguna++;
    }
  }

  // Resultados
  print("\n=========== RESULTADOS ===========");
  print("a) Todas correctas: $todasCorrectas");
  print("b) Solo P1 y P2: $p1p2");
  print("c) Solo P1 y P3: $p1p3");
  print("d) Solo P2 y P3: $p2p3");
  print("e) Al menos P1: $alMenosP1");
  print("f) Al menos P2: $alMenosP2");
  print("g) Al menos P3: $alMenosP3");
  print("h) Ninguna correcta: $ninguna");
}
