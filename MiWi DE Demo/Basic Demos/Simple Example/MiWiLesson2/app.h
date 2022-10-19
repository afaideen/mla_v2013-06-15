/* 
 * File:   app.h
 * Author: afaid
 *
 * Created on 10 March 2022, 20:50
 */

#ifndef APP_H
#define	APP_H

#define SIZE_SENSOR_BUFFER      2
#define DEVICE_TYPE_FFD         0x01
#define DEVICE_TYPE_RFD         0x02
#define SENSOR_TYPE_TEMPERATURE             0x10
#define SENSOR_TYPE_HUMIDITY                0x20

typedef struct __USER_SENSOR
{
    BYTE            type;
    DWORD_VAL       reading;
    
}USER_SENSOR;

typedef struct __SENSOR_BUFFER
{
    BYTE            active;
    BYTE            device_type;
    WORD_VAL        altAddr;
    DWORD_VAL       timestamp;
    USER_SENSOR     sensor[2];
    
}SENSOR_BUFFER;

extern SENSOR_BUFFER buffer[2];

#endif	/* APP_H */

