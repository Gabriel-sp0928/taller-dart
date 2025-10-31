List<String> mockInput = [
  "2", 
  "F-2023-001", 
  "Cliente Ejemplo SA",
  "1250.75",
  "2023-01-15", 
  "2023-04-01",

  "F-2023-002", 
  "Proveedor B Cia.", 
  "500.00",
  "2023-05-01", 
  "2023-05-05", 
];
int mockInputIndex = 0;

String readLineSyncMock() {
  if (mockInputIndex < mockInput.length) {
    String value = mockInput[mockInputIndex];
    mockInputIndex++;

    return value;
  }
  throw StateError("Not enough mock input provided for the program to complete!");
}

void main() {
  print("=== CÁLCULO DE INTERESES Y DESCUENTOS DE FACTURAS ===");

  print("¿Cuántas facturas desea registrar? (Using mock input)");
  int cantidad = int.parse(readLineSyncMock());
  for (int i = 1; i <= cantidad; i++) {
    print("\n--- Factura #$i ---");

    print("Número de factura: (Using mock input)");
    String numFac = readLineSyncMock();

    print("Nombre del cliente: (Using mock input)");
    String nombreCliente = readLineSyncMock();

    print("Monto de la factura: (Using mock input)");
    double montoFactura = double.parse(readLineSyncMock());

    print("Fecha de compra (AAAA-MM-DD): (Using mock input)");
    DateTime fechaCompra = DateTime.parse(readLineSyncMock());

    print("Fecha de pago (AAAA-MM-DD): (Using mock input)");
    DateTime fechaPago = DateTime.parse(readLineSyncMock());

    int dias = fechaPago.difference(fechaCompra).inDays;

    double interes = 0;
    double descuento = 0;
    double montoFinal = montoFactura;

    if (dias >= 60) {
      interes = montoFactura * 0.08;
      montoFinal += interes;
    } else if (dias >= 31 && dias <= 59) {
      interes = montoFactura * 0.06;
      montoFinal += interes;
    } else if (dias < 15) {
      descuento = montoFactura * 0.02;
      montoFinal -= descuento;
    }

    print("\n--- RESULTADO ---");
    print("Número de factura : $numFac");
    print("Cliente           : $nombreCliente");
    print("Monto original    : \$${montoFactura.toStringAsFixed(2)}");
    print("Días transcurridos: $dias");
    print("Interés de mora   : \$${interes.toStringAsFixed(2)}");
    print("Descuento aplicado: \$${descuento.toStringAsFixed(2)}");
    print("Monto total a pagar: \$${montoFinal.toStringAsFixed(2)}");
  }
}
