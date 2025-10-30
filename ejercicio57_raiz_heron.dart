// Ejercicio 57: Raíz cuadrada usando método de Herón
// Iteramos hasta que la diferencia entre X y RN sea menor a 0.000001.

void main() {
  double N = 25.0;
  if (N < 0) {
    print('Número debe ser positivo');
    return;
  }

  double x = 0.1;
  double dif = 1.0;

  while (dif >= 0.000001) {
    double rn = (x + N / x) / 2.0;
    dif = (x - rn).abs();
    x = rn;
  }

  print('Raíz aproximada de ' + N.toString() + ' = ' + x.toString());
}
