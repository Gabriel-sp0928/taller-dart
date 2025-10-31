List<String> mockInputs = [
  "2", 
  "2", 
  "1",
  "100", 
  "3", 
  "2", 
  "50", 
];
int _mockInputIndex = 0;

String mockInputReader() {
  if (_mockInputIndex < mockInputs.length) {
    String input = mockInputs[_mockInputIndex++];
    return input;
  }
  throw StateError("Not enough mock input data! Add more values to 'mockInputs'.");
}

void main() {
  print("=== ESTADÍSTICAS DE EMPRESAS DEL PAÍS ===");

  print("¿Cuántas empresas desea registrar? ");
  int n = int.parse(mockInputReader());

  int totalEmpresas = 0;
  int agricola = 0;
  int industrial = 0;
  int minera = 0;
  int pesquera = 0;
  int otra = 0;
  int mineraSur = 0;
  int trabAgricola = 0;
  int trabIndustrial = 0;
  int trabMinera = 0;
  int trabPesquera = 0;
  int trabOtra = 0;
  int indNorte = 0, indSur = 0, indEste = 0, indOeste = 0;

  for (int i = 1; i <= n; i++) {
    print("\n--- Empresa #$i ---");

    print("Actividad (1=Agrícola, 2=Industrial, 3=Minera, 4=Pesquera, 5=Otra): ");
    int actividad = int.parse(mockInputReader());

    print("Localización (1=Norte, 2=Sur, 3=Este, 4=Oeste): ");
    int localizacion = int.parse(mockInputReader());

    print("Número de trabajadores: ");
    int trabajadores = int.parse(mockInputReader());

    totalEmpresas++;

    switch (actividad) {
      case 1:
        agricola++;
        trabAgricola += trabajadores;
        break;
      case 2:
        industrial++;
        trabIndustrial += trabajadores;
        if (localizacion == 1) indNorte++;
        if (localizacion == 2) indSur++;
        if (localizacion == 3) indEste++;
        if (localizacion == 4) indOeste++;
        break;
      case 3:
        minera++;
        trabMinera += trabajadores;
        if (localizacion == 2) {
          mineraSur++;
        }
        break;
      case 4:
        pesquera++;
        trabPesquera += trabajadores;
        break;
      case 5:
        otra++;
        trabOtra += trabajadores;
        break;
      default:
        print("Código de actividad inválido.");
    }
  }

  double porcAgricola = totalEmpresas > 0 ? (agricola / totalEmpresas) * 100 : 0.0;
  double porcMineraSur = minera > 0 ? (mineraSur / minera) * 100 : 0;

  double promAgricola = agricola > 0 ? trabAgricola / agricola : 0;
  double promIndustrial = industrial > 0 ? trabIndustrial / industrial : 0;
  double promMinera = minera > 0 ? trabMinera / minera : 0;
  double promPesquera = pesquera > 0 ? trabPesquera / pesquera : 0;
  double promOtra = otra > 0 ? trabOtra / otra : 0;

  Map<String, int> industrialesPorZona = {
    "Norte": indNorte,
    "Sur": indSur,
    "Este": indEste,
    "Oeste": indOeste
  };

  String zonaMayorIndustrial = industrialesPorZona.entries.reduce((a, b) => a.value > b.value ? a : b).key;

  print("\n=== RESULTADOS ===");
  print("i. Porcentaje de empresas agrícolas del país: ${porcAgricola.toStringAsFixed(2)}%");
  print("ii. Porcentaje de empresas mineras del sur respecto al total de mineras: ${porcMineraSur.toStringAsFixed(2)}%");
  print("iii. Promedio de trabajadores por tipo de actividad:");
  print("     Agrícola   : ${promAgricola.toStringAsFixed(2)}");
  print("     Industrial : ${promIndustrial.toStringAsFixed(2)}");
  print("     Minera     : ${promMinera.toStringAsFixed(2)}");
  print("     Pesquera   : ${promPesquera.toStringAsFixed(2)}");
  print("     Otra       : ${promOtra.toStringAsFixed(2)}");
  print("iv. Localización con mayor número de empresas industriales: $zonaMayorIndustrial");
}
