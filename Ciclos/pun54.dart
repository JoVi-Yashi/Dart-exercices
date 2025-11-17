/*

54. Un investigador acaba de aplicar 64 cuestionarios de 23 preguntas cada uno; donde cada pregunta
permite escoger entre 1 y 5, a un grupo de personas que constituyen su población. Se desea que
elabore un Programa, para ayudar al Investigador a procesar toda la información recopilada, para
ello tome en cuenta lo siguiente: necesita calcular el promedio de cada instrumento o escala para lo
cual es necesaria la fórmula: PT/NT, donde PT representa el total de puntos de cada cuestionario que resulta de sumar los valores que el encuestado, encerró entre un círculo y NT es el total de preguntas
del instrumento. Estos valores se deben acumular, para al final calcular y mostrar lo siguiente:

a. La media o promedio de todos los cuestionarios (promedio general).

b. El promedio más alto obtenido y número de instrumento a que corresponde.

c. El promedio más bajo obtenido y número de instrumento a que corresponde.

d. Porcentaje de cuestionarios que obtuvieron un promedio inferior a 3, respecto a los que tuvieron un
promedio superior a 4.

e. Porcentaje de cuestionarios que obtuvieron un promedio entre 4.5 y 5 respecto al total procesado.
NÚMERO INDETERMINADO DE ITERACIONES.

*/

import 'dart:io';

void main() {
  const int NT = 23; // total de preguntas por cuestionario

  double sumaPromedios = 0;
  int totalCuestionarios = 0;

  double mayorPromedio = -1;
  int instrumentoMayor = 0;

  double menorPromedio = 99999;
  int instrumentoMenor = 0;

  int contMenor3 = 0;
  int contMayor4 = 0;

  int contEntre45y5 = 0;

  int numInstrumento = 0;

  print("=== PROCESAMIENTO DE CUESTIONARIOS ===");
  print("Ingrese los cuestionarios. Para terminar, escriba * al comenzar.");

  while (true) {
    stdout.write("\n¿Procesar cuestionario? (número o * para terminar): ");
    String entrada = stdin.readLineSync()!;

    if (entrada == "*") break;

    numInstrumento = int.parse(entrada);

    // Leer las 23 respuestas
    int PT = 0;
    print("Ingrese las 23 respuestas (entre 1 y 5):");
    for (int i = 1; i <= NT; i++) {
      stdout.write("Pregunta $i: ");
      int val = int.parse(stdin.readLineSync()!);
      if (val < 1 || val > 5) {
        print("Valor inválido. Solo 1 a 5.");
        i--;
        continue;
      }
      PT += val;
    }

    double promedio = PT / NT;
    totalCuestionarios++;
    sumaPromedios += promedio;

    // Mayor promedio
    if (promedio > mayorPromedio) {
      mayorPromedio = promedio;
      instrumentoMayor = numInstrumento;
    }

    // Menor promedio
    if (promedio < menorPromedio) {
      menorPromedio = promedio;
      instrumentoMenor = numInstrumento;
    }

    // Para inciso (d)
    if (promedio < 3) contMenor3++;
    if (promedio > 4) contMayor4++;

    // Para inciso (e)
    if (promedio >= 4.5 && promedio <= 5) contEntre45y5++;
  }

  // Cálculos finales
  double mediaGeneral = totalCuestionarios == 0
      ? 0
      : (sumaPromedios / totalCuestionarios);

  double porcPromMenor3vsMayor4 = contMayor4 == 0
      ? 0
      : (contMenor3 / contMayor4) * 100;

  double porc45a5 = totalCuestionarios == 0
      ? 0
      : (contEntre45y5 / totalCuestionarios) * 100;

  print("\n========== RESULTADOS ==========");
  print(
    "Promedio general de todos los cuestionarios : ${mediaGeneral.toStringAsFixed(2)}",
  );
  print(
    "Promedio más alto : ${mayorPromedio.toStringAsFixed(2)} (Cuestionario $instrumentoMayor)",
  );
  print(
    "Promedio más bajo : ${menorPromedio.toStringAsFixed(2)} (Cuestionario $instrumentoMenor)",
  );
  print(
    "Porcentaje (prom < 3) respecto a (prom > 4) : ${porcPromMenor3vsMayor4.toStringAsFixed(2)}%",
  );
  print(
    "Porcentaje de promedios entre 4.5 y 5 : ${porc45a5.toStringAsFixed(2)}%",
  );
}
