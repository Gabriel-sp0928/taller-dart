import 'dart:io';
void main(){
  var input=stdin;
  int n=int.parse(input.readLineSync()!);
  int tachira=0,distrito=0;
  int g1=0,g2=0,g3=0,g4=0;
  int males=0,females=0;
  for(int i=0;i<n;i++){
    var p=input.readLineSync()!.split(' ');
    String sexo=p[0];
    int edad=int.parse(p[1]);
    String orfanato=p[2];
    String estado=p[3];
    if(estado.toLowerCase()=='tachira') tachira++;
    if(estado.toLowerCase()=='distrito') distrito++;
    if(edad<1) g1++;
    else if(edad<=3) g2++;
    else if(edad<=6) g3++;
    else g4++;
    if(sexo.toUpperCase()=='M') males++; else females++;
  }
  print('Pct Tachira: \${(tachira*100/n).toStringAsFixed(2)}% Distrito: \${(distrito*100/n).toStringAsFixed(2)}%');
  print('Grupos: \$g1 \$g2 \$g3 \$g4');
  print('Hombres: \$males (\${(males*100/n).toStringAsFixed(2)}%) Mujeres: \$females (\${(females*100/n).toStringAsFixed(2)}%)');
}