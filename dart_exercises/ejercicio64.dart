import 'dart:io';
void main(){
  double target=1.99;
  double sum=0.0;
  double term=1.0;
  int count=0;
  while(sum<target){
    sum+=term;
    count++;
    term/=2.0;
  }
  print('$count');
  print('${sum}');
}