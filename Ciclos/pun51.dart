/* 

51. Calcular el término doceavo y la suma de los doce primeros términos de la sucesión: 6, 11, 16, 21.
Respuesta: a12=61, suma=402.

*/

void doce() {
  int termino = 6; // Primer valor
  int diferencia = 5; // Incremento
  int suma = 0; // Acumulador
  int a12 = 0; // Para guardar el término 12

  for (int i = 1; i <= 12; i++) {
    // En cada ciclo: sumamos el término actual
    suma += termino;

    // Cuando llegamos al término 12 lo guardamos
    if (i == 12) {
      a12 = termino;
    }

    // Preparamos el siguiente término
    termino += diferencia;
  }

  print("a12 = $a12");
  print("Suma de los 12 primeros términos = $suma");
}

void main(List<String> args) {
  doce();
}
