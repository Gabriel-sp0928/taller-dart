// Ejercicio 53: Cálculo de nómina semanal para M empleados
// Tipo empleado 1->5000, 2->10000, 3->15000 por hora.
// Seguro social 3% si sueldo básico > 100000.
// Calculamos totales por nacionalidad y otros datos pedidos.

class Empleado {
  String nombre;
  String nacionalidad; // 'V' o 'E'
  int edad;
  int tipo; // 1,2,3
  int horas;

  Empleado(this.nombre, this.nacionalidad, this.edad, this.tipo, this.horas);
}

void main() {
  List<Empleado> empleados = [
    Empleado('Ana', 'V', 25, 1, 40),
    Empleado('Luis', 'E', 31, 2, 35),
    Empleado('María', 'V', 22, 3, 45),
    Empleado('Pedro', 'E', 33, 1, 20),
  ];

  int tarifa1 = 5000;
  int tarifa2 = 10000;
  int tarifa3 = 15000;

  double totalSueldos = 0;
  int totalV1 = 0, totalV2 = 0, totalV3 = 0;
  int totalExImpar = 0;
  int sumaEdades = 0;

  for (var e in empleados) {
    int sueldoHora = (e.tipo == 1) ? tarifa1 : (e.tipo == 2) ? tarifa2 : tarifa3;
    double sueldoBasico = sueldoHora * e.horas.toDouble();
    double seguro = (sueldoBasico > 100000) ? sueldoBasico * 0.03 : 0.0;
    totalSueldos += sueldoBasico - seguro;
    sumaEdades += e.edad;

    if (e.nacionalidad == 'V') {
      if (e.tipo == 1) totalV1 += 1;
      if (e.tipo == 2) totalV2 += 1;
      if (e.tipo == 3) totalV3 += 1;
    }

    if (e.nacionalidad == 'E' && (e.edad % 2 == 1)) {
      totalExImpar += 1;
    }
  }

  double promedioEdad = sumaEdades / empleados.length;

  print('Total a pagar en sueldos (aprox): ' + totalSueldos.toStringAsFixed(2));
  print('Total venezolanos por tipo: tipo1=' + totalV1.toString() + ', tipo2=' + totalV2.toString() + ', tipo3=' + totalV3.toString());
  print('Total extranjeros con edad impar: ' + totalExImpar.toString());
  print('Promedio de edad: ' + promedioEdad.toStringAsFixed(2));
}
