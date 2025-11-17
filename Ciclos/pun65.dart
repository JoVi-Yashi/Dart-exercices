/* 

65. Calcular el sueldo neto de los trabajadores de una compañía sabiendo que este depende de los
siguientes datos:
• sueldo básico mensual 100000 si es obrero
• sueldo básico mensual 165500 si es administrativo
• sueldo básico mensual 250000 si es ejecutivo Las asignaciones y deducciones son:
• aporte por cada hijo hasta 5 hijos 10% del sueldo básico
• aporte por asistencia superior al 95% de los 30 días del mes 5% del sueldo básico.
• Deducción del 10% del sueldo básico para la caja de ahorros.
• Deducción para el seguro social 2% del sueldo básico
Por cada empleado debe salir un registro con el nombre y cédula, sueldo básico, aporte a la Caja de
Ahorros, seguro social y sueldo neto.

*/

import 'dart:io';

void main() {
  String repetir = "S";

  while (repetir.toUpperCase() == "S") {
    stdout.write("\nNombre del trabajador: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Cédula: ");
    String cedula = stdin.readLineSync()!;

    stdout.write(
      "Tipo de empleado (1=Obrero, 2=Administrativo, 3=Ejecutivo): ",
    );
    int tipo = int.parse(stdin.readLineSync()!);

    stdout.write("Número de hijos: ");
    int hijos = int.parse(stdin.readLineSync()!);
    if (hijos > 5) hijos = 5; // máximo 5 hijos

    stdout.write("Porcentaje de asistencia (0-100): ");
    double asistencia = double.parse(stdin.readLineSync()!);

    // Sueldo básico según tipo
    double sueldoBasico = 0;
    if (tipo == 1)
      sueldoBasico = 100000;
    else if (tipo == 2)
      sueldoBasico = 165500;
    else if (tipo == 3)
      sueldoBasico = 250000;

    // Asignaciones
    double asignacionHijos = hijos * 0.10 * sueldoBasico;
    double asignacionAsistencia = asistencia > 95 ? 0.05 * sueldoBasico : 0;

    double totalAsignaciones = asignacionHijos + asignacionAsistencia;

    // Deducciones
    double cajaAhorros = 0.10 * sueldoBasico;
    double seguroSocial = 0.02 * sueldoBasico;

    double totalDeducciones = cajaAhorros + seguroSocial;

    // Sueldo neto
    double sueldoNeto = sueldoBasico + totalAsignaciones - totalDeducciones;

    // Mostrar registro
    print("\n========== REGISTRO ==========");
    print("Nombre: $nombre");
    print("Cédula: $cedula");
    print("Sueldo básico: \$${sueldoBasico.toStringAsFixed(2)}");
    print("Aporte Caja de Ahorros: \$${cajaAhorros.toStringAsFixed(2)}");
    print("Seguro Social: \$${seguroSocial.toStringAsFixed(2)}");
    print("Asignaciones: \$${totalAsignaciones.toStringAsFixed(2)}");
    print("Sueldo neto: \$${sueldoNeto.toStringAsFixed(2)}");

    stdout.write("\n¿Desea ingresar otro trabajador? (S/N): ");
    repetir = stdin.readLineSync()!.toUpperCase();
  }
}
