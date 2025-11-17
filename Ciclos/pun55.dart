/*

55. Calcule e imprima el número de términos necesarios para que el valor de la siguiente sumatoria se
aproxime los más cercanamente a 1000 sin que lo exceda: ∑((k∧2+1)/k), donde k=1,2,3,4,...

*/

void main() {
  double limite = 1000.0;
  double suma = 0.0;
  int n = 0;

  for (int k = 1; ; k++) {
    suma += (k * k + 1) / k; // = k + 1/k
    if (suma > limite) {
      print("Excedió en k = $k, suma = ${suma.toStringAsFixed(6)}");
      print("Por tanto el mayor n que no excede 1000 es ${k - 1}");
      break;
    }
    n = k;
  }

  // Mostrar resultado final
  print("n = $n, S_n = ${suma.toStringAsFixed(6)}");
}
