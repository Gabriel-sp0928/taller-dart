// Ejercicio 54: Procesar 64 cuestionarios de 23 preguntas (valores 1-5)
// Calculamos promedios y porcentajes pedidos.

import 'dart:math';

void main() {
  int instrumentos = 64;
  int preguntas = 23;
  Random rand = Random(1);

  List<double> promedios = [];

  for (int i = 0; i < instrumentos; i++) {
    int totalPuntos = 0;
    for (int j = 0; j < preguntas; j++) {
      totalPuntos += 1 + rand.nextInt(5);
    }
    double promedio = totalPuntos / preguntas;
    promedios.add(promedio);
  }

  double suma = promedios.reduce((a, b) => a + b);
  double promedioGeneral = suma / instrumentos;

  double mayor = promedios.reduce(max);
  double menor = promedios.reduce(min);
  int idxMayor = promedios.indexOf(mayor) + 1;
  int idxMenor = promedios.indexOf(menor) + 1;

  int contadorInferior3 = promedios.where((p) => p < 3.0).length;
  int contadorSuperior4 = promedios.where((p) => p > 4.0).length;
  double porcentajeInferior3_vsSuperior4 = (contadorSuperior4 == 0) ? 0 : (contadorInferior3 / contadorSuperior4) * 100;

  int contador45a5 = promedios.where((p) => p >= 4.5 && p <= 5.0).length;
  double porcentaje45a5 = (contador45a5 / instrumentos) * 100;

  print('Promedio general: ' + promedioGeneral.toStringAsFixed(2));
  print('Promedio más alto: ' + mayor.toStringAsFixed(2) + ' instrumento #' + idxMayor.toString());
  print('Promedio más bajo: ' + menor.toStringAsFixed(2) + ' instrumento #' + idxMenor.toString());
  print('Porcentaje (<3) respecto a (>4): ' + porcentajeInferior3_vsSuperior4.toStringAsFixed(2) + '%');
  print('Porcentaje entre 4.5 y 5: ' + porcentaje45a5.toStringAsFixed(2) + '%');
}
