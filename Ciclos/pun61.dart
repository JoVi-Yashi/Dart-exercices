/*

61. Diseñe un algoritmo o programa que permita calcular la multiplicación de dos números, utilizando el
método de la multiplicación Rusa, el cual consiste en multiplicar por dos el multiplicando y dividir
entre dos el multiplicador hasta que el multiplicador tome el valor 1. Durante este proceso, se deben
sumar todos los multiplicandos correspondientes a multiplicadores impares y este resultado es el de
la multiplicación. Ejemplo:

a.  25  x 7 = 175   (multiplicador = 25, multiplicando = 7)
b.  25  7
c.  12  14
d.  6   28          suma= 7 + 56 + 112 = 175
e.  3   56
f.  1   112

*/

import 'dart:io';

void main() {
  print("=== Multiplicación Rusa ===");

  stdout.write("Ingrese el primer número (A): ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número (B): ");
  int b = int.parse(stdin.readLineSync()!);

  int multiplicador = a;
  int multiplicando = b;
  int suma = 0;

  print("\nProceso:");
  print("A\tB\t¿A impar?");

  while (multiplicador >= 1) {
    print(
      "$multiplicador\t$multiplicando\t${multiplicador % 2 != 0 ? 'Sí' : 'No'}",
    );

    // Si el multiplicador es impar → sumar multiplicando
    if (multiplicador % 2 != 0) {
      suma += multiplicando;
    }

    // Dividir entre 2 (entero)
    multiplicador ~/= 2;

    // Multiplicar por 2
    multiplicando *= 2;
  }

  print("\nResultado final: $a x $b = $suma");
}
