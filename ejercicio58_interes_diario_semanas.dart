// Ejercicio 58: Interés diario compuesto por semanas
// Recibimos capital, tasa anual (por ejemplo 6% => 0.06) y duración en semanas.
// Calculamos interés diario usando tasa/365 y acumulamos día a día.

void main() {
  double capital = 1000.0;
  double tasaAnual = 0.06;
  int semanas = 4;

  int dias = semanas * 7;
  double capitalActual = capital;

  for (int i = 0; i < dias; i++) {
    double interesDia = (tasaAnual * capitalActual) / 365.0;
    capitalActual += interesDia;
  }

  print('Capital inicial: ' + capital.toString());
  print('Capital final después de ' + semanas.toString() + ' semanas: ' + capitalActual.toStringAsFixed(2));
}
