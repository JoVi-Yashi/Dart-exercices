/*

Dados tres datos enteros positivos, que representan las longitudes de los lados de un probable
triángulo, desarrolle un algoritmo que determine si los datos corresponden a un triángulo. En caso
de que sí correspondan, escriba si el triángulo es equilátero, isósceles o escaleno. Calcule además
su área. Considere que es triángulo si se cumple que la suma de los dos lados menores es mayor
que la del lado mayor. Tome en cuenta además que el área de un triángulo la calculamos como:
area = √S(S­A)(S­B)(S­C) donde S es la mitad de la suma de los lados A, B y C.
Recuerde:
Equilátero: todos los lados son iguales.
Isósceles: 2 lados iguales y 1 diferente.
Escaleno: Todos los lados diferentes.

*/

import 'dart:io';
import 'dart:math';

void ladosTriangulo() {
  print("--- Lados de un Triangulo ---");

  stdout.write("Digite el valor del primer lado de el triangulo: ");
  double lado1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite el valor del segundo lado de el triangulo: ");
  double lado2 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite el valor del tercer lado de el triangulo: ");
  double lado3 = double.parse(stdin.readLineSync()!);

  if (lado1 <= 0 && lado2 <= 0 && lado3 <= 0) {
    print("Los lados no pueden ser negativos");
  } else {
    double mayor, menor1, menor2;

    if (lado1 >= lado2 && lado1 >= lado3) {
      mayor = lado1;
      menor1 = lado2;
      menor2 = lado3;
    } else if (lado2 >= lado1 && lado2 >= lado3) {
      mayor = lado2;
      menor1 = lado1;
      menor2 = lado3;
    } else {
      mayor = lado3;
      menor1 = lado1;
      menor2 = lado2;
    }
    if((menor1 + menor2) > mayor)
    {
      print("\n✓ Los datos SÍ corresponden a un triángulo.\n");

      if (lado1 == lado2 && lado2 == lado3) {
        print('Tipo de triángulo: EQUILÁTERO (todos los lados son iguales)');
      } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
        print('Tipo de triángulo: ISÓSCELES (dos lados iguales)');
      } else {
        print('Tipo de triángulo: ESCALENO (todos los lados diferentes)');
      }
      
      // Calcular el área usando la fórmula de Herón
      double s = (lado1 + lado2 + lado3) / 2;
      double area = sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
      print('Área del triángulo: ${area.toStringAsFixed(2)} unidades cuadradas');
      
    } else {
      print('\n✗ Los datos NO corresponden a un triángulo.');
      print('La suma de los dos lados menores debe ser mayor que el lado mayor.');
    }
    }
  }

void main(List<String> args) {
  ladosTriangulo();
}