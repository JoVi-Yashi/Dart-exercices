/*

57. Para calcular la raíz cuadrada de un número N positivo, Herón de Alejandría ideó la siguiente fórmula:
RN = (X + N / X) /2, donde RN es la raíz de N y se calcula hasta cuando la diferencia entre X y RN es
menor que 0.000001; tomando X el valor de RN en cada iteración. Se debe leer el número y asegurar
que es positivo. Se puede iniciar el cálculo dándole a X el valor 0.1.

*/

import 'dart:io';
void main() {
  double N;

  // Leer número positivo
  do {
    stdout.write("Ingrese un número positivo: ");
    N = double.parse(stdin.readLineSync()!);
  } while (N <= 0);

  double X = 0.1;
  double RN = (X + N / X) / 2;

  // Repetir hasta que la diferencia sea muy pequeña
  while ((X - RN).abs() >= 0.000001) {
    X = RN;
    RN = (X + N / X) / 2;
  }

  print("La raíz cuadrada aproximada de $N es: $RN");
}
