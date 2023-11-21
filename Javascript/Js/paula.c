#include <stdio.h>

int main(){
 int SEC,h,m,s;

 printf("Enter Second:");
 scanf("%d", &SEC);

 h: (SEC/3600);
 m: (SEC - (h*3600)/60);
 s: (SEC - (h*3600) - (m*60));

 printf("%d:%d:%d", h,m,s);

 return 0;
}