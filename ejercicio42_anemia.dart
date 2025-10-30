// Ejercicio 42: Detección de anemia según hemoglobina, edad y sexo
// Comparamos el nivel de hemoglobina con los rangos por edad/sexo.
// Si la hemoglobina es menor que el mínimo del rango, se considera anemia (positivo).

void main() {
  double hemoglobina = 11.0; // g%
  double edadAnios = 2.5; // años (puede ser fraccionario)
  String sexo = 'M'; // 'M' hombre, 'F' mujer

  bool tieneAnemia = false;

  if (edadAnios <= (1.0/12.0)) {
    if (hemoglobina < 13) tieneAnemia = true;
  } else if (edadAnios > (1.0/12.0) && edadAnios <= 0.5) {
    if (hemoglobina < 10) tieneAnemia = true;
  } else if (edadAnios > 0.5 && edadAnios <= 1.0) {
    if (hemoglobina < 11) tieneAnemia = true;
  } else if (edadAnios > 1.0 && edadAnios <= 5.0) {
    if (hemoglobina < 11.5) tieneAnemia = true;
  } else if (edadAnios > 5.0 && edadAnios <= 10.0) {
    if (hemoglobina < 12.6) tieneAnemia = true;
  } else if (edadAnios > 10.0 && edadAnios <= 15.0) {
    if (hemoglobina < 13.0) tieneAnemia = true;
  } else {
    if (sexo.toUpperCase() == 'F') {
      if (hemoglobina < 12.0) tieneAnemia = true;
    } else {
      if (hemoglobina < 14.0) tieneAnemia = true;
    }
  }

  print('Hemoglobina: ' + hemoglobina.toString());
  if (tieneAnemia) {
    print('Resultado: Positivo (tiene anemia)');
  } else {
    print('Resultado: Negativo (no tiene anemia)');
  }
}
