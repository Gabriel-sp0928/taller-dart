// Ejercicio 50: Suma de todos los números pares entre 97 y 1003
// Sumamos los pares y mostramos el total. Respuesta esperada: 249150

void main() {
  int inicio = 97;
  int fin = 1003;
  int suma = 0;

  for (int i = inicio; i <= fin; i++) {
    if (i % 2 == 0) suma += i;
  }

  print('Suma de pares entre ' + inicio.toString() + ' y ' + fin.toString() + ': ' + suma.toString());
}
