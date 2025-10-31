bool isPerfect(int n){
  int s=0;
  for(int i=1;i<=n~/2;i++) if(n%i==0) s+=i;
  return s==n;
}
void main(){
  int found=0;
  int num=2;
  while(found<3){
    if(isPerfect(num)){ print(num); found++; }
    num++;
  }
}