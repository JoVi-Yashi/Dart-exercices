// ignore_for_file: unused_local_variable

/*

69. Dos números A y B son amigos, cuando la suma de los divisores menores que A es igual a B, al mismo
tiempo cuando la suma de los divisores menores que B es igual a A. Los dos menores números amigos
son 220 y 284, debido a que:
a. divisores de 220 1+2+4+5+10+11+20+22+44+45+110 = 284
b. divisores de 284 1+2+4+71+142 = 220
c. los siguientes pares de amigos son: 1184 y 1210; 2620 y 2924; 5020 y 5564, etc.

*/

int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i <= n ~/ 2; i++) {
    if (n % i == 0) suma += i;
  }
  return suma;
}


void main() {
  int contador = 0; // Contador de pares encontrados
  int limite = 10000; // Limite superior para buscar números amigos

  print("Primeros pares de números amigos:");

  for (int a = 1; a < limite; a++) {
    int b = sumaDivisores(a);

    if (b > a && sumaDivisores(b) == a) {
      print("$a y $b");
      contador++;
    }
  }
}
