import 'dart:io';
void main(){
  var input=stdin;
  int g=int.parse(input.readLineSync()!);
  double sumGrupos=0;
  for(int i=0;i<g;i++){
    int n=int.parse(input.readLineSync()!);
    double sumGrupo=0;
    for(int j=0;j<n;j++){
      int m=int.parse(input.readLineSync()!);
      double sumAlumno=0;
      for(int k=0;k<m;k++){
        double a=double.parse(input.readLineSync()!);
        double b=double.parse(input.readLineSync()!);
        double c=double.parse(input.readLineSync()!);
        double promMat=(a+b+c)/3;
        sumAlumno+=promMat;
      }
      double promAlumno = sumAlumno/m;
      print('Promedio alumno: \${promAlumno.toStringAsFixed(2)}');
      sumGrupo+=promAlumno;
    }
    double promG = sumGrupo/n;
    print('Promedio grupo: \${promG.toStringAsFixed(2)}');
    sumGrupos+=promG;
  }
  print('Promedio total grupos: \${(sumGrupos/g).toStringAsFixed(2)}');
}