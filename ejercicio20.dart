void main() {
  double capital = 10000;
  double interes = 2000;
  double tiempo = 4;

  double razon = (interes * 100) / (capital * tiempo);

  print("El porcentaje anual cobrado fue de ${razon.toStringAsFixed(2)}%.");
}