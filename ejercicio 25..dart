void main() {
  double sueldo = 38000;
  double nuevoSueldo;

  if (sueldo < 40000) {
    nuevoSueldo = sueldo * 1.15;
  } else {
    nuevoSueldo = sueldo * 1.12;
  }

  print("El nuevo sueldo del trabajador es Bs. ${nuevoSueldo.toStringAsFixed(2)}.");
}