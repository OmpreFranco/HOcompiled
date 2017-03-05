#include <stdlib.h>
#include <stdio.h>
// #include "c-sum.h"

void sum_abs_(int *in, int *num , int *asum) {
   int i,sum;
   sum=0 ;
   for (i=0; i < *num; ++i) {
       sum += abs(in[i]);
    }
   *asum = sum ;
   printf("%d", *asum) ;
}
 
