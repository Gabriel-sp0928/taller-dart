import 'dart:io';
void main(){
  var input=stdin;
  int n=int.parse(input.readLineSync()!);
  const double G=6.67259e-11;
  const double M=5.97e24;
  double maxF=-1, minF=1e300, sumF=0;
  double maxMass=0, sumMass=0;
  double maxAlt=-1, minAlt=1e300;
  for(int i=0;i<n;i++){
    var parts=input.readLineSync()!.split(' ');
    double masa=double.parse(parts[0]);
    double altura=double.parse(parts[1]);
    double r=altura;
    double F=G*masa*M/(r*r);
    if(F>maxF) maxF=F;
    if(F<minF) minF=F;
    sumF+=F;
    if(masa>maxMass) maxMass=masa;
    sumMass+=masa;
    if(altura>maxAlt) maxAlt=altura;
    if(altura<minAlt) minAlt=altura;
  }
  print('Mayor F: \$maxF');
  print('Menor F: \$minF');
  print('Promedio F: \${(sumF/n)}');
  print('Mayor masa: \$maxMass Promedio masa: \${(sumMass/n)}');
  print('Altura menor: \$minAlt mayor: \$maxAlt');
}