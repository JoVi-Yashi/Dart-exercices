import 'dart:io';

void main() {
  print('=== DISTRIBUCIÓN DE PRESUPUESTO HOSPITALARIO ===\n');
  
  const double porcentajeGinecologia = 0.40;
  const double porcentajeTraumatologia = 0.30;
  const double porcentajePediatria = 0.30;
  
  stdout.write('Ingrese el presupuesto anual del hospital: ');
  double presupuestoTotal = double.parse(stdin.readLineSync()!);
  
  double presupuestoGinecologia = presupuestoTotal * porcentajeGinecologia;
  double presupuestoTraumatologia = presupuestoTotal * porcentajeTraumatologia;
  double presupuestoPediatria = presupuestoTotal * porcentajePediatria;
  
  print('\n=== DISTRIBUCIÓN DEL PRESUPUESTO ===');
  print('Presupuesto total: Bs. ${presupuestoTotal.toStringAsFixed(2)}');
  print('\nGinecología (40%): Bs. ${presupuestoGinecologia.toStringAsFixed(2)}');
  print('Traumatología (30%): Bs. ${presupuestoTraumatologia.toStringAsFixed(2)}');
  print('Pediatría (30%): Bs. ${presupuestoPediatria.toStringAsFixed(2)}');
}