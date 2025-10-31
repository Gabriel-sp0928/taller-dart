import 'dart:io';
void main(){
  var input=stdin;
  int dias=0;
  int errores=0;
  double sumMax=0,sumMin=0;
  while(true){
    var line=input.readLineSync();
    if(line==null) break;
    var p=line.split(' ');
    if(p.length<2) continue;
    double ma=double.parse(p[0]), mi=double.parse(p[1]);
    if(ma==0 && mi==0) break;
    dias++;
    sumMax+=ma; sumMin+=mi;
    if(ma<14 || ma>30 || mi<14 || mi>30) errores++;
  }
  if(dias>0){
    print(dias);
    print('Media maxima: \${(sumMax/dias).toStringAsFixed(2)}');
    print('Media minima: \${(sumMin/dias).toStringAsFixed(2)}');
    print('Errores: \$errores');
    print('Porcentaje errores: \${(errores*100/dias).toStringAsFixed(2)}%');
  } else print('0');
}