import 'dart:io';

void main() {
  print('=== CÁLCULO DE DINERO EN EL BANCO ===\n');
  
  stdout.write('Ingrese cantidad de billetes de 50000: ');
  int n1 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 20000: ');
  int n2 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 10000: ');
  int n3 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 5000: ');
  int n4 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 2000: ');
  int n5 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 1000: ');
  int n6 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 500: ');
  int n7 = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese cantidad de billetes de 100: ');
  int n8 = int.parse(stdin.readLineSync()!);
  
  int total = (n1 * 50000) + (n2 * 20000) + (n3 * 10000) + (n4 * 5000) + 
              (n5 * 2000) + (n6 * 1000) + (n7 * 500) + (n8 * 100);
  
  print('\n=== RESULTADO ===');
  print('Total de dinero en el banco: Bs. $total');
}