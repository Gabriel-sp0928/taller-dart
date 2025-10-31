void main() {
  double inversion = 50000;
  double interes = 8000;

  if (interes > 7000) {
    double total = inversion + interes;
    print("Se reinvierten los intereses. Total en cuenta: \$${total.toStringAsFixed(2)}");
  } else {
    print("No se reinvierten los intereses.");
  }
}