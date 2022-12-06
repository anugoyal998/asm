#include <reg51.h>
sbit relay1 = P0^4;
sbit relay2 = P0^5;


void delayMs(unsigned int);
void main(void){
    P2 = 0;
    while(1){
        relay1 = 1;
        relay2 = 0;
        delayMs(200);
        relay1 = 0;
        relay2 = 1;
        delayMs(200);
    }
}

void delayMs(unsigned int n){
    unsigned int i,j;
    for(j=0;j<n;j++){
        for(i=0;i<1000;i++);
    }
}