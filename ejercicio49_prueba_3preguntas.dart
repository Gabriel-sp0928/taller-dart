// Ejercicio 49: Procesar resultados de 100 personas en una prueba de 3 preguntas
// Generamos datos de ejemplo aleatorios para simular respuestas.

import 'dart:math';

void main() {
  Random rand = Random(42);
  int total = 100;

  int tresBien = 0;
  int solo12 = 0;
  int solo13 = 0;
  int solo23 = 0;
  int alMenos1 = 0;
  int alMenos2 = 0;
  int alMenos3 = 0;
  int ninguno = 0;

  for (int i = 0; i < total; i++) {
    bool r1 = rand.nextBool();
    bool r2 = rand.nextBool();
    bool r3 = rand.nextBool();

    if (r1 && r2 && r3) tresBien++;
    if (r1 && r2 && !r3) solo12++;
    if (r1 && !r2 && r3) solo13++;
    if (!r1 && r2 && r3) solo23++;
    if (r1) alMenos1++;
    if (r2) alMenos2++;
    if (r3) alMenos3++;
    if (!r1 && !r2 && !r3) ninguno++;
  }

  print('Personas que acertaron las 3 preguntas: ' + tresBien.toString());
  print('Solo 1 y 2 correctas: ' + solo12.toString());
  print('Solo 1 y 3 correctas: ' + solo13.toString());
  print('Solo 2 y 3 correctas: ' + solo23.toString());
  print('Acertaron la primera por lo menos: ' + alMenos1.toString());
  print('Acertaron la segunda por lo menos: ' + alMenos2.toString());
  print('Acertaron la tercera por lo menos: ' + alMenos3.toString());
  print('No acertaron ninguna: ' + ninguno.toString());
}
