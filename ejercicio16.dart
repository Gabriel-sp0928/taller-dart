void main() {
  double largo = 4.0;
  double ancho = 1.5;
  double consumoPorPieza = 0.5;

  double superficieLamina = largo * ancho;
  int piezas = (superficieLamina / consumoPorPieza).floor();
  double desperdicio = superficieLamina % consumoPorPieza;

  print("Con una lámina se pueden fabricar $piezas piezas.");
  print("El desperdicio es de $desperdicio metros cuadrados.");
}