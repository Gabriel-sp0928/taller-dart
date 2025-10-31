import 'dart:io';
void main(){
  var input=stdin;
  int estados=int.parse(input.readLineSync()!);
  for(int e=0;e<estados;e++){
    String codigoEstado=input.readLineSync()!;
    int agencias=int.parse(input.readLineSync()!);
    double montoTotalEstado=0;
    String agenciaMenor='', agenciaMayor='';
    double menor=1e300, mayor=0;
    for(int a=0;a<agencias;a++){
      String codigoAg=input.readLineSync()!;
      int clientes=int.parse(input.readLineSync()!);
      double montoTotalAg=0;
      String clienteMayor='';
      double mayorCliente=0;
      for(int c=0;c<clientes;c++){
        String codCliente=input.readLineSync()!;
        int pagarés=int.parse(input.readLineSync()!);
        double totalCliente=0;
        for(int p=0;p<pagarés;p++){
          var parts=input.readLineSync()!.split(' ');
          String num=parts[0];
          String fecha=parts[1];
          double monto=double.parse(parts[2]);
          totalCliente+=monto;
        }
        montoTotalAg+=totalCliente;
        if(totalCliente>mayorCliente){ mayorCliente=totalCliente; clienteMayor=codCliente; }
        print('RECIBO \$codCliente \$totalCliente');
      }
      montoTotalEstado+=montoTotalAg;
      if(montoTotalAg<menor){ menor=montoTotalAg; agenciaMenor=codigoAg; }
      if(montoTotalAg>mayor){ mayor=montoTotalAg; agenciaMayor=codigoAg; }
      print('AGENCIA \$codigoAg Clientes:\$clientes Total:\$montoTotalAg MayorCliente:\$clienteMayor');
    }
    print('ESTADO \$codigoEstado Total:\$montoTotalEstado AgenciaMenor:\$agenciaMenor AgenciaMayor:\$agenciaMayor');
  }
}