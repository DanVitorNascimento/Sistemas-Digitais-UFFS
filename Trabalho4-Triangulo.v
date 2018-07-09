#include <stdio.h>
#include <stdlib.h>

int areadotri(int x1, int y1, int x2, int y2, int x3, int y3){
   return abs((x1*(y2-y3) + x2*(y3-y1)+ x3*(y1-y2))/2.0);
}

int dentrodaarea(int x1, int y1, int x2, int y2, int x3, int y3, int x, int y){
   int A = areadotri (x1, y1, x2, y2, x3, y3);
   int A1 = areadotri (x, y, x2, y2, x3, y3);
   int A2 = areadotri (x1, y1, x, y, x3, y3);
   int A3 = areadotri (x1, y1, x2, y2, x, y);
   return (A == A1 + A2 + A3);
}

int main(void){
   int x[3], y[3];
   printf("Digite os valores do primeiro vertice: \n");
   scanf("%d %d", &y[0], &x[0]);
   printf("Digite os valores do segundo vertice: \n");
   scanf("%d %d", &y[1], &x[1]);
   printf("Digite os valores do terceiro vertice: \n");
   scanf("%d %d", &y[2], &x[2]);
   system("clear");
   for(int i = 1; i <= 48; i++){
      for(int j = 1; j <= 64; j++){
         printf(dentrodaarea(y[0], x[0], y[1], x[1], y[2], x[2], i, j) ? "*" : " ");
      }
      printf("\n");
   }
   return 0;
}
