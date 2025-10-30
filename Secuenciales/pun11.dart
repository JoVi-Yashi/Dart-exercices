/* Se conoce de un trabajador su nombre, el número de horas normales trabajadas, el pago de una hora
normal y el número de horas extras trabajadas. Además, que, cada hora extra se paga 25% más del
valor de una hora normal. Si se deducen al trabajador sobre el sueldo base 5% del paro forzoso, 2%
de política habitacional y 7% para caja de ahorro. Si se le asignan 25000 Bolívares por actualización
académica, 17300 Bolívares por cada hijo y una prima por hogar de 18000 Bolívares. Calcule y
muestre las asignaciones, las deducciones y el sueldo neto del trabajador. */

import 'dart:io';

void calcularSueldoTrabajador() {
  print('--- Calculadora de Nómina del Trabajador ---');

  print('Ingrese el nombre del trabajador:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese el número de horas normales trabajadas:');
  double horasNormales = double.parse(stdin.readLineSync()!);

  print('Ingrese el pago por hora normal:');
  double pagoHoraNormal = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de horas extras trabajadas:');
  double horasExtras = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de hijos del trabajador:');
  int numeroHijos = int.parse(stdin.readLineSync()!);

  double sueldoHorasNormales = horasNormales * pagoHoraNormal;
  double pagoHoraExtra = pagoHoraNormal * 1.25; 
  double sueldoHorasExtras = horasExtras * pagoHoraExtra;
  double sueldoBase = sueldoHorasNormales + sueldoHorasExtras;

  print('\n--- Resumen de Sueldo Base ---');
  print('Sueldo por horas normales: ${sueldoHorasNormales.toStringAsFixed(2)} Bs.');
  print('Pago por hora extra (valor unitario): ${pagoHoraExtra.toStringAsFixed(2)} Bs.');
  print('Sueldo por horas extras: ${sueldoHorasExtras.toStringAsFixed(2)} Bs.');
  print('Sueldo Bruto (antes de deducciones y asignaciones): ${sueldoBase.toStringAsFixed(2)} Bs.');

  const double actualizacionAcademica = 25000.0;
  const double primaPorHijo = 17300.0;
  const double primaHogar = 18000.0;

  double totalAsignaciones = actualizacionAcademica + (primaPorHijo * numeroHijos) + primaHogar;

  print('\n--- Asignaciones ---');
  print('Actualización académica: ${actualizacionAcademica.toStringAsFixed(2)} Bs.');
  print('Prima por hijos ($numeroHijos x ${primaPorHijo.toStringAsFixed(2)}): ${(primaPorHijo * numeroHijos).toStringAsFixed(2)} Bs.');
  print('Prima por hogar: ${primaHogar.toStringAsFixed(2)} Bs.');
  print('Total de Asignaciones: ${totalAsignaciones.toStringAsFixed(2)} Bs.');

  const double porcentajeParoForzoso = 0.05; // 5%
  const double porcentajePoliticaHabitacional = 0.02; // 2%
  const double porcentajeCajaAhorro = 0.07; // 7%

  double deduccionParoForzoso = sueldoBase * porcentajeParoForzoso;
  double deduccionPoliticaHabitacional = sueldoBase * porcentajePoliticaHabitacional;
  double deduccionCajaAhorro = sueldoBase * porcentajeCajaAhorro;
  double totalDeducciones = deduccionParoForzoso + deduccionPoliticaHabitacional + deduccionCajaAhorro;

  print('\n--- Deducciones ---');
  print('Deducción por paro forzoso (5%): ${deduccionParoForzoso.toStringAsFixed(2)} Bs.');
  print('Deducción por política habitacional (2%): ${deduccionPoliticaHabitacional.toStringAsFixed(2)} Bs.');
  print('Deducción por caja de ahorro (7%): ${deduccionCajaAhorro.toStringAsFixed(2)} Bs.');
  print('Total de Deducciones: ${totalDeducciones.toStringAsFixed(2)} Bs.');

  double sueldoNeto = sueldoBase + totalAsignaciones - totalDeducciones;

  print('\n--- Resumen General ---');
  print('Nombre del trabajador: $nombre');
  print('Sueldo Bruto: ${sueldoBase.toStringAsFixed(2)} Bs.');
  print('Total Asignaciones: ${totalAsignaciones.toStringAsFixed(2)} Bs.');
  print('Total Deducciones: ${totalDeducciones.toStringAsFixed(2)} Bs.');
  print('-----------------------------------------');
  print('Sueldo Neto a Recibir: ${sueldoNeto.toStringAsFixed(2)} Bs.');
  print('-----------------------------------------');
}

// Para ejecutar:
// void main() {
//   calcularSueldoTrabajador();
// }
