/* 
Calcule y muestre, a un alumno, cuál será su promedio general en las tres materias más difíciles que
cursa y cuál será el promedio que obtendrá en cada una de ellas. Estas materias se evalúan como se
muestra a continuación:
Matemática Examen 90% y 10% del promedio de tres tareas.
Física Examen 80% y 20% del promedio de dos tareas.
Química Examen 85% y 15% del promedio de tres tareas. 
*/

import 'dart:io';

void main() {
  print('=== CÁLCULO DE PROMEDIOS DE MATERIAS ===\n');
  
  // Matemática
  print('--- MATEMÁTICA ---');
  stdout.write('Ingrese la nota del examen de Matemática: ');
  double examenMat = double.parse(stdin.readLineSync()!);
  
  double sumaTareasMat = 0;
  for (int i = 1; i <= 3; i++) {
    stdout.write('Ingrese la nota de la tarea $i de Matemática: ');
    sumaTareasMat += double.parse(stdin.readLineSync()!);
  }
  double promedioTareasMat = sumaTareasMat / 3;
  double promedioMat = (examenMat * 0.90) + (promedioTareasMat * 0.10);
  
  // Física
  print('\n--- FÍSICA ---');
  stdout.write('Ingrese la nota del examen de Física: ');
  double examenFis = double.parse(stdin.readLineSync()!);
  
  double sumaTareasFis = 0;
  for (int i = 1; i <= 2; i++) {
    stdout.write('Ingrese la nota de la tarea $i de Física: ');
    sumaTareasFis += double.parse(stdin.readLineSync()!);
  }
  double promedioTareasFis = sumaTareasFis / 2;
  double promedioFis = (examenFis * 0.80) + (promedioTareasFis * 0.20);
  
  // Química
  print('\n--- QUÍMICA ---');
  stdout.write('Ingrese la nota del examen de Química: ');
  double examenQuim = double.parse(stdin.readLineSync()!);
  
  double sumaTareasQuim = 0;
  for (int i = 1; i <= 3; i++) {
    stdout.write('Ingrese la nota de la tarea $i de Química: ');
    sumaTareasQuim += double.parse(stdin.readLineSync()!);
  }
  double promedioTareasQuim = sumaTareasQuim / 3;
  double promedioQuim = (examenQuim * 0.85) + (promedioTareasQuim * 0.15);
  
  // Promedio general
  double promedioGeneral = (promedioMat + promedioFis + promedioQuim) / 3;
  
  // Mostrar resultados
  print('\n=== RESULTADOS ===');
  print('Promedio de Matemática: ${promedioMat.toStringAsFixed(2)}');
  print('Promedio de Física: ${promedioFis.toStringAsFixed(2)}');
  print('Promedio de Química: ${promedioQuim.toStringAsFixed(2)}');
  print('Promedio General: ${promedioGeneral.toStringAsFixed(2)}');
}