import 'dart:io';
void main(){
  var input=stdin;
  int n=int.parse(input.readLineSync()!);
  int limite=int.parse(input.readLineSync()!);
  int alcanzaron=0;
  String quienMas='';
  int mas=0;
  int sumaTotal=0;
  for(int i=0;i<n;i++){
    String nombre=input.readLineSync()!;
    int total=0;
    for(int d=0;d<7;d++) total+=int.parse(input.readLineSync()!);
    sumaTotal+=total;
    double pct=total*100/limite;
    if(total>=limite) alcanzaron++;
    if(total>mas){ mas=total; quienMas=nombre; }
    print('$nombre $total ${pct.toStringAsFixed(2)}%');
  }
  print('Porcentaje obreros que alcanzaron: \${(alcanzaron*100/n).toStringAsFixed(2)}%');
  print('Mayor productor: \$quienMas \$mas');
  print('Promedio produccion: \${(sumaTotal/n).toStringAsFixed(2)}');
}