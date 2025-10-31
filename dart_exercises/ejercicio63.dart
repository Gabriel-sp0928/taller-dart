import 'dart:io';
void main(){
  var input = stdin;
  print('Ingrese cantidad de encuestados:');
  int n=int.parse(input.readLineSync()!);
  int totalM=0,totalH=0,sumM=0,sumH=0;
  Map<String,int> estadoCount={};
  Map<String,int> especialCount={};
  int mujeresAdultas=0;
  int hombresJovenes=0;
  int hombresSolteros=0,mujeresSolteras=0;
  for(int i=0;i<n;i++){
    var parts = (input.readLineSync() ?? '').split(' ');
    if(parts.length<4){
      print('Ingrese:edad sexo(M/F) estadoCivil especialidad');
      parts = (input.readLineSync() ?? '').split(' ');
    }
    int edad=int.parse(parts[0]);
    String sexo=parts[1].toUpperCase();
    String estado=parts[2];
    String especial=parts[3];
    estadoCount[estado]=(estadoCount[estado]??0)+1;
    especialCount[especial]=(especialCount[especial]??0)+1;
    if(sexo=='F'){ totalM++; sumM+=edad; if(edad>21) mujeresAdultas++; if(estado.toLowerCase()=='soltero' || estado.toLowerCase()=='soltera') mujeresSolteras++; }
    else { totalH++; sumH+=edad; if(edad>17 && edad<21) hombresJovenes++; if(estado.toLowerCase()=='soltero'|| estado.toLowerCase()=='soltera') hombresSolteros++; }
  }
  double promM = totalM>0? sumM/totalM:0;
  double promH = totalH>0? sumH/totalH:0;
  print('Promedio edad mujeres: \$promM');
  print('Promedio edad hombres: \$promH');
  print('Cantidad mujeres: \$totalM, hombres: \$totalH');
  estadoCount.forEach((k,v){
    double pct = v*100/n;
    print('Estado \$k: \$v (\${pct.toStringAsFixed(2)}%)');
  });
  especialCount.forEach((k,v){
    double pct = v*100/n;
    print('Especialidad \$k: \$v (\${pct.toStringAsFixed(2)}%)');
  });
  double pctMAdultas = totalM>0? mujeresAdultas*100/totalM:0;
  double pctHJovenes = totalH>0? hombresJovenes*100/totalH:0;
  print('Porcentaje mujeres adultas: \${pctMAdultas.toStringAsFixed(2)}%');
  print('Porcentaje hombres jovenes: \${pctHJovenes.toStringAsFixed(2)}%');
  print('Hombres solteros: \$hombresSolteros, Mujeres solteras: \$mujeresSolteras');
}