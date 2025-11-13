import 'dart:io';

void redondeoCentena() {
  print('=== REDONDEO A LA CENTENA MÁS PRÓXIMA ===\n');
  
  stdout.write('Ingrese el dígito A (millar): ');
  int a = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el dígito B (centena): ');
  int b = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el dígito C (decena): ');
  int c = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el dígito D (unidad): ');
  int d = int.parse(stdin.readLineSync()!);
  
  // Formar el número N
  int n = a * 1000 + b * 100 + c * 10 + d;
  
  // Obtener las dos últimas cifras para determinar el redondeo
  int dosUltimasCifras = c * 10 + d;
  
  int nRedondeado;
  
  if (dosUltimasCifras < 50) {
    // Redondear hacia abajo
    nRedondeado = (n ~/ 100) * 100;
  } else {
    // Redondear hacia arriba
    nRedondeado = ((n ~/ 100) + 1) * 100;
  }
  
  print('\n=== RESULTADO ===');
  print('Número original N: $n');
  print('Dos últimas cifras: $dosUltimasCifras');
  print('Número redondeado a la centena: $nRedondeado');
}

// void main() {
//   redondeoCentena();
// }