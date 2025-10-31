int sumDiv(int n){
  int s=0;
  for(int i=1;i<=n~/2;i++) if(n%i==0) s+=i;
  return s;
}
void main(){
  int found=0;
  int a=2;
  while(found<4){
    int b=sumDiv(a);
    if(b>a && b>0 && sumDiv(b)==a){
      print('\$a \$b');
      found++;
    }
    a++;
  }
}