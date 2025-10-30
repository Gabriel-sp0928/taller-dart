// Ejercicio 40: Cálculo consumo de luz eléctrica y servicio de aseo urbano
// Se calcula la diferencia entre lectura actual y anterior y se aplica la tarifa según la escala.
// Nota: aquí se asume que el cargo de aseo urbano no está especificado, así que solo se calcula el consumo.

void main() {
  double lecturaAnterior = 120.0;
  double lecturaActual = 420.0;
  double consumo = lecturaActual - lecturaAnterior; // en Kwh

  double costo = 0.0;

  if (consumo <= 100) {
    costo = consumo * 2622.00;
  } else if (consumo <= 300) {
    costo = consumo * 79.78;
  } else if (consumo <= 500) {
    costo = consumo * 89.52;
  } else {
    costo = consumo * 97.95;
  }

  print('Consumo: \$consumo Kwh');
  print('Monto a pagar por consumo: \$' + costo.toStringAsFixed(2));
}
