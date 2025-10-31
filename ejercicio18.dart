void main() {
  double galones = 10;
  double litrosPorGalon = 3.785;
  double precioPorLitro = 100;

  double totalLitros = galones * litrosPorGalon;
  double totalCobrar = totalLitros * precioPorLitro;

  print("Total a cobrar: Bs. ${totalCobrar.toStringAsFixed(2)}.");
}