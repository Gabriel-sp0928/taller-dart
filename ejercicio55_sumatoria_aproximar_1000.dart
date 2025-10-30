// Ejercicio 55: Encontrar número de términos para que sumatoria ∑((k^2+1)/k) se aproxime a 1000 sin exceder
// Sumamos término a término hasta acercarnos a 1000 sin pasarlo.

void main() {
  double suma = 0.0;
  int k = 1;
  while (true) {
    double termino = (k * k + 1) / k;
    if (suma + termino > 1000.0) break;
    suma += termino;
    k++;
  }
  print('Términos = ' + (k-1).toString() + ', suma = ' + suma.toString());
}
