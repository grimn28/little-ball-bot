
#include "mbed.h"
#include <stdint.h>
#include <math.h>
#include "MPU6050.h"


MPU6050::MPU6050(PinName SDA,PinName SCL,Serial* pc) : i2c(SDA,SCL)
{    
    if      (0==GRANGE) GSENS = 131.0;
    else if (1==GRANGE) GSENS = 65.5;
    else if (2==GRANGE) GSENS = 32.8;
    else                GSENS = 16.4;
    
    if      (0==ARANGE) ASENS = 16384.0;
    else if (1==ARANGE) ASENS = 8192.0;
    else if (2==ARANGE) ASENS = 4096.0;
    else                ASENS = 2048.0;
    
    setreg(0x1A,DLPF,pc);
    setreg(0x1B,GRANGE<<3,pc);
    setreg(0x1C,ARANGE<<3,pc);
    setreg(0x6B,0x01,pc);
}

int16_t* MPU6050::measure_i(Serial* pc)
{
    char reg = 0x3B;
    char data_c[14];
    
    i2c.write(I2CADDR,&reg,1);
    i2c.read(I2CADDR,data_c,14,true);

    data_i[0] = (data_c[0]<<8)|data_c[1];   // X linear acceleration (LSB)
    data_i[1] = (data_c[2]<<8)|data_c[3];   // Y linear acceleration (LSB)
    data_i[2] = (data_c[4]<<8)|data_c[5];   // Z linear acceleration (LSB)
    data_i[3] = (data_c[6]<<8)|data_c[7];   // Temperature           (LSB)
    data_i[4] = (data_c[8]<<8)|data_c[9];   // X rotational speed    (LSB)
    data_i[5] = (data_c[10]<<8)|data_c[11]; // Y rotational speed    (LSB)
    data_i[6] = (data_c[12]<<8)|data_c[13]; // Z rotational speed    (LSB)

    return data_i;
}


float* MPU6050::measure_f(Serial* pc,bool cal)
{
    char reg = 0x3B;
    char data_c[14];
    int16_t data_i[7];
    
    i2c.write(I2CADDR,&reg,1);
    i2c.read(I2CADDR,data_c,14,true);

    data_i[0] = (data_c[0]<<8)|data_c[1];   // X linear acceleration (LSB)
    data_i[1] = (data_c[2]<<8)|data_c[3];   // Y linear acceleration (LSB)
    data_i[2] = (data_c[4]<<8)|data_c[5];   // Z linear acceleration (LSB)
    data_i[3] = (data_c[6]<<8)|data_c[7];   // Temperature           (LSB)
    data_i[4] = (data_c[8]<<8)|data_c[9];   // X rotational speed    (LSB)
    data_i[5] = (data_c[10]<<8)|data_c[11]; // Y rotational speed    (LSB)
    data_i[6] = (data_c[12]<<8)|data_c[13]; // Z rotational speed    (LSB)

    data_f[0] = (float)data_i[0]/ASENS; // X linear acceleration (g)
    data_f[1] = (float)data_i[1]/ASENS; // Y linear acceleration (g)
    data_f[2] = (float)data_i[2]/ASENS; // Z linear acceleration (g)
    data_f[3] = (float)data_i[3]/TSENS; // temperature   (degC)
    data_f[4] = (float)data_i[4]/GSENS; // X rotational speed    (deg/s)
    data_f[5] = (float)data_i[5]/GSENS; // Y rotational speed    (deg/s)
    data_f[6] = (float)data_i[6]/GSENS; // Z rotational speed    (deg/s)

    if (cal)
    {
        data_f[0] = data_f[0] - mean[0];
        data_f[1] = data_f[1] - mean[1];
        data_f[2] = data_f[2] - mean[2] + 1.0;
        data_f[3] = data_f[3] + TOFST;
        data_f[4] = data_f[4] - mean[4];
        data_f[5] = data_f[5] - mean[5];
        data_f[6] = data_f[6] - mean[6];
    }
    return data_f;
}

bool MPU6050::calibrate(int nsamples,Serial* pc)
{
    DigitalOut led1(LED1);
    DigitalOut led2(LED2);
    
    int i;
    float sum[7];
    float * data;
    
    led1 = 1;
    led2 = 1;
    
    // compute mean
    sum[0] = 0;
    sum[1] = 0;
    sum[2] = 0;
    sum[3] = 0;
    sum[4] = 0;
    sum[5] = 0;
    sum[6] = 0;
    for (i=0;i<nsamples;i++)
    {
        data = measure_f(pc,false);
        sum[0] += data[0];
        sum[1] += data[1];
        sum[2] += data[2];
        sum[3] += data[3];
        sum[4] += data[4];
        sum[5] += data[5];
        sum[6] += data[6];
    }
    mean[0] = sum[0]/(float)nsamples;
    mean[1] = sum[1]/(float)nsamples;
    mean[2] = sum[2]/(float)nsamples;
    mean[3] = sum[3]/(float)nsamples;
    mean[4] = sum[4]/(float)nsamples;
    mean[5] = sum[5]/(float)nsamples;
    mean[6] = sum[6]/(float)nsamples;
    
    //compute variance
    sum[0] = 0;
    sum[1] = 0;
    sum[2] = 0;
    sum[3] = 0;
    sum[4] = 0;
    sum[5] = 0;
    sum[6] = 0;
    for (i=0;i<nsamples;i++)
    {
        data = measure_f(pc,false);
        sum[0] += pow(data[0]-mean[0],2);
        sum[1] += pow(data[1]-mean[1],2);
        sum[2] += pow(data[2]-mean[2],2);
        sum[3] += pow(data[3]-mean[3],2);
        sum[4] += pow(data[4]-mean[4],2);
        sum[5] += pow(data[5]-mean[5],2);
        sum[6] += pow(data[6]-mean[6],2);
    }
    var[0] = sum[0]/(float)nsamples;
    var[1] = sum[1]/(float)nsamples;
    var[2] = sum[2]/(float)nsamples;
    var[3] = sum[3]/(float)nsamples;
    var[4] = sum[4]/(float)nsamples;
    var[5] = sum[5]/(float)nsamples;
    var[6] = sum[6]/(float)nsamples;
    
    std[0] = sqrt(var[0]);
    std[1] = sqrt(var[1]);
    std[2] = sqrt(var[2]);
    std[3] = sqrt(var[3]);
    std[4] = sqrt(var[4]);
    std[5] = sqrt(var[5]);
    std[6] = sqrt(var[6]);
    
    led1 = 0;
    led2 = 0;
    
    pc->printf("mean    %+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f\n\r",mean[0],mean[1],mean[2],mean[4],mean[5],mean[6],mean[3]);
    pc->printf("var     %+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f\n\r",var[0],var[1],var[2],var[4],var[5],var[6],var[3]);
    pc->printf("std     %+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f%+-8.3f\n\r",std[0],std[1],std[2],std[4],std[5],std[6],std[3]);
    
    return(0);
}

bool MPU6050::setreg(char addr, char data, Serial* pc)
{
    int cnt = 0;
    bool done = false;
    bool failure = true;
    char cmd[2];
    char resp;
        
    while (!done && cnt<20)
    {
        cmd[0] = addr;
        cmd[1] = data;
        i2c.write(I2CADDR,cmd,2);
        
        i2c.write(I2CADDR,&addr,1);
        i2c.read(I2CADDR,&resp,1);
        
        if (resp==data)
        {
            failure = false;
            done = true;
        }
        
        cnt++;
    }
    
    return(failure);
}




