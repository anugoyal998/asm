#include <reg51.h>
sbit LED = P1^0;
void cct_init(void);
void delay(int a);
int main(void){
    cct_init();
    while(1){
        LED = 0;
        delay(60000);
        LED = 1;
        delay(60000);
    }
}

void cct_init(void){
    P0 = 0x00;
    P1 = 0x00;
    P2 = 0x00;
    P3 = 0x00;
}

void delay(int a){
    int i;
    for(i=0;i<a;i++);
}