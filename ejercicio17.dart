void main() {
  double precioFinal = 80;
  double pvp = 100;

  double descuento = ((pvp - precioFinal) / pvp) * 100;

  print("El descuento aplicado es de ${descuento.toStringAsFixed(2)}%.");
}