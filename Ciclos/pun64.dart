/*

64. Dada la siguiente serie: 1 + 1⁄2 + 1⁄4 + 1/8 + 1/16 + 1/32 + ... Desarrolle un algoritmo o programa que
determine el número de términos necesarios para obtener la suma que más se aproxime al valor de
1.99. Se debe imprimir el número de términos y el valor de la suma cuando cumpla la condición
mencionada antes.

*/

void main() {
  double suma = 0;
  double term = 1; // primer término
  int terminos = 0;

  while (suma + term <= 1.99) {
    suma += term;
    term /= 2;
    terminos++;
  }

  print("Número de términos necesarios: $terminos");
  print("Valor de la suma aproximada: ${suma.toStringAsFixed(6)}");
}
