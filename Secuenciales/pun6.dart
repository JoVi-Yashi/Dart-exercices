import 'dart:io';

void calcularPorcentajeGenero() {
  print('--- Calculadora de Porcentaje de Género ---');
  print('Ingrese el número total de hombres en el grupo:');
  int totalHombres = int.parse(stdin.readLineSync()!);

  print('Ingrese el número total de mujeres en el grupo:');
  int totalMujeres = int.parse(stdin.readLineSync()!);

  int totalEstudiantes = totalHombres + totalMujeres;

  double porcentajeHombres = (totalHombres / totalEstudiantes) * 100;
  double porcentajeMujeres = (totalMujeres / totalEstudiantes) * 100;

  print('El total de estudiantes en el grupo es: $totalEstudiantes');
  print(
    'El porcentaje de hombres es: ${porcentajeHombres.toStringAsFixed(2)}%',
  );
  print(
    'El porcentaje de mujeres es: ${porcentajeMujeres.toStringAsFixed(2)}%',
  );
}


// void main(List<String> args) {
//   calcularPorcentajeGenero();
// }