import 'dart:io';

void alquilerAuto() {
  print('=== CÁLCULO DE ALQUILER DE AUTOMÓVIL ===\n');
  
  stdout.write('Ingrese los kilómetros recorridos: ');
  double km = double.parse(stdin.readLineSync()!);
  
  double montoPagar;
  
  if (km <= 300) {
    // Hasta 300 km: tarifa fija de 5000 Bs
    montoPagar = 5000;
    print('\n--- DETALLE DEL COBRO ---');
    print('Tarifa base (hasta 300 km): Bs. 5000.00');
  } else if (km <= 1000) {
    // Entre 300 y 1000 km: 5000 + 200 por cada km extra
    double kmExtras = km - 300;
    double cargoExtra = kmExtras * 200;
    montoPagar = 5000 + cargoExtra;
    
    print('\n--- DETALLE DEL COBRO ---');
    print('Tarifa base: Bs. 5000.00');
    print('Kilómetros adicionales: ${kmExtras.toStringAsFixed(2)} km');
    print('Cargo adicional (Bs. 200/km): Bs. ${cargoExtra.toStringAsFixed(2)}');
  } else {
    // Más de 1000 km: 5000 + 200 por km entre 300-1000 + 150 por km > 1000
    double kmEntre300y1000 = 700; // Siempre son 700 km en este rango
    double cargoEntre300y1000 = kmEntre300y1000 * 200;
    
    double kmMayores1000 = km - 1000;
    double cargoMayores1000 = kmMayores1000 * 150;
    
    montoPagar = 5000 + cargoEntre300y1000 + cargoMayores1000;
    
    print('\n--- DETALLE DEL COBRO ---');
    print('Tarifa base: Bs. 5000.00');
    print('Cargo km 301-1000 (700 km × Bs. 200): Bs. ${cargoEntre300y1000.toStringAsFixed(2)}');
    print('Kilómetros sobre 1000: ${kmMayores1000.toStringAsFixed(2)} km');
    print('Cargo adicional (Bs. 150/km): Bs. ${cargoMayores1000.toStringAsFixed(2)}');
  }
  
  print('\n=== RESULTADO ===');
  print('Kilómetros recorridos: ${km.toStringAsFixed(2)} km');
  print('Monto total a pagar: Bs. ${montoPagar.toStringAsFixed(2)}');
}

// void main() {
//   alquilerAuto();
// }