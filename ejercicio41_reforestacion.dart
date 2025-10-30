// Ejercicio 41: Reforestación según hectáreas
// Calcula cuántos pinos, oyameles y cedros sembrar según el área en hectáreas.
// Datos: en 10 m2 caben 8 pinos; en 15 m2 caben 15 oyameles; en 18 m2 caben 10 cedros.
// 1 hectárea = 10000 m2.

void main() {
  double hectareas = 120.0;
  double metrosCuadrados = hectareas * 10000;

  double porcentajePino, porcentajeOyamel, porcentajeCedro;

  if (metrosCuadrados > 1000000) {
    porcentajePino = 0.70;
    porcentajeOyamel = 0.20;
    porcentajeCedro = 0.10;
  } else {
    porcentajePino = 0.50;
    porcentajeOyamel = 0.30;
    porcentajeCedro = 0.20;
  }

  double areaPino = metrosCuadrados * porcentajePino;
  double areaOyamel = metrosCuadrados * porcentajeOyamel;
  double areaCedro = metrosCuadrados * porcentajeCedro;

  double m2PorPino = 10.0 / 8.0;
  double m2PorOyamel = 15.0 / 15.0;
  double m2PorCedro = 18.0 / 10.0;

  int cuantosPinos = (areaPino / m2PorPino).floor();
  int cuantosOyameles = (areaOyamel / m2PorOyamel).floor();
  int cuantosCedros = (areaCedro / m2PorCedro).floor();

  print('Metros cuadrados totales: ' + metrosCuadrados.toStringAsFixed(0));
  print('Pinos a sembrar: ' + cuantosPinos.toString());
  print('Oyameles a sembrar: ' + cuantosOyameles.toString());
  print('Cedros a sembrar: ' + cuantosCedros.toString());
}
