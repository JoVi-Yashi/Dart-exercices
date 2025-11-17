/*

75. Cinco miembros de un club contra la obesidad desean saber cuánto han bajado o subido de peso
desde la última vez que se reunieron. Para esto se debe realizar un ritual de pesaje en donde cada
uno se pesa en diez básculas distintas para así tener el promedio más exacto de su peso. Si existe
diferencia positiva entre este promedio de peso y el peso de la última vez que se reunieron, significa
que subieron de peso. Pero si la diferencia es negativa, significa que bajaron. Lo que el problema
requiere es que por cada persona se imprima un mensaje que diga SUBIO ó BAJO y la cantidad de
kilos que subió o bajó de peso.

*/

import 'dart:io';

void main() {
  const int numeroPersonas = 5;
  const int numeroBasculas = 10;

  for (int persona = 1; persona <= numeroPersonas; persona++) {
    stdout.write("\nIngrese nombre de la persona $persona: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Ingrese el peso anterior de $nombre (kg): ");
    double pesoAnterior = double.parse(stdin.readLineSync()!);

    double sumaPesos = 0;

    for (int bascula = 1; bascula <= numeroBasculas; bascula++) {
      stdout.write("Peso en báscula $bascula: ");
      double peso = double.parse(stdin.readLineSync()!);
      sumaPesos += peso;
    }

    double promedioActual = sumaPesos / numeroBasculas;
    double diferencia = promedioActual - pesoAnterior;

    if (diferencia > 0) {
      print(
        "$nombre SUBIÓ ${diferencia.toStringAsFixed(2)} kg desde la última vez.",
      );
    } else if (diferencia < 0) {
      print(
        "$nombre BAJÓ ${(-diferencia).toStringAsFixed(2)} kg desde la última vez.",
      );
    } else {
      print("$nombre no tuvo cambios en el peso.");
    }
  }
}
