/*

Confeccionar un algoritmo que permita resolver una ecuación de segundo grado, de la forma:
AX2+BX+C = 0, sabiendo que el discriminante (D) se calcula con la fórmula: D= Bˆ2­4*A*C. El valor
obtenido se evalúa y se aplica la fórmula correspondiente, según muestra la siguiente tabla:

si d = 0      x1 = x2 = B / ( 2 * a )

si d > 0      x1 = (-B + SQRT(b^2-4*A*C))/(2*A)
              x2 = (-B - SQRT(b^2-4*A*C))/(2*A)

si d < 0      No tiene solucion en los reales

*/

import 'dart:io';
import 'dart:math';

void ecuacion() {
  print("Ingrese valor de A:");
  double a = double.parse(stdin.readLineSync()!);

  print("Ingrese valor de B:");
  double b = double.parse(stdin.readLineSync()!);

  print("Ingrese valor de C:");
  double c = double.parse(stdin.readLineSync()!);

  // --------------------
  // Calcular discriminante
  // --------------------
  double d = (b * b) - (4 * a * c);

  print("\n===== RESULTADOS =====");
  print("Discriminante D = $d\n");

  // --------------------
  // Evaluar los casos
  // --------------------
  if (d == 0) {
    double x = -b / (2 * a);
    print("D = 0 → tiene una raíz doble");
    print("x1 = x2 = $x");
  } else if (d > 0) {
    double raiz = sqrt(d);

    double x1 = (-b + raiz) / (2 * a);
    double x2 = (-b - raiz) / (2 * a);

    print("D > 0 → tiene dos soluciones reales");
    print("x1 = $x1");
    print("x2 = $x2");
  } else {
    print("D < 0 → NO tiene solución en los números reales.");
  }
}

void main(List<String> args) {
  ecuacion();
}
