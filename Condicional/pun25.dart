import 'dart:io';

void aumentoSueldo() {
  print('=== CÁLCULO DE AUMENTO DE SUELDO ===\n');

  stdout.write('Ingrese el sueldo del trabajador: ');
  double sueldo = double.parse(stdin.readLineSync()!);

  double porcentajeAumento;
  double nuevoSueldo;

  if (sueldo < 40000) {
    porcentajeAumento = 15;
    nuevoSueldo = sueldo * 1.15;
  } else {
    porcentajeAumento = 12;
    nuevoSueldo = sueldo * 1.12;
  }

  double aumento = nuevoSueldo - sueldo;

  print('\n=== RESULTADO ===');
  print('Sueldo actual: Bs. ${sueldo.toStringAsFixed(2)}');
  print('Porcentaje de aumento: $porcentajeAumento%');
  print('Aumento: Bs. ${aumento.toStringAsFixed(2)}');
  print('Nuevo sueldo: Bs. ${nuevoSueldo.toStringAsFixed(2)}');
}

// ejecu
void main() {
  aumentoSueldo();
}
