/* 

48. Escriba un algoritmo para producir una tabla de conversión de temperatura para convertir valores
en grados Fahrenheit a su equivalente en grados Celsius, grados Kelvin y grados Rankine.
Las ecuaciones de conversión son:
C = 5(F-32) / 9
R = F + 459.67
K = C + 273.15
Donde F = temperatura en grados Fahrenheit
C = temperatura en grados Celsius
R = temperatura en grados Rankine
K = temperatura en grados Kelvin
Haga que el programa imprima encabezados para cada columna en la tabla.
Datos muestra:
de 28 a 54 oF en intervalos de 1 oF
de 450 a 950 oF en intervalos de 50 oF
de –50 a 250 oF en intervalos de 10 oF

*/

import 'dart:io';

// Funciones de conversión (aceptan int o double porque usan num)
double celsius(num f) => 5 * (f - 32) / 9;
double rankine(num f) => f + 459.67;
double kelvin(num f) => celsius(f) + 273.15;

// Función para imprimir tabla
void tablaTemperaturas(int inicio, int fin, int paso) {
  print("\nFahrenheit |   Celsius   |   Kelvin   |  Rankine");
  print("---------------------------------------------------");

  for (int f = inicio; f <= fin; f += paso) {
    double c = celsius(f);
    double k = kelvin(f);
    double r = rankine(f);

    print(
      "${f.toString().padLeft(10)} |"
      "${c.toStringAsFixed(2).padLeft(11)} |"
      "${k.toStringAsFixed(2).padLeft(11)} |"
      "${r.toStringAsFixed(2).padLeft(10)}"
    );
  }
}

void main() {
  while (true) {
    print("\n========== MENÚ DE TABLAS ==========");
    print("1. Tabla 1 (28°F a 54°F, paso 1)");
    print("2. Tabla 2 (450°F a 950°F, paso 50)");
    print("3. Tabla 3 (-50°F a 250°F, paso 10)");
    print("4. Salir");
    stdout.write("Seleccione una opción: ");

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case "1":
        print("\n--- Tabla 1 ---");
        tablaTemperaturas(28, 54, 1);
        break;

      case "2":
        print("\n--- Tabla 2 ---");
        tablaTemperaturas(450, 950, 50);
        break;

      case "3":
        print("\n--- Tabla 3 ---");
        tablaTemperaturas(-50, 250, 10);
        break;

      case "4":
        print("\nSaliendo del programa...");
        return;

      default:
        print("\n Opción inválida. Intente nuevamente.");
    }
  }
}
