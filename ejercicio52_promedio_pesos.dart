// Ejercicio 52: Promedio de peso por categorías (muestreo de 100 personas)
// Clasificamos por edad en: niños (0-12), jóvenes (13-29), adultos (30-59), viejos (60+).
import 'dart:math';

void main() {
  List<int> edades = [];
  List<double> pesos = [];
  Random rand = Random(3);

  for (int i = 0; i < 100; i++) {
    edades.add(rand.nextInt(80)); // 0..79
    pesos.add(20 + rand.nextDouble() * 80); // 20..100 kg
  }

  double sumaNinos = 0; int cntNinos = 0;
  double sumaJovenes = 0; int cntJovenes = 0;
  double sumaAdultos = 0; int cntAdultos = 0;
  double sumaViejos = 0; int cntViejos = 0;

  for (int i = 0; i < 100; i++) {
    int edad = edades[i];
    double peso = pesos[i];
    if (edad <= 12) { sumaNinos += peso; cntNinos++; }
    else if (edad <= 29) { sumaJovenes += peso; cntJovenes++; }
    else if (edad <= 59) { sumaAdultos += peso; cntAdultos++; }
    else { sumaViejos += peso; cntViejos++; }
  }

  print('Promedio niños: ' + (cntNinos>0? (sumaNinos/cntNinos).toStringAsFixed(2) : '0'));
  print('Promedio jóvenes: ' + (cntJovenes>0? (sumaJovenes/cntJovenes).toStringAsFixed(2) : '0'));
  print('Promedio adultos: ' + (cntAdultos>0? (sumaAdultos/cntAdultos).toStringAsFixed(2) : '0'));
  print('Promedio viejos: ' + (cntViejos>0? (sumaViejos/cntViejos).toStringAsFixed(2) : '0'));
}
