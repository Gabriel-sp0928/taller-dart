import 'dart:io';
void main(){
  double deuda=12775;
  double pago=100;
  double diff=125;
  double pendiente=deuda;
  int contador=0;
  List<double> pagos=[];
  while(pendiente>0.0001){
    contador++;
    pagos.add(pago);
    pendiente-=pago;
    pago+=diff;
  }
  for(int i=0;i<pagos.length;i++){
    print('${i+1} ${pagos[i].toStringAsFixed(2)} ${(deuda - pagos.sublist(0,i+1).reduce((a,b)=>a+b)).clamp(0,1e12).toStringAsFixed(2)}');
  }
  print('Numero pagos = $contador, ultimo = ${pagos.last.toStringAsFixed(2)}');
}