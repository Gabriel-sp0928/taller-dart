// Ejercicio 56: División por restas sucesivas
// Restamos el divisor del dividendo hasta que sea menor que el divisor. El número de restas es el cociente.

void main() {
  int dividendo = 8;
  int divisor = 2;

  int contador = 0;
  int resto = dividendo;

  while (resto >= divisor) {
    resto -= divisor;
    contador++;
  }

  print('Cociente = ' + contador.toString());
  print('Resto = ' + resto.toString());
}
