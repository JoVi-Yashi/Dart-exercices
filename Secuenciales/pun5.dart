import 'dart:io';

void calcularCalificacionFinal() {
  print('--- Calculadora de Calificación Final ---');
  print('Ingrese la calificación del primer parcial (0-10):');
  double parcial1 = double.parse(stdin.readLineSync()!);

  print('Ingrese la calificación del segundo parcial (0-10):');
  double parcial2 = double.parse(stdin.readLineSync()!);

  print('Ingrese la calificación del tercer parcial (0-10):');
  double parcial3 = double.parse(stdin.readLineSync()!);

  print('Ingrese la calificación del examen final (0-10):');
  double examenFinal = double.parse(stdin.readLineSync()!);

  print('Ingrese la calificación del trabajo final (0-10):');
  double trabajoFinal = double.parse(stdin.readLineSync()!);

  // Porcentajes
  double porcentajeParciales = 0.55; // 55%
  double porcentajeExamenFinal = 0.30; // 30%
  double porcentajeTrabajoFinal = 0.15; // 15%

  double promedioParciales = (parcial1 + parcial2 + parcial3) / 3;
  double calificacionParcialesPonderada =
      promedioParciales * porcentajeParciales;
  double calificacionExamenFinalPonderada = examenFinal * porcentajeExamenFinal;
  double calificacionTrabajoFinalPonderada =
      trabajoFinal * porcentajeTrabajoFinal;

  double calificacionFinal =
      calificacionParcialesPonderada +
      calificacionExamenFinalPonderada +
      calificacionTrabajoFinalPonderada;

  print(
    'El promedio de las calificaciones parciales es: ${promedioParciales.toStringAsFixed(2)}',
  );
  print(
    'La calificación final en la materia de computación es: ${calificacionFinal.toStringAsFixed(2)}',
  );
}

void main(List<String> args) {
  calcularCalificacionFinal();
}
