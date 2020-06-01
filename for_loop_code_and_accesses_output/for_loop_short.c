#include <stdio.h>
#include <stdlib.h>
int main(){
  double a = 3.1415926;
  double *result = calloc(10, sizeof(double));
  double *x = calloc(10, sizeof(double));
  double *y = calloc(10, sizeof(double));

  int i = 0, j = 0;
  for (i = 0; i < 10; i++){
    x[i] = (double)i;
    y[i] = (double)i;
  }

  for (j = 0; j < 10; j++){
    result[j] = a * x[j] + y[j];
    printf("result[%d]: %f\n", j, result[j]);
  }

  return 0;
}
