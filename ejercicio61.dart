void main() {
  print("=== MULTIPLICACIÓN RUSA ===");

  int multiplicador = 27; 
  int multiplicando = 34; 

  print("Primer número (multiplicador): $multiplicador");
  print("Segundo número (multiplicando): $multiplicando");

  int suma = 0;

  print("\nProceso:");
  print("Multiplicador\tMultiplicando\tSuma parcial");

  int originalMultiplicador = multiplicador;
  int originalMultiplicando = multiplicando;
  while (multiplicador >= 1) {
    print("$multiplicador\t\t$multiplicando\t\t${(multiplicador % 2 != 0) ? '+$multiplicando' : ''}");

    if (multiplicador % 2 != 0) {
      suma += multiplicando;
    }

    multiplicador ~/= 2;
    multiplicando *= 2;
  }
  print("\nResultado:");
  print("${originalMultiplicador} x ${originalMultiplicando} = $suma");
}
