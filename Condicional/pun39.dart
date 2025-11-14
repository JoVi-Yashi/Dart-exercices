/*

Una persona se encuentra en la disyuntiva de comprar un automóvil o un terreno, los cuales
cuestan exactamente la misma cantidad de dinero. Sabe que mientras el automóvil se devalúa,
con el terreno sucede lo contrario. Esta persona comprará el automóvil si al cabo de tres años la
devaluación de éste no es mayor que la mitad del incremento del valor del terreno. Ayúdele a esta
persona a determinar si debe o no comprar el automóvil.

*/

import 'dart:io';
import 'dart:math';

void compra() {
  print(" --- disyuntiva de comprar un automóvil o un terreno ---");
  print('Ingrese el precio inicial (tanto del auto como del terreno):');
  double precioInicial = double.parse(stdin.readLineSync()!);

  print(
    'Ingrese el porcentaje de devaluación anual del automóvil (ejemplo: 15 para 15%):',
  );
  double porcentajeDevaluacion = double.parse(stdin.readLineSync()!);

  print(
    'Ingrese el porcentaje de incremento anual del terreno (ejemplo: 10 para 10%):',
  );
  double porcentajeIncremento = double.parse(stdin.readLineSync()!);

  if (precioInicial <= 0 ||
      porcentajeDevaluacion < 0 ||
      porcentajeIncremento < 0) {
    print('\nError: Los valores deben ser positivos.');
  } else {
    double factorDevaluacion = 1 - (porcentajeDevaluacion / 100);
    double valorAutoAnio3 = precioInicial * pow(factorDevaluacion, 3);

    // Calcular devaluación del auto
    double devaluacionAuto = precioInicial - valorAutoAnio3;

    // Calcular valor del terreno después de 3 años
    // Valor = PrecioInicial * (1 + porcentaje/100)^3
    double factorIncremento = 1 + (porcentajeIncremento / 100);
    double valorTerrenoAnio3 = precioInicial * pow(factorIncremento, 3);

    // Calcular incremento del terreno
    double incrementoTerreno = valorTerrenoAnio3 - precioInicial;

    // Calcular mitad del incremento del terreno
    double mitadIncrementoTerreno = incrementoTerreno / 2;

    // Mostrar cálculos
    print('\n=== ANÁLISIS DESPUÉS DE 3 AÑOS ===\n');
    print('AUTOMÓVIL:');
    print('  Precio inicial: \$${precioInicial.toStringAsFixed(2)}');
    print('  Valor después de 3 años: \$${valorAutoAnio3.toStringAsFixed(2)}');
    print('  Devaluación total: \$${devaluacionAuto.toStringAsFixed(2)}');

    print('\nTERRENO:');
    print('  Precio inicial: \$${precioInicial.toStringAsFixed(2)}');
    print(
      '  Valor después de 3 años: \$${valorTerrenoAnio3.toStringAsFixed(2)}',
    );
    print('  Incremento total: \$${incrementoTerreno.toStringAsFixed(2)}');
    print(
      '  Mitad del incremento: \$${mitadIncrementoTerreno.toStringAsFixed(2)}',
    );

    // Tomar decisión
    print('\n=== DECISIÓN ===');

    if (devaluacionAuto <= mitadIncrementoTerreno) {
      print('✓ DEBE COMPRAR EL AUTOMÓVIL');
      print(
        '\nRazón: La devaluación del auto (\$${devaluacionAuto.toStringAsFixed(2)}) ',
      );
      print(
        'NO es mayor que la mitad del incremento del terreno (\$${mitadIncrementoTerreno.toStringAsFixed(2)}).',
      );
    } else {
      print('✗ NO DEBE COMPRAR EL AUTOMÓVIL');
      print(
        '\nRazón: La devaluación del auto (\$${devaluacionAuto.toStringAsFixed(2)}) ',
      );
      print(
        'ES mayor que la mitad del incremento del terreno (\$${mitadIncrementoTerreno.toStringAsFixed(2)}).',
      );
      print('\nRecomendación: Es mejor comprar el TERRENO.');
    }
  }
}

void main(List<String> args) {
  compra();
}
