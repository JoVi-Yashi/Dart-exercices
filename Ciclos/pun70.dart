/*

70. Una estación climática proporciona un par de temperaturas diarias (máx, min), el rango normal de
temperatura es entre 14 y 30 ° C. La pareja fin de temperaturas es 0,0. Se pide determinar:
g. El número de días cuyas temperaturas se han proporcionado.
h. Las medias máxima y mínima.
i. Número de errores que ingresaron (temperaturas fuera de rango).
j. Porcentaje que representan los errores ingresados.

*/

import 'dart:io';

void main() {
  int totalDias = 0;
  double sumaMax = 0;
  double sumaMin = 0;
  int errores = 0;

  while (true) {
    stdout.write("Ingrese temperatura máxima del día: ");
    double tempMax = double.parse(stdin.readLineSync()!);

    stdout.write("Ingrese temperatura mínima del día: ");
    double tempMin = double.parse(stdin.readLineSync()!);

    if (tempMax == 0 && tempMin == 0) break;

    totalDias++;

    // Verificar errores
    if (tempMax < 14 || tempMax > 30) errores++;
    if (tempMin < 14 || tempMin > 30) errores++;

    // Acumular para medias
    sumaMax += tempMax;
    sumaMin += tempMin;
  }

  if (totalDias > 0) {
    double mediaMax = sumaMax / totalDias;
    double mediaMin = sumaMin / totalDias;
    double porcentajeErrores = (errores / (2 * totalDias)) * 100;

    print("\n--- RESULTADOS ---");
    print("Número de días registrados: $totalDias");
    print("Media de temperatura máxima: ${mediaMax.toStringAsFixed(2)} °C");
    print("Media de temperatura mínima: ${mediaMin.toStringAsFixed(2)} °C");
    print("Número de errores: $errores");
    print("Porcentaje de errores: ${porcentajeErrores.toStringAsFixed(2)} %");
  } else {
    print("No se ingresaron datos.");
  }
}
