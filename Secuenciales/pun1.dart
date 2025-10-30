import 'dart:io';

void calcularPromedioEdad() {
  print('--- Promedio de Edad ---');
  print('Ingrese la edad de la primera persona:');
  int edad1 = int.parse(stdin.readLineSync()!);

  print('Ingrese la edad de la segunda persona:');
  int edad2 = int.parse(stdin.readLineSync()!);

  print('Ingrese la edad de la tercera persona:');
  int edad3 = int.parse(stdin.readLineSync()!);

  double promedioEdad = (edad1 + edad2 + edad3) / 3;

  print(
    'El promedio de edad de las tres personas es: ${promedioEdad.toStringAsFixed(2)}',
  );
}


// void main(List<String> args) {
//   calcularPromedioEdad();
// }