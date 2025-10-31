import 'dart:io';
void main(){
  var input=stdin;
  int sucursales=int.parse(input.readLineSync()!);
  int alcanzaron=0;
  for(int s=0;s<sucursales;s++){
    String codigo=input.readLineSync()!;
    String desc=input.readLineSync()!;
    double esperado=double.parse(input.readLineSync()!);
    int puntos=int.parse(input.readLineSync()!);
    double totalSucursal=0;
    double maxCom=0; String maxComCode='';
    for(int p=0;p<puntos;p++){
      String code=input.readLineSync()!;
      int u1=int.parse(input.readLineSync()!);
      int u2=int.parse(input.readLineSync()!);
      int u3=int.parse(input.readLineSync()!);
      double pvp1=double.parse(input.readLineSync()!);
      double pvp2=double.parse(input.readLineSync()!);
      double pvp3=double.parse(input.readLineSync()!);
      int totalUnits=u1+u2+u3;
      double neto = u1*pvp1+u2*pvp2+u3*pvp3;
      double com = neto*0.10;
      totalSucursal+=neto;
      if(com>maxCom){ maxCom=com; maxComCode=code; }
      int minProd=1;
      if(u1<=u2 && u1<=u3) minProd=1;
      else if(u2<=u1 && u2<=u3) minProd=2;
      else minProd=3;
      print('$code $totalUnits ${neto.toStringAsFixed(2)} ${com.toStringAsFixed(2)} ProductoMenor: $minProd');
    }
    double pct = totalSucursal*100/esperado;
    if(totalSucursal>=esperado) alcanzaron++;
    print('$codigo $desc ${totalSucursal.toStringAsFixed(2)} ${pct.toStringAsFixed(2)}% $maxComCode ${maxCom.toStringAsFixed(2)}');
  }
  print('Porcentaje sucursales que alcanzaron: \${(alcanzaron*100/sucursales).toStringAsFixed(2)}%');
}