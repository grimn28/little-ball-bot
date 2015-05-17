
#include <stdint.h>
#include "mbed.h"
#include "MPU6050.h"


Serial pc(USBTX,USBRX);
MPU6050 mpu(p28,p27,&pc);

int main(void)
{
    int16_t * data;
    pc.printf("hello!!\r\n");
    // mpu.calibrate(1000,&pc);
    
    while (1)
    {
        data = mpu.measure_i(&pc);
        pc.printf("%i,%i,%i,%i,%i,%i,%i\n",data[0],data[1],data[2],data[3],data[4],data[5],data[6]);
        wait(0.05);
    }
}




