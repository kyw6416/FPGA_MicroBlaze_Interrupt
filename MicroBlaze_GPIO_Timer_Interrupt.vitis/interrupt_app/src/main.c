#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "xil_exception.h"
#include "xintc.h"
#include "xtmrctr.h"

#define CHANNEL_1 				1
#define GPIO_BTN_DEVICE_ID 		XPAR_GPIO_1_DEVICE_ID
#define BTN_INT_MSK 	   		XGPIO_IR_CH1_MASK

#define GPIO_LED_DEVICE_ID 		XPAR_GPIO_0_DEVICE_ID

#define INTC_DEVICE_ID 			XPAR_INTC_0_DEVICE_ID
#define INTC_BTN_INT_VEC_ID 	XPAR_INTC_0_GPIO_1_VEC_ID

// Ÿ�̸� ���ͷ�Ʈ
#define TMRCTR_DEVICE_ID 		XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INT_VEC_ID 		XPAR_INTC_0_TMRCTR_0_VEC_ID
#define TIMER_CNTR_0			0

uint32_t resetvalue = 0xffffffff - 100000000; 	// 1sec
// uint32_t resetvalue = 0xffffffff - 100000; 	// 1msec
// uint32_t resetvalue = 0xffffffff - 1000000; 	// 10msec

void TimerCounterHandler (void *callbackRef, uint8_t TmrctrNumber);		// timer ���ͷ�Ʈ �߻��� �����ϴ� �Լ�
void GpioHandler(void *callbackRef);									// gpio  ���ͷ�Ʈ �߻��� �����ϴ� �Լ�
void Led_Init();
void Btn_Init();
void Intr_Init();

XGpio Gpio_Led;
XGpio Gpio_Button;
XIntc Intc;
XTmrCtr TimerCounterInst;

int main()
{
    init_platform();

    Led_Init();
    Btn_Init();


    XTmrCtr_Initialize(&TimerCounterInst, TMRCTR_DEVICE_ID);
    XTmrCtr_SelfTest(&TimerCounterInst, TIMER_CNTR_0);			// timer ���ο� timer�� 2�� �־ ����

    Intr_Init();
    //���ͷ�Ʈ ����ѷ��� ����
    XIntc_Connect(&Intc, TMRCTR_INT_VEC_ID, (XInterruptHandler)XTmrCtr_InterruptHandler, &TimerCounterInst);	// ���� ���̺� ����
    XIntc_Enable(&Intc, TMRCTR_INT_VEC_ID);
    XTmrCtr_SetHandler(&TimerCounterInst, TimerCounterHandler, &TimerCounterInst);								// �Լ��̸� �ν��Ͻ� �� �־��ֱ�
    XTmrCtr_SetOptions(&TimerCounterInst, TIMER_CNTR_0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);			// ���ͷ�Ʈ�� �ɸ��� ���ε��ϰڴ�
    XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, resetvalue);
    XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

    while (1)
    {
    	XGpio_DiscreteWrite(&Gpio_Led, CHANNEL_1, 0x00);
    	usleep(500000);
    	XGpio_DiscreteWrite(&Gpio_Led, CHANNEL_1, 0xff);
    	usleep(500000);
    }

    cleanup_platform();
    return 0;
}

void GpioHandler(void *callbackRef)  // �ڷ����� ������ �ʰ� �Ű������� �޴´�.
{
	XGpio *pGpio = (XGpio *)callbackRef;

	// ��ư����
	if ((XGpio_DiscreteRead(pGpio, CHANNEL_1) &0x01 )){
		print("PUSHED BUTTON_1!\n");
	}
	else if ((XGpio_DiscreteRead(pGpio, CHANNEL_1) &0x02 )){
		print("PUSHED BUTTON_2!\n");
	}
	else if ((XGpio_DiscreteRead(pGpio, CHANNEL_1) &0x04 )){
		print("PUSHED BUTTON_3!\n");
	}
	else if ((XGpio_DiscreteRead(pGpio, CHANNEL_1) &0x08 )){
		print("PUSHED BUTTON_4!\n");
	}

	XGpio_InterruptClear(pGpio, CHANNEL_1);
}

void Led_Init()
{
	// led �ʱ�ȭ �丱�䷲�� ���� �ʱ�ȭ
	    XGpio_Initialize(&Gpio_Led, GPIO_LED_DEVICE_ID);
	    XGpio_SetDataDirection(&Gpio_Led, CHANNEL_1, 0x00); //���
}

void Btn_Init()
{
	// button �ʱ�ȭ
	    XGpio_Initialize(&Gpio_Button, GPIO_BTN_DEVICE_ID);
	    XGpio_SetDataDirection(&Gpio_Button, CHANNEL_1, 0x0f); //�Է�
}

void Intr_Init()
{
	   // ���ͷ�Ʈ �ʱ�ȭ
	    XIntc_Initialize(&Intc, INTC_DEVICE_ID);	// Interrupt Controller Device �ʱ�ȭ
	    XIntc_Connect(&Intc, INTC_BTN_INT_VEC_ID, (Xil_ExceptionHandler)GpioHandler, &Gpio_Button); // Interrupt Controller�� Vector Table�� Jump�� �Լ� �Ҵ�
	    // ���ͷ�Ʈ ��Ʈ�ѷ��� ���� ���ͷ�Ʈ ��Ʈ�ѷ��� ���� ������ �־��ְ� �ּ�, �ּҿ� ���� �Ű�����
	    // GpioHandler gpio_btn�� ��� �����ϰ� ���ͷ�Ʈ�� ����


	    // ���ͷ�Ʈ ��Ʈ�ѷ��� �ִ� ���͸� ����
	    XIntc_Enable(&Intc, INTC_BTN_INT_VEC_ID);

	    // Start the interrupt controller such that interrupts are recognized
	    // and handled by the processor
	    XIntc_Start(&Intc, XIN_REAL_MODE);

	    // GPIO���� ������ interrupt Enable
	    XGpio_InterruptEnable(&Gpio_Button, CHANNEL_1);
	    XGpio_InterruptGlobalEnable(&Gpio_Button);

	    // Exception Setup
	    Xil_ExceptionInit();
	    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XIntc_InterruptHandler , &Intc);
	    Xil_ExceptionEnable();
}

void TimerCounterHandler (void *callbackRef, uint8_t TmrctrNumber)
{
	static int counter = 0;
	printf("timer/ counter interrupt : %d\n", counter++);	// ���ͷ�Ʈ�� �ɸ��� 1�� ����
}