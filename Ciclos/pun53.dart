/*

53. Una empresa requiere realizar el cálculo de la nómina semanal de un conjunto M de empleados; para
ello dispone que los datos de entrada son: nombre, nacionalidad (V o E), edad, tipo de empleado
(1,2,3) y número de horas trabajadas. Con esta información se desea calcular e imprimir:
a. Sueldo básico o bruto. Considere para ello que el pago por hora depende del tipo de
empleado, según la siguiente distribución:
• Si el tipo empleado es 1 Bs. 5000
• Si el tipo empleado es 2 Bs. 10000
• Si el tipo empleado es 3 Bs. 15000
b. Seguro Social, que corresponde al 3% del Sueldo Básico, si éste último es mayor a 100000.
c. Total, de venezolanos por tipo de empleado.
d. Total, de Extranjeros cuya edad es impar.
e. Promedio de edad de todos los empleados.
f. Total, general a pagar en sueldos.

*/

import 'dart:io';

void main() {
  // Cantidad de empleados (puedes pedirla o dejarla fija)
  stdout.write("¿Cuántos empleados desea procesar? ");
  int m = int.parse(stdin.readLineSync()!);

  // Totales venezolanos por tipo
  int vzTipo1 = 0;
  int vzTipo2 = 0;
  int vzTipo3 = 0;

  // Total extranjeros con edad impar
  int exEdadImpar = 0;

  // Promedio de edad
  int sumaEdades = 0;

  // Total general a pagar
  double totalGeneralSueldos = 0;

  print("\n=========== PROCESAMIENTO DE NÓMINA ===========");

  for (int i = 1; i <= m; i++) {
    print("\nEmpleado $i");

    stdout.write("Nombre: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Nacionalidad (V/E): ");
    String nac = stdin.readLineSync()!.toUpperCase();

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Tipo de empleado (1,2,3): ");
    int tipo = int.parse(stdin.readLineSync()!);

    stdout.write("Horas trabajadas: ");
    int horas = int.parse(stdin.readLineSync()!);

    // a. Sueldo básico
    int pagoHora = 0;
    if (tipo == 1)
      pagoHora = 5000;
    else if (tipo == 2)
      pagoHora = 10000;
    else if (tipo == 3)
      pagoHora = 15000;

    int sueldoBasico = horas * pagoHora;

    // b. Seguro social
    double seguro = (sueldoBasico > 100000) ? sueldoBasico * 0.03 : 0;

    // c. Totales venezolanos por tipo
    if (nac == "V") {
      if (tipo == 1)
        vzTipo1++;
      else if (tipo == 2)
        vzTipo2++;
      else if (tipo == 3)
        vzTipo3++;
    }

    // d. Total extranjeros con edad impar
    if (nac == "E" && edad % 2 != 0) {
      exEdadImpar++;
    }

    // e. Promedio edades
    sumaEdades += edad;

    // f. Total general sueldos
    totalGeneralSueldos += sueldoBasico - seguro;

    // ---- Imprimir datos del empleado ----
    print("\n--- Datos del empleado ---");
    print("Nombre              : $nombre");
    print("Sueldo básico       : Bs. $sueldoBasico");
    print("Seguro Social       : Bs. ${seguro.toStringAsFixed(2)}");
    print(
      "Sueldo Neto         : Bs. ${(sueldoBasico - seguro).toStringAsFixed(2)}",
    );
  }

  // Promedio edad
  double promedioEdad = sumaEdades / m;

  // ---- Reporte final ----
  print("\n=========== RESUMEN FINAL ===========");
  print("Venezolanos tipo 1 : $vzTipo1");
  print("Venezolanos tipo 2 : $vzTipo2");
  print("Venezolanos tipo 3 : $vzTipo3\n");
  print("Extranjeros con edad impar : $exEdadImpar\n");
  print("Promedio de edad : ${promedioEdad.toStringAsFixed(2)} años\n");
  print(
    "Total general a pagar en sueldos : Bs. ${totalGeneralSueldos.toStringAsFixed(2)}",
  );
}
