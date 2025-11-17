/*

Una persona desea iniciar un negocio, para lo cual piensa verificar cuánto dinero le prestaría el
banco por hipotecar su casa. Tiene una cuenta bancaria, pero no quiere disponer de ella a menos
que el monto por hipotecar su casa sea muy pequeño. Si el monto de la hipoteca es menor que
$1.000.000 entonces invertirá el 50% de la inversión total, y un socio invertirá el otro 50%. Si el
monto de la hipoteca es de $1.000.000 o más, entonces invertirá el monto total de la hipoteca y el


resto del dinero que se necesite para cubrir la inversión total se repartirá a partes iguales entre el
socio y él.

*/

import 'dart:io';

void hipoteca() {
  print("Ingrese el monto de la hipoteca: ");
  double hipoteca = double.parse(stdin.readLineSync()!);

  print("Ingrese la inversión total necesaria: ");
  double inversionTotal = double.parse(stdin.readLineSync()!);

  double inversionPersona = 0;
  double inversionSocio = 0;

  // ---------------- Lógica principal ----------------

  if (hipoteca < 1000000) {
    // Escenario A: Hipoteca pequeña
    inversionPersona = inversionTotal * 0.5;
    inversionSocio = inversionTotal * 0.5;
  } else {
    // Escenario B: Hipoteca grande
    inversionPersona = hipoteca;

    if (hipoteca < inversionTotal) {
      // Falta dinero para completar la inversión
      double faltante = inversionTotal - hipoteca;

      // Se divide entre él y su socio
      double mitad = faltante / 2;

      inversionPersona += mitad;
      inversionSocio = mitad;
    } else {
      // La hipoteca cubre todo
      inversionSocio = 0;
    }
  }

  // ---------------- Resultados ----------------
  print("\n===== RESULTADOS DEL NEGOCIO =====");
  print("Inversión de la persona: \$${inversionPersona.toStringAsFixed(2)}");
  print("Inversión del socio    : \$${inversionSocio.toStringAsFixed(2)}");
}

void main(List<String> args) {
  hipoteca();
}
