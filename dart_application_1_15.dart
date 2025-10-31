import 'dart:math' as math;

void main() {
  print("1) Promedio de edad: ${promedioEdad(20, 30, 25)}");

  print("2) Ganancia en 1 mes por inversión de 1000: ${gananciaInversion(1000)}");

  print("3) Sueldo total con ventas 500, 700 y 300: ${sueldoTotal(1000, 500, 700, 300)}");

  print("4) Precio final con descuento del 15% a 2000: ${precioFinal(2000)}");

  print("5) Calificación final: ${calificacionFinal(80, 90, 85, 88, 95)}");

  print("6) Porcentaje de géneros: ${porcentajeGenero(12, 8)}");

  print("7) 10 metros en pies y pulgadas: ${convertirMetros(10)}");

  print("8) Área triángulo (lados 3, 4, 5): ${areaTriangulo(3, 4, 5)}");

  print("9) Salario neto (40h, 10 por hora): ${salarioNeto(40, 10)}");

  conversionDivisas(100, 200, 10000);

  print("11) Sueldo trabajador: ${sueldoTrabajador(40, 10, 5, 2)}");

  print("12) Promedios materias: ${promediosMaterias(90, 80, 85, 90, 85, 90, 95, 88, 70, 80, 85)}");

  print("13) Dinero en banco: ${dineroBanco(2, 3, 5, 1, 0, 10, 4, 6)}");

  print("14) Sistema de ecuaciones: ${resolverSistema(2, 3, 5, 4, 2, 6)}");

  print("15) Pago luz (lectura 1500 a 1800, costo 0.5): ${pagoLuz(1500, 1800, 0.5)}");
}

// --- Funciones ---

double promedioEdad(double e1, double e2, double e3) => (e1 + e2 + e3) / 3;

double gananciaInversion(double capital) => capital * 0.02;

double sueldoTotal(double sueldoBase, double v1, double v2, double v3) {
  double comisiones = (v1 + v2 + v3) * 0.10;
  return sueldoBase + comisiones;
}

double precioFinal(double totalCompra) => totalCompra * 0.85;

double calificacionFinal(double p1, double p2, double p3, double examenFinal, double trabajoFinal) {
  double promedioParciales = (p1 + p2 + p3) / 3;
  return promedioParciales * 0.55 + examenFinal * 0.30 + trabajoFinal * 0.15;
}

Map<String, double> porcentajeGenero(int hombres, int mujeres) {
  int total = hombres + mujeres;
  return {
    'Hombres': (hombres / total) * 100,
    'Mujeres': (mujeres / total) * 100
  };
}

Map<String, double> convertirMetros(double metros) {
  double pulgadas = metros * 39.27;
  double pies = pulgadas / 12;
  return {'Pies': pies, 'Pulgadas': pulgadas};
}

double areaTriangulo(double a, double b, double c) {
  double p = (a + b + c) / 2;
  return math.sqrt(p * (p - a) * (p - b) * (p - c));
}

double salarioNeto(double horas, double precioHora) {
  double salarioBruto = horas * precioHora;
  return salarioBruto * 0.80;
}

void conversionDivisas(double chelines, double dracmas, double pesetas) {
  double pesetasChe = chelines * 9.56871;
  double francos = (dracmas * 0.88607) / 20.110;
  double dolares = pesetas / 122.499;
  double liras = pesetas / 9.289;

  print("10) Pesetas desde chelines: $pesetasChe");
  print("10) Francos desde dracmas: $francos");
  print("10) Dólares desde pesetas: $dolares");
  print("10) Liras desde pesetas: $liras");
}

Map<String, double> sueldoTrabajador(double horasNormales, double pagoHora, double horasExtras, int hijos) {
  double sueldoBase = horasNormales * pagoHora;
  double pagoExtras = horasExtras * pagoHora * 1.25;
  double asignaciones = 25000 + (17300 * hijos) + 18000;
  double deducciones = sueldoBase * 0.05 + sueldoBase * 0.02 + sueldoBase * 0.07;
  double sueldoNeto = sueldoBase + pagoExtras + asignaciones - deducciones;

  return {'Asignaciones': asignaciones, 'Deducciones': deducciones, 'Sueldo Neto': sueldoNeto};
}

Map<String, double> promediosMaterias(double exMat, double t1Mat, double t2Mat, double t3Mat,
    double exFis, double t1Fis, double t2Fis,
    double exQuim, double t1Quim, double t2Quim, double t3Quim) {
  double mat = exMat * 0.90 + ((t1Mat + t2Mat + t3Mat) / 3) * 0.10;
  double fis = exFis * 0.80 + ((t1Fis + t2Fis) / 2) * 0.20;
  double quim = exQuim * 0.85 + ((t1Quim + t2Quim + t3Quim) / 3) * 0.15;
  double general = (mat + fis + quim) / 3;

  return {'Matemática': mat, 'Física': fis, 'Química': quim, 'Promedio General': general};
}

double dineroBanco(int n1, int n2, int n3, int n4, int n5, int n6, int n7, int n8) {
  return n1 * 50000 + n2 * 20000 + n3 * 10000 + n4 * 5000 + n5 * 2000 + n6 * 1000 + n7 * 500 + n8 * 100;
}

Map<String, double> resolverSistema(double a, double b, double c, double d, double e, double f) {
  double denominador = a * e - b * d;
  double x = (c * e - b * f) / denominador;
  double y = (a * f - c * d) / denominador;
  return {'X': x, 'Y': y};
}

double pagoLuz(double lecturaAnterior, double lecturaActual, double costoKw) {
  return (lecturaActual - lecturaAnterior) * costoKw;
}
