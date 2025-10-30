// Ejercicio 44: Evaluación de hipoteca para iniciar negocio
// Dependiendo del monto de la hipoteca se decide cómo repartir la inversión entre socio y propietario.

void main() {
  double montoHipoteca = 800000.0;
  double inversionTotal = 1500000.0;

  double aportePropietario = 0.0;
  double aporteSocio = 0.0;

  if (montoHipoteca < 1000000.0) {
    aportePropietario = inversionTotal * 0.5;
    aporteSocio = inversionTotal * 0.5;
  } else {
    double falta = inversionTotal - montoHipoteca;
    if (falta <= 0) {
      aportePropietario = inversionTotal;
      aporteSocio = 0.0;
    } else {
      aportePropietario = montoHipoteca + (falta / 2.0);
      aporteSocio = falta / 2.0;
    }
  }

  print('Monto de la hipoteca: ' + montoHipoteca.toStringAsFixed(2));
  print('Aporte del propietario: ' + aportePropietario.toStringAsFixed(2));
  print('Aporte del socio: ' + aporteSocio.toStringAsFixed(2));
}
