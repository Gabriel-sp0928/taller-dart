// Ejercicio 46: Imprimir N, N-1, ..., K con K < N
// Mostramos los números de forma decreciente hasta K.

void main() {
  int N = 10;
  int K = 3;

  for (int i = N; i >= K; i--) {
    print(i);
  }
}
