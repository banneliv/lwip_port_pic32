
#define THIS_IS_STACK_APPLICATION
/* Kernel includes. */
#include "HardwareProfile.h"


#include <stdio.h>
#include <stdlib.h>

#include <p32xxxx.h>
#include <plib.h>

#include <FreeRTOS.h>
#include <task.h>


#define frequence_led 40

void prvLed( void *pvParameters );

int main(void)
{
	DBINIT();
	DBPRINTF("\n********** lwip port to pic32 demo **********\n");

    //creation tache de led de fonctionnement
    if ( xTaskCreate( prvLed, ( const char * ) "LED",configMINIMAL_STACK_SIZE, NULL,4, NULL ) == pdPASS)
    {
        printf("led task created\n\r");
    }
    else
    {
        printf("ERROR: led task NOT created\r\n");
    }

    InitIP();
    vTaskStartScheduler();
}



/*-----------------------------------------------------------*/
void prvLed( void *pvParameters )
{
    TRISDbits.TRISD2 = 0;
    LATDbits.LATD2 = 1;
    /* Initialise xNextWakeTime - this only needs to be done once. */
    TickType_t xNextWakeTime = xTaskGetTickCount();
    for( ;; )
    {
        vTaskDelayUntil( &xNextWakeTime, frequence_led );
        LATDbits.LATD2 = ~PORTDbits.RD2;// Toggle Port
    }
}