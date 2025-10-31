import 'dart:io';
void main(){
  var input=stdin;
  for(int i=0;i<5;i++){
    String nombre=input.readLineSync()!;
    double last=double.parse(input.readLineSync()!);
    double sum=0;
    for(int j=0;j<10;j++) sum+=double.parse(input.readLineSync()!);
    double avg=sum/10;
    double diff=avg-last;
    if(diff>0) print('SUBIO ${diff.toStringAsFixed(2)}');
    else print('BAJO ${(-diff).toStringAsFixed(2)}');
  }
}