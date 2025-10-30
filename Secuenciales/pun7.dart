import 'dart:io';

void convertirMetrosAPiesPulgadas() {
  print('--- Convertidor de Metros a Pies y Pulgadas ---');
  print('Ingrese la cantidad en metros:');
  double metros = double.parse(stdin.readLineSync()!);

  const double pulgadasPorMetro = 39.27;
  const double pulgadasPorPie = 12.0;

  double totalPulgadas = metros * pulgadasPorMetro;
  int pies = (totalPulgadas / pulgadasPorPie).floor();
  double pulgadasRestantes = totalPulgadas % pulgadasPorPie;

  print('$metros metros equivalen a:');
  print('${pies} pies y ${pulgadasRestantes.toStringAsFixed(2)} pulgadas');
}


// void main(List<String> args) {
//   convertirMetrosAPiesPulgadas();
// }