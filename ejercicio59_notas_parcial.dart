// Ejercicio 59: Procesar notas de primer parcial (Matemática, Programación, Inglés)
// Para ejemplo usamos datos simulados; calculamos varios indicadores pedidos.

import 'dart:math';

void main() {
  Random rand = Random(2);
  int totalAlumnos = 100;
  List<double> mat = [];
  List<double> prog = [];
  List<double> ing = [];

  for (int i = 0; i < totalAlumnos; i++) {
    mat.add(rand.nextDouble() * 5);
    prog.add(rand.nextDouble() * 5);
    if (rand.nextDouble() < 0.1) {
      ing.add(-1.0); // no presentó
    } else {
      ing.add(rand.nextDouble() * 5);
    }
  }

  double menorProg = prog.reduce((a, b) => a < b ? a : b);
  int noPresentaronIng = ing.where((n) => n < 0).length;
  int presentaronIng = totalAlumnos - noPresentaronIng;

  int aprobaronTodas = 0;
  double sumaProg = 0;
  int reprobaronMat = 0;

  for (int i = 0; i < totalAlumnos; i++) {
    double notaMat = mat[i];
    double notaProg = prog[i];
    double notaIng = ing[i];

    if (notaMat >= 3.5 && notaProg >= 3.5 && notaIng >= 0 && notaIng >= 3.5) {
      aprobaronTodas++;
    }
    sumaProg += notaProg;
    if (notaMat < 3.5) reprobaronMat++;
  }

  double promedioProg = sumaProg / totalAlumnos;
  double porcentajeNoPresentaronIng = (presentaronIng == 0) ? 0 : (noPresentaronIng / presentaronIng) * 100;
  double porcentajeReprobaronMat = (reprobaronMat / totalAlumnos) * 100;

  print('Nota menor en Programación: ' + menorProg.toStringAsFixed(2));
  print('Porcentaje que no presentaron inglés respecto a los que sí presentaron: ' + porcentajeNoPresentaronIng.toStringAsFixed(2) + '%');
  print('Número que aprobaron todas las materias: ' + aprobaronTodas.toString());
  print('Promedio general en Programación: ' + promedioProg.toStringAsFixed(2));
  print('Porcentaje que reprobaron Matemática: ' + porcentajeReprobaronMat.toStringAsFixed(2) + '%');
}
