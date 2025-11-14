/*

Desarrolle un algoritmo que reciba como dato de entrada la fecha de nacimiento de una persona
y a continuación escriba el nombre del signo del zodiaco correspondiente; así como su edad.
Considere la siguiente tabla de signos

*/

import 'dart:io';

void signoZodiacal()
{
  print("ingrese su año de nacimiento");
  int anyo = int.parse(stdin.readLineSync()!);

  print("ingrese su mes de nacimiento");
  int mes = int.parse(stdin.readLineSync()!);

  print("ingrese su dia de nacimiento");
  int dia = int.parse(stdin.readLineSync()!);

if (dia < 1 || dia > 31 || mes < 1 || mes > 12 || anyo < 1900 || anyo > 2025) {
    print('\nError: Fecha inválida.');
  } else {
    // Obtener fecha actual
    DateTime hoy = DateTime.now();
    int diaActual = hoy.day;
    int mesActual = hoy.month;
    int anioActual = hoy.year;
    
    // Calcular edad
    int edad = anioActual - anyo;
    
    if (mesActual < mes) {
      edad = edad - 1;
    } else if (mesActual == mes) {
      if (diaActual < dia) {
        edad = edad - 1;
      }
    }
    
    // Determinar signo del zodiaco usando condicionales
    String signo = '';
    
    if (mes == 1) {
      if (dia >= 20) {
        signo = 'ACUARIO';
      } else {
        signo = 'CAPRICORNIO';
      }
    } else if (mes == 2) {
      if (dia >= 19) {
        signo = 'PISCIS';
      } else {
        signo = 'ACUARIO';
      }
    } else if (mes == 3) {
      if (dia >= 21) {
        signo = 'ARIES';
      } else {
        signo = 'PISCIS';
      }
    } else if (mes == 4) {
      if (dia >= 20) {
        signo = 'TAURO';
      } else {
        signo = 'ARIES';
      }
    } else if (mes == 5) {
      if (dia >= 21) {
        signo = 'GÉMINIS';
      } else {
        signo = 'TAURO';
      }
    } else if (mes == 6) {
      if (dia >= 21) {
        signo = 'CÁNCER';
      } else {
        signo = 'GÉMINIS';
      }
    } else if (mes == 7) {
      if (dia >= 23) {
        signo = 'LEO';
      } else {
        signo = 'CÁNCER';
      }
    } else if (mes == 8) {
      if (dia >= 23) {
        signo = 'VIRGO';
      } else {
        signo = 'LEO';
      }
    } else if (mes == 9) {
      if (dia >= 23) {
        signo = 'LIBRA';
      } else {
        signo = 'VIRGO';
      }
    } else if (mes == 10) {
      if (dia >= 23) {
        signo = 'ESCORPIO';
      } else {
        signo = 'LIBRA';
      }
    } else if (mes == 11) {
      if (dia >= 22) {
        signo = 'SAGITARIO';
      } else {
        signo = 'ESCORPIO';
      }
    } else if (mes == 12) {
      if (dia >= 22) {
        signo = 'CAPRICORNIO';
      } else {
        signo = 'SAGITARIO';
      }
    }
    
    // Mostrar resultados
    print('\n=== RESULTADOS ===');
    print('Fecha de nacimiento: $dia/$mes/$anyo');
    print('Signo del zodiaco: $signo');
    print('Edad: $edad años');
  }
}