// Ejercicio 47: Imprimir impares positivos menores que 100 que no sean divisibles por 7
// Recorremos y mostramos los impares que no son divisibles por 7.

void main() {
  for (int i = 1; i < 100; i += 2) {
    if (i % 7 == 0) continue;
    print(i);
  }
}
