// Ejercicio 45: Resolver ecuación de segundo grado AX^2 + BX + C = 0
// Calculamos el discriminante y sacamos las raíces según su valor.

import 'dart:math';

void main() {
  double a = 1.0;
  double b = -7.0;
  double c = 10.0;

  double d = b * b - 4 * a * c;

  if (d < 0) {
    print('No hay raíces reales');
  } else if (d == 0) {
    double x = -b / (2 * a);
    print('Una raíz doble: x = ' + x.toStringAsFixed(4));
  } else {
    double x1 = (-b + sqrt(d)) / (2 * a);
    double x2 = (-b - sqrt(d)) / (2 * a);
    print('Raíces reales: x1 = ' + x1.toStringAsFixed(4) + ', x2 = ' + x2.toStringAsFixed(4));
  }
}
