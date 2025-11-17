/* 

67. Una persona adquiere una deuda de Bs. 12775, la cual cancela mediante pagos de montos crecientes
de los cuales el primero es por Bs. 100 y además la diferencia de dos pagos consecutivos es Bs. 125.
Determinar el número de pagos que realiza la persona así como el monto del último pago. Muestre
en pantalla una tabla con el monto de cada pago y el monto pendiente por cancelar. Respuesta:
número pagos = 14, monto del último = 1725.

*/

void main() {
  double deuda = 12775;
  double primerPago = 100;
  double diferencia = 125;

  double deudaPendiente = deuda;
  int numeroPago = 0;
  double pagoActual = primerPago;

  print("Pago\tMonto\tDeuda Pendiente");
  print("----------------------------------");

  while (deudaPendiente > 0) {
    if (pagoActual > deudaPendiente) {
      pagoActual = deudaPendiente; // último pago ajustado
    }

    deudaPendiente -= pagoActual;
    numeroPago++;

    print(
      "$numeroPago\t${pagoActual.toStringAsFixed(2)}\t${deudaPendiente.toStringAsFixed(2)}",
    );

    pagoActual += diferencia;
  }

  print("\nNúmero de pagos realizados: $numeroPago");
  print(
    "Monto del último pago: ${(primerPago + (numeroPago - 1) * diferencia).toStringAsFixed(2)}",
  );
}
