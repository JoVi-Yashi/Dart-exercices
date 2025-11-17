/*

46. Sea N y K dos enteros positivos, con K < N. Se desea escribir un programa que escriba el valor de
N,N-1,N-2,..., y así sucesivamente hasta llegar al valor de K.

*/

import 'dart:io';

void numeposi() {
  print("Ingrese N (mayor):");
  int n = int.parse(stdin.readLineSync()!);

  print("Ingrese K (menor):");
  int k = int.parse(stdin.readLineSync()!);

  print("\n--- Cuenta regresiva ---");
  for (int i = n; i >= k; i--) {
    print(i);
  }
}

void main(List<String> args) {
  numeposi();
}
