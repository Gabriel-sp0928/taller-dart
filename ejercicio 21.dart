void main() {
  int naranjas = 48000;
  double precioDocena = 6;
  double ingreso = 42000;

  double costoTotal = (naranjas / 12) * precioDocena;
  double ganancia = ingreso - costoTotal;
  double porcentajeGanancia = (ganancia / costoTotal) * 100;

  print("Porcentaje de ganancia: ${porcentajeGanancia.toStringAsFixed(2)}%.");
}