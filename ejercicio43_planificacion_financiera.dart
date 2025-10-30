// Ejercicio 43: Planificación financiera del dueño de empresa
// Según el saldo actual se decide si pedir préstamo para dejar saldo en 10000 o 20000 o no pedir.
// Luego se reparte el presupuesto: 5000 equipo, 2000 mobiliario, resto mitad insumos / mitad incentivos.

void main() {
  double saldoActual = -5000.0;
  double nuevoSaldo = saldoActual;
  double prestamo = 0.0;

  if (saldoActual < 0) {
    prestamo = 10000.0 - saldoActual;
    nuevoSaldo = saldoActual + prestamo;
  } else if (saldoActual > 0 && saldoActual <= 20000.0) {
    prestamo = 20000.0 - saldoActual;
    nuevoSaldo = saldoActual + prestamo;
  } else {
    prestamo = 0.0;
    nuevoSaldo = saldoActual;
  }

  double equipo = 5000.0;
  double mobiliario = 2000.0;
  double restante = nuevoSaldo - equipo - mobiliario;

  double insumos = 0.0;
  double incentivos = 0.0;
  if (restante > 0) {
    insumos = restante / 2.0;
    incentivos = restante / 2.0;
  }

  print('Saldo actual: ' + saldoActual.toStringAsFixed(2));
  print('Préstamo solicitado: ' + prestamo.toStringAsFixed(2));
  print('Nuevo saldo disponible: ' + nuevoSaldo.toStringAsFixed(2));
  print('Equipo de cómputo: ' + equipo.toStringAsFixed(2));
  print('Mobiliario: ' + mobiliario.toStringAsFixed(2));
  print('Compra de insumos: ' + insumos.toStringAsFixed(2));
  print('Incentivos al personal: ' + incentivos.toStringAsFixed(2));
}
