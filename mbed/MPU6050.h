

class MPU6050
{   
    I2C i2c;
    static const char I2CADDR = 0xD0;  
    static const char DLPF = 2;
    static const char GRANGE = 0;
    static const char ARANGE = 0;
    static const float TSENS = 340.0;
    static const float TOFST = 36.53;
    float GSENS;
    float ASENS;
    int16_t data_i[7];
    float data_f[7];
    
    public:
    float mean[7];
    float var[7];
    float std[7];
    
    public:
    MPU6050(PinName,PinName,Serial*);
    float* measure_f(Serial*,bool cal);
    int16_t* measure_i(Serial*);
    bool calibrate(int,Serial*);
    
    private:
    bool setreg(char,char,Serial*);
};




