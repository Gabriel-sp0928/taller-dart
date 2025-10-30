// Ejercicio 48: Tabla de conversión Fahrenheit a Celsius, Kelvin y Rankine
// Imprimimos encabezados y tres rangos de ejemplo.

void main() {
  print('Fahrenheit | Celsius | Kelvin | Rankine');
  for (int f = 28; f <= 54; f += 1) {
    double c = 5 * (f - 32) / 9;
    double r = f + 459.67;
    double k = c + 273.15;
    print('\$f F | \${c.toStringAsFixed(2)} C | \${k.toStringAsFixed(2)} K | \${r.toStringAsFixed(2)} R');
  }

  print('\nRango 450 a 950 de 50 en 50');
  print('Fahrenheit | Celsius | Kelvin | Rankine');
  for (int f = 450; f <= 950; f += 50) {
    double c = 5 * (f - 32) / 9;
    double r = f + 459.67;
    double k = c + 273.15;
    print('\$f F | \${c.toStringAsFixed(2)} C | \${k.toStringAsFixed(2)} K | \${r.toStringAsFixed(2)} R');
  }

  print('\nRango -50 a 250 de 10 en 10');
  print('Fahrenheit | Celsius | Kelvin | Rankine');
  for (int f = -50; f <= 250; f += 10) {
    double c = 5 * (f - 32) / 9;
    double r = f + 459.67;
    double k = c + 273.15;
    print('\$f F | \${c.toStringAsFixed(2)} C | \${k.toStringAsFixed(2)} K | \${r.toStringAsFixed(2)} R');
  }
}
