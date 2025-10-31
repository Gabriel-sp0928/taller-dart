void main() {
  double M = 452; 
  double N = 197;
  double B1 = 132; 
  double B2 = 180;
  double B3 = 7.5; 
  double B4 = 14.5;

  int bultosHarina = (M / 24).floor();
  int cajasAceite = (N / 15).floor();

  double harinaRestante = M % 24;
  double aceiteRestante = N % 15;

  double ingresoHarina = (bultosHarina * B1) + (harinaRestante * B3);
  double ingresoAceite = (cajasAceite * B2) + (aceiteRestante * B4);

  double ingresoTotal = ingresoHarina + ingresoAceite;

  print("El ingreso total por tonelada es de Bs. ${ingresoTotal.toStringAsFixed(2)}.");
}