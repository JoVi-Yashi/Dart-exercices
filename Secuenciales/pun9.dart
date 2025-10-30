import 'dart:io';

void SalarioNeto()
{
  //Calcular el salario neto de un trabajador en función del número de horas trabajadas, el precio de la
  //hora y considerando un descuento fijo al sueldo base por concepto de impuestos del 20%.
  print('--- Calculadora de Salario Neto ---');
  print('Ingrese el número de horas trabajadas:');
  double horasTrabajadas = double.parse(stdin.readLineSync()!);

  print('Ingrese el precio de la hora:');
  double precioHora = double.parse(stdin.readLineSync()!);

  double sueldoBase = horasTrabajadas * precioHora;
  double descuentoImpuestos = sueldoBase * 0.20;
  double salarioNeto = sueldoBase - descuentoImpuestos;

  print(
    'El salario neto del trabajador es: ${salarioNeto.toStringAsFixed(2)}',
  );

}

void main(List<String> args) {
  SalarioNeto();
}