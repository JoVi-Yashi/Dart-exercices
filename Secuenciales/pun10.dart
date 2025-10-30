import 'dart:io';

void Divisas(){
// El cambio de divisas en la bolsa de Madrid el 25/08/1987 fue el siguiente
// 100 chelines austríacos = 956.871 pesetas
// 1 dólar EEUU = 122.499 pesetas
// 100 dracmas griegos = 88.607 pesetas
// 100 francos belgas = 323.728 pesetas
// 1 franco francés = 20.110 pesetas
// 1 libra esterlina = 178.938 pesetas
// 100 liras italianas = 9.289 pesetas
// Lea una cantidad en chelines austriacos e imprima el equivalente en pesetas. Lea una
// cantidad en dracmas griegos e imprima su equivalente en francos franceses. Finalmente, lea una
// cantidad en pesetas e imprima su equivalente en dólares y liras italianas.

print('--- Conversor de Divisas (Bolsa de Madrid 25/08/1987) ---');

  const double pesetasPorChelinAustriaco = 956.871 / 100;
  const double pesetasPorDolarEEUU = 122.499;
  const double pesetasPorDracmaGriego = 88.607 / 100;
  const double pesetasPorFrancoFrances = 20.110;
  const double pesetasPorLiraItaliana = 9.289 / 100;


  print('\n--- Conversión de Chelines Austriacos a Pesetas ---');
  print('Ingrese la cantidad en Chelines Austriacos (ATS):');
  double chelinesAustriacos = double.parse(stdin.readLineSync()!);
  double pesetasDesdeATS = chelinesAustriacos * pesetasPorChelinAustriaco;
  print('$chelinesAustriacos ATS equivalen a ${pesetasDesdeATS.toStringAsFixed(3)} Pesetas.');

  print('\n--- Conversión de Dracmas Griegos a Francos Franceses ---');
  print('Ingrese la cantidad en Dracmas Griegos (GRD):');
  double dracmasGriegos = double.parse(stdin.readLineSync()!);

  double pesetasDesdeGRD = dracmasGriegos * pesetasPorDracmaGriego;

  double francosFrancesesDesdeGRD = pesetasDesdeGRD / pesetasPorFrancoFrances;
  print('$dracmasGriegos GRD equivalen a ${francosFrancesesDesdeGRD.toStringAsFixed(3)} Francos Franceses.');

  print('\n--- Conversión de Pesetas a Dólares y Liras Italianas ---');
  print('Ingrese la cantidad en Pesetas (ESP):');
  double pesetasInput = double.parse(stdin.readLineSync()!);

  double dolaresDesdePesetas = pesetasInput / pesetasPorDolarEEUU;
  print('$pesetasInput Pesetas equivalen a ${dolaresDesdePesetas.toStringAsFixed(3)} Dólares EEUU.');

  double lirasItalianasDesdePesetas = pesetasInput / pesetasPorLiraItaliana;
  print('$pesetasInput Pesetas equivalen a ${lirasItalianasDesdePesetas.toStringAsFixed(3)} Liras Italianas.');
}

// Para ejecutar:
// void main() {
//   conversorDeDivisas();
// }
