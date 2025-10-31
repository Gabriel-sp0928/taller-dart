void main() {
  double precioContado = 1200;
  double cuota = 120;
  int meses = 12;

  double totalCuotas = cuota * meses;
  double recargo = totalCuotas - precioContado;
  double porcentajeRecargo = (recargo / precioContado) * 100;

  print("Porcentaje de recargo: ${porcentajeRecargo.toStringAsFixed(2)}%.");
}