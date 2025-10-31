
import 'dart:math';

void main() {
  print("=== EJERCICIO 26 ===");
  int A = 5, B = 3, C = 2, D = 0;
  double resultado26 = (D == 0) ? pow((A - C), 2).toDouble() : (pow((A - B), 3).toDouble() / D);
  print("Resultado: $resultado26");

  print("\n=== EJERCICIO 27 ===");
  double valor1 = 10, valor2 = 5, valor3 = 25;
  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor2 * pow(valor1, 2);
  double areaRectangulo = valor1 * valor2;
  if (valor3 == areaTriangulo) print("Figura: Triángulo");
  else if (valor3 == areaCirculo) print("Figura: Círculo");
  else if (valor3 == areaRectangulo) print("Figura: Rectángulo");
  else print("Figura desconocida");

  print("\n=== EJERCICIO 28 ===");
  double monto = 800000;
  double inversion, banco = 0, credito, intereses;
  if (monto > 500000) {
    inversion = monto * 0.55;
    banco = monto * 0.30;
    credito = monto * 0.15;
  } else {
    inversion = monto * 0.70;
    credito = monto * 0.30;
  }
  intereses = credito * 0.20;
  print("Inversión: $inversion, Banco: $banco, Crédito: $credito, Intereses: $intereses");

  print("\n=== EJERCICIO 29 ===");
  List<double> ventas = [4000, 3500, 3000];
  double totalVentas = ventas.reduce((a, b) => a + b);
  double salario = 1000;
  for (int i = 0; i < 3; i++) {
    if (ventas[i] > totalVentas * 0.33) {
      print("Depto ${i + 1}: ${salario * 1.2}");
    } else {
      print("Depto ${i + 1}: $salario");
    }
  }

  print("\n=== EJERCICIO 30 ===");
  int a = 2, b = 3, c = 6, d = 2;
  int N = a * 1000 + b * 100 + c * 10 + d;
  int centenas = ((N % 1000) / 100).floor();
  int redondeado = (centenas >= 5) ? ((N ~/ 1000 + 1) * 1000) : ((N ~/ 1000) * 1000);
  print("N: $N, Redondeado: $redondeado");

  print("\n=== EJERCICIO 31 ===");
  double km = 1200;
  double pago = 0;
  if (km <= 300) pago = 5000;
  else if (km <= 1000) pago = 5000 + (km - 300) * 200;
  else pago = 5000 + (700 * 200) + (km - 1000) * 150;
  print("Pago: $pago");

  print("\n=== EJERCICIO 32 ===");
  int P = 10, Q = 5;
  if (pow(P, 3) + pow(Q, 4) - 2 * pow(P, 2) > 680) print("Cumple: P=$P Q=$Q");
  else print("No cumple");

  print("\n=== EJERCICIO 33 ===");
  String cliente = "Juan";
  double compra = 12000, descuento = 0;
  if (compra < 500) descuento = 0;
  else if (compra <= 1000) descuento = compra * 0.05;
  else if (compra <= 7000) descuento = compra * 0.11;
  else if (compra <= 15000) descuento = compra * 0.18;
  else descuento = compra * 0.25;
  print("Cliente: $cliente, Total: $compra, Descuento: $descuento, Pagar: ${compra - descuento}");

  print("\n=== EJERCICIO 34 ===");
  int categoria = 2;
  double sueldo = 1200, aumento = 0;
  if (categoria == 1) aumento = sueldo * 0.15;
  else if (categoria == 2) aumento = sueldo * 0.10;
  else if (categoria == 3) aumento = sueldo * 0.08;
  else aumento = sueldo * 0.07;
  print("Categoría: $categoria, Nuevo sueldo: ${sueldo + aumento}");

  print("\n=== EJERCICIO 35 ===");
  double temp = 70;
  if (temp < 32) print("Deporte: Esquí");
  else if (temp <= 70) print("Deporte: Golf");
  else if (temp <= 85) print("Deporte: Natación");
  else print("Deporte: Tenis");

  print("\n=== EJERCICIO 36 ===");
  int bolivares = 138760;
  List<int> billetes = [50000, 20000, 10000, 5000, 2000, 1000, 500, 100, 50, 20, 10];
  for (var b in billetes) {
    int cantidad = bolivares ~/ b;
    bolivares %= b;
    if (cantidad > 0) print("Billetes de $b: $cantidad");
  }

  print("\n=== EJERCICIO 37 ===");
  int A1 = 5, B1 = 5, C1 = 5;
  if (A1 + B1 > C1 && A1 + C1 > B1 && B1 + C1 > A1) {
    if (A1 == B1 && B1 == C1) print("Triángulo equilátero");
    else if (A1 == B1 || A1 == C1 || B1 == C1) print("Triángulo isósceles");
    else print("Triángulo escaleno");
    double S = (A1 + B1 + C1) / 2;
    double area = sqrt(S * (S - A1) * (S - B1) * (S - C1));
    print("Área: ${area.toStringAsFixed(2)}");
  } else print("No es un triángulo");

  print("\n=== EJERCICIO 38 ===");
  int dia = 15, mes = 8, anio = 2000;
  int edad = 2025 - anio;
  String signo = "";
  if ((mes == 3 && dia >= 21) || (mes == 4 && dia <= 19)) signo = "Aries";
  else if ((mes == 4 && dia >= 20) || (mes == 5 && dia <= 20)) signo = "Tauro";
  else if ((mes == 5 && dia >= 21) || (mes == 6 && dia <= 20)) signo = "Géminis";
  else if ((mes == 6 && dia >= 21) || (mes == 7 && dia <= 22)) signo = "Cáncer";
  else if ((mes == 7 && dia >= 23) || (mes == 8 && dia <= 22)) signo = "Leo";
  else if ((mes == 8 && dia >= 23) || (mes == 9 && dia <= 22)) signo = "Virgo";
  else if ((mes == 9 && dia >= 23) || (mes == 10 && dia <= 22)) signo = "Libra";
  else if ((mes == 10 && dia >= 23) || (mes == 11 && dia <= 21)) signo = "Escorpio";
  else if ((mes == 11 && dia >= 22) || (mes == 12 && dia <= 21)) signo = "Sagitario";
  else if ((mes == 12 && dia >= 22) || (mes == 1 && dia <= 19)) signo = "Capricornio";
  else if ((mes == 1 && dia >= 20) || (mes == 2 && dia <= 18)) signo = "Acuario";
  else signo = "Piscis";
  print("Signo: $signo, Edad: $edad años");

  print("\n=== EJERCICIO 39 ===");
  double autoPrecio = 50000, terrenoPrecio = 50000;
  double devaluacionAuto = autoPrecio * 0.15;
  double aumentoTerreno = terrenoPrecio * 0.40;
  if (devaluacionAuto <= aumentoTerreno / 2)
    print("Conviene comprar el automóvil");
  else
    print("Conviene comprar el terreno");
}
