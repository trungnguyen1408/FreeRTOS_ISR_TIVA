//*****************************************************************************
//
// freertos_demo.c - Simple FreeRTOS example.
//
// Copyright (c) 2012-2017 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
// Texas Instruments (TI) is supplying this software for use solely and
// exclusively on TI's microcontroller products. The software is owned by
// TI and/or its suppliers, and is protected under applicable copyright
// laws. You may not combine this software with "viral" open-source
// software in order to form a larger program.
// 
// THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
// NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
// NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
// CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
// DAMAGES, FOR ANY REASON WHATSOEVER.
// 
// This is part of revision 2.1.4.178 of the EK-TM4C123GXL Firmware Package.
//
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "inc/hw_ints.h"
#include "inc/hw_nvic.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "utils/uartstdio.h"
#include "driverlib/interrupt.h"
#include "led_task.h"
#include "switch_task.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#define TARGET_IS_BLIZZARD_RB1
#include "driverlib/rom.h"
#include "driver/led.h"
#include "switches.h"
#include "led.h"
//*****************************************************************************
//
//! \addtogroup example_list
//! <h1>FreeRTOS Example (freertos_demo)</h1>
//!
//! This application demonstrates the use of FreeRTOS on Launchpad.
//!
//! The application blinks the user-selected LED at a user-selected frequency.
//! To select the LED press the left button and to select the frequency press
//! the right button.  The UART outputs the application status at 115,200 baud,
//! 8-n-1 mode.
//!
//! This application utilizes FreeRTOS to perform the tasks in a concurrent
//! fashion.  The following tasks are created:
//!
//! - An LED task, which blinks the user-selected on-board LED at a
//!   user-selected rate (changed via the buttons).
//!
//! - A Switch task, which monitors the buttons pressed and passes the
//!   information to LED task.
//!
//! In addition to the tasks, this application also uses the following FreeRTOS
//! resources:
//!
//! - A Queue to enable information transfer between tasks.
//!
//! - A Semaphore to guard the resource, UART, from access by multiple tasks at
//!   the same time.
//!
//! - A non-blocking FreeRTOS Delay to put the tasks in blocked state when they
//!   have nothing to do.
//!
//! For additional details on FreeRTOS, refer to the FreeRTOS web page at:
//! http://www.freertos.org/
//
//*****************************************************************************


#ifdef DEBUG
void
__error__(char *pcFilename, uint32_t ui32Line)
{
}

#endif

//*****************************************************************************
//
// This hook is called by FreeRTOS when an stack overflow error is detected.
//
//*****************************************************************************
void
vApplicationStackOverflowHook(xTaskHandle *pxTask, char *pcTaskName)
{
    //
    // This function can not return, so loop forever.  Interrupts are disabled
    // on entry to this function, so no processor interrupts will interrupt
    // this loop.
    //
    while(1)
    {
    }
}

//*****************************************************************************
//
// Configure the UART and its pins.  This must be called before UARTprintf().
//
//*****************************************************************************
void ConfigureUART(void)
{
    //
    // Enable the GPIO Peripheral used by the UART.
    //
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

    //
    // Enable UART0
    //
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);

    //
    // Configure GPIO Pins for UART mode.
    //
    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    //
    // Use the internal 16MHz oscillator as the UART clock source.
    //
    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);

        //
        // Initialize the UART for console I/O.
        //
        UARTStdioConfig(0, 115200, 16000000);
}

//*****************************************************************************
//
// Initialize FreeRTOS and start the initial set of tasks.
//
//*****************************************************************************

/* The two task functions. */
void vTask1( void *pvParameters );
void vTask2( void *pvParameters );
void vTask3( void *pvParameters );

xQueueHandle xQueue;


//*****************************************************************************
//
// Initialize FreeRTOS and start the initial set of tasks.
//
//*****************************************************************************
int
main(void)
{

    SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
    ConfigureUART();
    IntMasterEnable(); //enable processor interrupts
    IntEnable(INT_UART0); //enable the UART interrupt
    UARTIntEnable(UART0_BASE, UART_INT_RX | UART_INT_RT); //only enable RX and TX interrupts

    ledInit();
    switchInit();

    xQueue = xQueueCreate(3,sizeof(int));

//Create the task

    xTaskCreate( vTask1, "SW1 status", configMINIMAL_STACK_SIZE, NULL, 1, NULL );

    xTaskCreate( vTask2, "SW2 status", configMINIMAL_STACK_SIZE, NULL, 1, NULL );

    xTaskCreate( vTask3, "LED status", configMINIMAL_STACK_SIZE, NULL, 2, NULL );

    vTaskStartScheduler();

}
void vTask1( void *pvParameters )
{//Check SW1 status

    const portTickType xTicksToWait = 100 / portTICK_RATE_MS;
    sw_t preVal, currentVal;
    portTickType data;
    portBASE_TYPE xStatus;
    preVal = switchState(1);
        for( ;; )
        {
            currentVal = switchState(1);
            if (currentVal != preVal)
            {
                    preVal = currentVal;
                    if (currentVal == PRESSED) data = 0;
                    else data = 1;
                  xStatus = xQueueSend( xQueue, &data, xTicksToWait );
                    if( xStatus != pdPASS )
                    {
                        UARTprintf( "Task 1 could not send  to the queue.\n" );
                    }
            }
        }
        vTaskDelay(100);
}


void vTask2( void *pvParameters )
{
    //Check SW2 status

        const portTickType xTicksToWait = 100 / portTICK_RATE_MS;
        sw_t preVal, currentVal;
        portTickType data;
        portBASE_TYPE xStatus;
        preVal = switchState(2);
            for( ;; )
            {
                currentVal = switchState(2);
                if (currentVal != preVal)
                {
                        preVal = currentVal;
                        if (currentVal == PRESSED) data = 4;
                        else data = 5;
                        xStatus = xQueueSend(xQueue, &data, xTicksToWait );
                        if( xStatus != pdPASS)
                        {
                            UARTprintf( "Task 2 could not send to the queue.\n" );
                        }
                }
            }
            vTaskDelay(100);
}

void  UARTIntHandler(void)
{    char rx_data;
     unsigned int data;
    uint32_t ui32Status;
    portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
    ui32Status = UARTIntStatus(UART0_BASE, true); //get interrupt status
    UARTIntClear(UART0_BASE, ui32Status); //clear the asserted interrupts

       while(UARTCharsAvail(UART0_BASE)) //loop while there are chars
         {
    //    UARTCharPutNonBlocking(UART0_BASE, UARTCharGetNonBlocking(UART0_BASE)); //echo character
        rx_data = UARTCharGet(UART0_BASE);
         }
       if(rx_data == 'O') data = 2;
       else if (rx_data == 'F') data = 3;
       else data = 6;
       xQueueSendFromISR(xQueue, &data, &xHigherPriorityTaskWoken );
       portEND_SWITCHING_ISR( xHigherPriorityTaskWoken);

       UARTprintf( "\n Input data is %c \n", rx_data );

}


void vTask3( void *pvParameters )
{

    const portTickType xTicksToWait = 5000 / portTICK_RATE_MS;
    portCHAR data;
    portBASE_TYPE xStatus;
    for( ;; )
        {
          xStatus = xQueueReceive( xQueue, &data, xTicksToWait );
            if( xStatus == pdPASS )
            {
                /* Data was successfully received from the queue, print out the received
                value and the source of the value. */
                switch(data)
                    {
                        case 0:
                            ledControl(1, ON);
                            break;
                        case 1:
                            ledControl(1, OFF);
                            break;
                        case 2:
                            ledControl(0, ON);
                            UARTprintf( "\n Led red is ON. \n");
                            break;
                        case 3:
                            ledControl(0, OFF);
                            UARTprintf( "\n Led red is OFF. \n");
                            break;
                        case 4:
                            ledControl(2, ON);
                            break;
                        case 5:
                            ledControl(2, OFF);
                            break;
                        default:
                            UARTprintf( "\n Data is invalid. \n");
                    }
               }
       }
    vTaskDelay(100);
}
