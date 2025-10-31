import 'dart:io';
void main(){
  var input=stdin;
  print('Cantidad empleados:');
  int n=int.parse(input.readLineSync()!);
  for(int i=0;i<n;i++){
    var line=input.readLineSync()!.split(' ');
    var nombre=line[0];
    var cedula=line[1];
    var tipo=line[2].toLowerCase();
    int hijos=int.parse(line[3]);
    double asistencia=double.parse(line[4]);
    double sueldoBase=0;
    if(tipo=='obrero') sueldoBase=100000;
    else if(tipo=='administrativo') sueldoBase=165500;
    else if(tipo=='ejecutivo') sueldoBase=250000;
    double aporteHijos = (hijos>5?5: hijos)*0.10*sueldoBase;
    double aporteAsistencia = asistencia>95?0.05*sueldoBase:0.0;
    double dedCaja = 0.10*sueldoBase;
    double dedSeguro = 0.02*sueldoBase;
    double neto = sueldoBase + aporteHijos + aporteAsistencia - dedCaja - dedSeguro;
    print('$nombre $cedula ${(sueldoBase).toStringAsFixed(2)} ${(dedCaja).toStringAsFixed(2)} ${(dedSeguro).toStringAsFixed(2)} ${(neto).toStringAsFixed(2)}');
  }
}