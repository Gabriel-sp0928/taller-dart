// Ejercicio 51: Término 12 y suma de los primeros 12 términos de sucesión 6,11,16,21,...
// Es una progresión aritmética con diferencia 5.

void main() {
  int a1 = 6;
  int d = 5;
  int n = 12;

  int a12 = a1 + (n - 1) * d;
  int suma = (n * (a1 + a12) / 2).toInt();

  print('a12 = ' + a12.toString());
  print('Suma de los 12 primeros términos = ' + suma.toString());
}
