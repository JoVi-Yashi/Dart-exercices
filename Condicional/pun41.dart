/* 

41. El gobierno del estado de México desea reforestar un bosque que mide determinado número de
hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
70% Pino
20% Oyamel
10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
50% Pino
30% Oyamel
20% Cedro
El gobierno desea saber el número de pinos, oyameles y cedros que tendrá que sembrar en el bosque,
si se sabe que 
en 10 metros cuadrados caben 8 pinos, 
en 15 metros cuadrados caben 15 oyameles 
en 18 metros cuadrados caben 10 cedros. 
También se sabe que una hectárea equivale a 10 mil
metros cuadrados.

*/

import 'dart:io';


void bosque() {
  // * variables
  int superf = 0;

  // * arboles
  int pino = 0;
  int oyamel = 0;
  int cedro = 0;

  String formatonumero(int numero) {
  return numero.toString().replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (match) => ',',
  );
  
}

// * para decimales a
String formatoDou(double numero) {
  String partes = numero.toStringAsFixed(2); // "1234567.89", 
  List<String> split = partes.split('.');    // ["1234567", "89"]

  String parteEntera = split[0];
  String decimales = split[1];

  // Formatear solo la parte entera con tu función
  String enteraFormateada = parteEntera.replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (match) => ',',
  );

  return "$enteraFormateada.$decimales";
}



  print("--- Bosque ---");
  print("El estado desea roforestar un bosque");
  print(
    "Cual es la superficie del bosque en Hectarias?\n1. menor de 100 hectarias\n2. mayor de 100 hectarias\n",
  );
  int key = int.parse(stdin.readLineSync()!);

  if (key != 1 && key != 2) {
    bosque();
  }

  int superficie() {
    print("Ingrese la superficie del bosque en Hectarias: ");
    superf = int.parse(stdin.readLineSync()!);
    return superf;
  }

  void arboles(double pPino, double pOyamel, double pCedro) {
    int superfi = superf * 10000;

    double sufipino = superfi * pPino;
    double sufiOyamel = superfi * pOyamel;
    double sufiCedro = superfi * pCedro;

    pino = (sufipino ~/ 10) * 8;
    oyamel = (sufiOyamel ~/ 15) * 15;
    cedro = (sufiCedro ~/ 18) * 10;

    print("""
============================================================
                        RESULTADOS DEL BOSQUE
============================================================

Superficie:
------------------------------------------------------------
  Hectáreas              : $superf
  Metros cuadrados       : ${formatonumero(superfi)}

Distribución aplicada:
------------------------------------------------------------
  Porcentaje Pino        : ${(pPino * 100).toStringAsFixed(0)}%
  Porcentaje Oyamel      : ${(pOyamel * 100).toStringAsFixed(0)}%
  Porcentaje Cedro       : ${(pCedro * 100).toStringAsFixed(0)}%

Cálculo de superficie asignada:
------------------------------------------------------------
  Superficie Pino (m²)   : ${formatoDou(sufipino)}
  Superficie Oyamel (m²) : ${formatoDou(sufiOyamel)}
  Superficie Cedro (m²)  : ${formatoDou(sufiCedro)}

Cantidad de árboles:
------------------------------------------------------------
  Pinos                  : ${formatonumero(pino)}
  Oyameles               : ${formatonumero(oyamel)}
  Cedros                 : ${formatonumero(cedro)}

============================================================
          """);
  }

  switch (key) {
    case 1:
      /*
    N<1M
    PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
    70% Pino
    20% Oyamel
    10% Cedro
    */
      superficie();

      if (superf > 100) {
        superficie();
      }

      arboles(0.7, 0.2, 0.1);
      break;

    case 2:
      /*
    N>1M
    PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
    50% Pino
    30% Oyamel
    20% Cedro
    */
      superficie();

      if (superf < 100) {
        superficie();
      }
      arboles(0.5, 0.3, 0.2);

      break;

    default:
  }
}

void main(List<String> args) {
  bosque();
}
