import 'dart:io';
void main(){
  var input=stdin;
  double totalPais=0;
  List<Map> estados=[];
  for(int i=0;i<5;i++){
    String name=input.readLineSync()!;
    int m=int.parse(input.readLineSync()!);
    int suma=0;
    for(int j=0;j<m;j++) suma+=int.parse(input.readLineSync()!);
    estados.add({'name':name,'pop':suma});
    totalPais+=suma;
  }
  estados.sort((a,b)=>b['pop']-a['pop']);
  print('Mayor: \${estados.first['name']} \${estados.first['pop']}');
  print('Menor: \${estados.last['name']} \${estados.last['pop']}');
  print('Porcentaje 5 estados respecto pais: \${( (estados.map((e)=>e['pop']).reduce((a,b)=>a+b))/totalPais*100).toStringAsFixed(2)}%');
  print('Promedio por estado: \${(totalPais/5).toStringAsFixed(2)}');
}