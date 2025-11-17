/*

68.Un número se dice que es perfecto si la suma de sus divisores excepto él mismo es igual a dicho
número. Ejemplo: 6 es un número perfecto ya que sus divisores: 1 + 2 + 3 suman seis. Diseñe un
algoritmo o programa que imprima los tres primeros números perfectos.

*/

void main() {
  int contador = 0;
  int numero = 1;

  print("Primeros 3 números perfectos:");

  while (contador < 3) {
    int sumaDivisores = 0;

    // Calcular la suma de los divisores propios
    for (int i = 1; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        sumaDivisores += i;
      }
    }

    // Verificar si es perfecto
    if (sumaDivisores == numero) {
      print(numero);
      contador++;
    }

    numero++;
  }
}
