/* 

Una persona debe realizar un muestreo con 100 personas para determinar el promedio de peso de
los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Para ello, conforme
encuentra a las personas introduce los datos a su computadora, la cual mediante un programa las
clasifica y despliega los cuatro promedios que la persona requiere. Las categorías se trabajan de
acuerdo a la siguiente tabla:

niños     0-12
jovenes   13-29
adultos   30-59
viejos    60+

*/

import 'dart:io';

void muestreo() {
  // Acumuladores de peso
  double pesoNinos = 0;
  double pesoJovenes = 0;
  double pesoAdultos = 0;
  double pesoViejos = 0;

  // Contadores
  int contNinos = 0;
  int contJovenes = 0;
  int contAdultos = 0;
  int contViejos = 0;

  print("=== Muestreo de Peso (100 personas) ===");

  for (int i = 1; i <= 100; i++) {
    print("\nPersona $i");

    // Leer edad
    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    // Leer peso
    stdout.write("Peso (kg): ");
    double peso = double.parse(stdin.readLineSync()!);

    // Clasificación por edad
    if (edad >= 0 && edad <= 12) {
      pesoNinos += peso;
      contNinos++;
    } else if (edad >= 13 && edad <= 29) {
      pesoJovenes += peso;
      contJovenes++;
    } else if (edad >= 30 && edad <= 59) {
      pesoAdultos += peso;
      contAdultos++;
    } else if (edad >= 60) {
      pesoViejos += peso;
      contViejos++;
    }
  }

  // Cálculo de promedios (evitando división por cero)
  double promNinos = contNinos == 0 ? 0 : pesoNinos / contNinos;
  double promJovenes = contJovenes == 0 ? 0 : pesoJovenes / contJovenes;
  double promAdultos = contAdultos == 0 ? 0 : pesoAdultos / contAdultos;
  double promViejos = contViejos == 0 ? 0 : pesoViejos / contViejos;

  // Resultados
  print("\n=========== RESULTADOS ===========");
  print("Promedio niños    : ${promNinos.toStringAsFixed(2)} kg");
  print("Promedio jóvenes  : ${promJovenes.toStringAsFixed(2)} kg");
  print("Promedio adultos  : ${promAdultos.toStringAsFixed(2)} kg");
  print("Promedio viejos   : ${promViejos.toStringAsFixed(2)} kg");
}


void main(List<String> args) {
  muestreo();
}