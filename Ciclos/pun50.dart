/* 

50. Desarrolle un algoritmo o programa que permita calcular y mostrar la suma de todos los números
pares comprendidos entre 97 y 1003. Respuesta: 249150

*/

void main(List<String> args) {
  

  int suma = 0;

  for (int i = 97; i <= 1003; i++) {
    if (i % 2 == 0) {
      suma += i;
    }
  }

  print("La suma de los números pares entre 97 y 1003 es: $suma");
}
