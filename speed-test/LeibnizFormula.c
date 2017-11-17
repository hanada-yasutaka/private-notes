# include <stdio.h>
# include <math.h>
int main(void){
  int i;
  double s = 0.0;
  for(i = 0; i<=1e8; i++){
    s += pow(-1.0, i) / (2.0 * i + 1.0);
  };
  printf("Ans:%.16f\n",4*s);
  return 0;
  
}
