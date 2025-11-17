/* 

Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un médico
determina si una persona tiene anemia o no, lo cual depende de su nivel de hemoglobina en la
sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una persona es menor que
el rango que le corresponde, se determina su resultado como positivo y en caso contrario como
negativo. La tabla en la que el médico se basa para obtener el resultado es la siguiente:
EDAD NIVEL DE HEMOGLOBINA
0 - 1 mes 13 - 26 g%
Mayor de 1 y menor o igual de 6 meses 10 - 18 g%
Mayor de 6 y menor o igual de 12 meses 11 - 15 g%
Mayor de 1 y menor o igual que 5 años 11.5 - 15 g%
Mayor de 5 y menor o igual que 10 años 12.6 – 15.5 g%
Mayor de 10 y menor o igual que 15 años 13 - 15.5 g%
Mujeres mayores de 15 años 12 - 16 g%
Hombres mayores de 15 años 14 - 18 g%
Desarrolle un algoritmo que indique, si una persona tiene Anemia o no.

*/

import 'dart:io';

void anemia() {
  print("Edad en años (usar decimales para meses, ej: 0.5 = 6 meses): ");
  double edad = double.parse(stdin.readLineSync()!);

  print("Nivel de hemoglobina (g%): ");
  double hemo = double.parse(stdin.readLineSync()!);

  double min = 0, max = 0;

  // --- CASOS DE EDAD ---
  if (edad >= 0 && edad <= 1 / 12) {
    // 0 - 1 mes
    min = 13;
    max = 26;
  } else if (edad > 1 / 12 && edad <= 0.5) {
    // >1 mes y <= 6 meses
    min = 10;
    max = 18;
  } else if (edad > 0.5 && edad <= 1) {
    // >6 meses y <=12 meses
    min = 11;
    max = 15;
  } else if (edad > 1 && edad <= 5) {
    min = 11.5;
    max = 15;
  } else if (edad > 5 && edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad > 10 && edad <= 15) {
    min = 13;
    max = 15.5;
  } else if (edad > 15) {
    print("Sexo (M/F): ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    if (sexo == "F") {
      min = 12;
      max = 16;
    } else if (sexo == "M") {
      min = 14;
      max = 18;
    } else {
      print("Sexo inválido.");
      return;
    }
  } else {
    print("Edad no válida.");
    return;
  }

  // --- RESULTADO ---
  print("\nRango permitido: $min - $max g%");

  if (hemo < min) {
    print("Resultado: POSITIVO para anemia");
  } else if (hemo > max) {
    print("Resultado: Nivel alterado, pero NO es anemia");
  } else {
    print("Resultado: NEGATIVO, nivel normal");
  }
}

void main(List<String> args) {
  anemia();
}
