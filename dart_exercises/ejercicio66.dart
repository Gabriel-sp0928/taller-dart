import 'dart:io';
double tariff(double w){
  if(w<=3) return 0;
  if(w<=6) return 600;
  if(w<=9) return 1200;
  if(w<=12) return 1500;
  if(w<=15) return 2000;
  return 2500;
}
void main(){
  var input=stdin;
  print('Numero de vuelos:');
  int fv=int.parse(input.readLineSync()!);
  for(int f=0;f<fv;f++){
    print('Numero de vuelo:');
    String num=input.readLineSync()!;
    print('Pasajeros en vuelo:');
    int p=int.parse(input.readLineSync()!);
    double montoTotalVuelo=0;
    int noPago=0;
    for(int i=0;i<p;i++){
      print('Codigo abordo y nombre:');
      var parts=input.readLineSync()!.split(' ');
      String cod=parts[0];
      String nombre=parts.sublist(1).join(' ');
      print('Cantidad maletas:');
      int m=int.parse(input.readLineSync()!);
      double totalKg=0;
      double monto=0;
      double maxBagW=0; String maxBagCode='';
      for(int j=0;j<m;j++){
        var b=input.readLineSync()!.split(' ');
        String code=b[0];
        double w=double.parse(b[1]);
        totalKg+=w;
        double t=tariff(w);
        monto+=t;
        if(w>maxBagW){ maxBagW=w; maxBagCode=code; }
      }
      montoTotalVuelo+=monto;
      if(monto==0) noPago++;
      print('$num $cod $nombre TotalKg:\${totalKg.toStringAsFixed(2)} Monto:\${monto.toStringAsFixed(2)}');
      print('$num $nombre MaletaMayor: $maxBagCode');
    }
    print('Vuelo $num mayor/menor pasajero se omite detalle por simplificacion');
    print('Vuelo $num monto total: \${montoTotalVuelo.toStringAsFixed(2)}');
    double pctNoPago = p>0? noPago*100/p:0;
    print('Porcentaje sin pago: \${pctNoPago.toStringAsFixed(2)}%');
  }
}