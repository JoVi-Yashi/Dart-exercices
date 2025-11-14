/*

Desarrolle un programa que calcule y muestre el monto que debe pagar un suscriptor por concepto
de consumo de luz eléctrica y servicio de aseo urbano. Dicho monto se calcula multiplicando la
diferencia de la lectura anterior y la lectura actual por el costo de cada Kilovatio hora, según la
siguiente escala:
0 - 100 2.622,00 Bs.
101 - 300 79,78 Bs. / Kwh
301 – 500 89,52 Bs. /Kwh
501 – en adelante 97,95 Bs. / Khw

*/

import 'dart:io';

void calculoFactura() {
  print('=== CÁLCULO DE FACTURA DE LUZ Y ASEO URBANO ===\n');

  // Leer datos de entrada
  print('Ingrese la lectura anterior (Kwh):');
  double lecturaAnterior = double.parse(stdin.readLineSync()!);

  print('Ingrese la lectura actual (Kwh):');
  double lecturaActual = double.parse(stdin.readLineSync()!);

  print('Ingrese el costo del servicio de aseo urbano (Bs.):');
  double costoAseo = double.parse(stdin.readLineSync()!);

  // Validar datos
  if (lecturaAnterior < 0 || lecturaActual < 0 || costoAseo < 0) {
    print('\nError: Los valores no pueden ser negativos.');
  } else if (lecturaActual < lecturaAnterior) {
    print(
      '\nError: La lectura actual no puede ser menor que la lectura anterior.',
    );
  } else {
    // Calcular consumo
    double consumo = lecturaActual - lecturaAnterior;

    // Calcular costo de luz según escala
    double costoLuz = 0;

    if (consumo >= 0 && consumo <= 100) {
      // De 0 a 100 Kwh: tarifa fija de 2622.00 Bs
      costoLuz = 2622.00;
    } else if (consumo >= 101 && consumo <= 300) {
      // De 101 a 300 Kwh: 79.78 Bs por Kwh
      costoLuz = consumo * 79.78;
    } else if (consumo >= 301 && consumo <= 500) {
      // De 301 a 500 Kwh: 89.52 Bs por Kwh
      costoLuz = consumo * 89.52;
    } else {
      // De 501 en adelante: 97.95 Bs por Kwh
      costoLuz = consumo * 97.95;
    }

    // Calcular monto total
    double montoTotal = costoLuz + costoAseo;

    // Mostrar resultados
    print('\n=== FACTURA DE SERVICIOS ===\n');
    print('Lectura anterior: ${lecturaAnterior.toStringAsFixed(2)} Kwh');
    print('Lectura actual: ${lecturaActual.toStringAsFixed(2)} Kwh');
    print('Consumo del período: ${consumo.toStringAsFixed(2)} Kwh');

    print('\n--- DESGLOSE DE COSTOS ---');

    // Mostrar tarifa aplicada
    if (consumo >= 0 && consumo <= 100) {
      print('Tarifa aplicada: 0-100 Kwh (Tarifa fija)');
    } else if (consumo >= 101 && consumo <= 300) {
      print('Tarifa aplicada: 101-300 Kwh (79.78 Bs/Kwh)');
    } else if (consumo >= 301 && consumo <= 500) {
      print('Tarifa aplicada: 301-500 Kwh (89.52 Bs/Kwh)');
    } else {
      print('Tarifa aplicada: 501+ Kwh (97.95 Bs/Kwh)');
    }

    print('\nConsumo de luz eléctrica: ${costoLuz.toStringAsFixed(2)} Bs');
    print('Servicio de aseo urbano: ${costoAseo.toStringAsFixed(2)} Bs');
    print('\n═══════════════════════════════');
    print('TOTAL A PAGAR: ${montoTotal.toStringAsFixed(2)} Bs');
    print('═══════════════════════════════');
  }
}

void main(List<String> args) {
  calculoFactura();
}