/********************************** (C) COPYRIGHT *******************************
 * File Name          : main.c
 * Author             : WCH
 * Version            : V1.0.0
 * Date               : 2023/12/25
 * Description        : Main program body.
 *********************************************************************************
 * Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
 * Attention: This software (modified or not) and binary are used for 
 * microcontroller manufactured by Nanjing Qinheng Microelectronics.
 *******************************************************************************/

/*
 *@Note
 * This monitors the 12v supply through a resistor divider consisting of
 * one 150k resistor and one 47k resistor.  This gives a division of 47/197.
 * The goal is to divide a signal close to 12v into a signal that can be
 * read using the ADC.
 * The divider is connected to the ADC channel A0.
 * The relay that is supposed to perform the switchover (normally on) is
 * connected at PD6 / PA1.
 */

#include "debug.h"


/* Global define */


/* Global Variable */
vu8 val;

/*********************************************************************
 * @fn      SWO_RCC_Init
 *
 * @brief   Initializes the RCC.
 *
 * @return  none
 */
void SWO_RCC_Init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
	RCC_ADCCLKConfig(RCC_PCLK2_Div2);

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

	return;
}

/*********************************************************************
 * @fn      SWO_GPIO_Init();
 *
 * @brief   Initializes the GPIO Pins.
 *
 * @return  none
 */
void SWO_GPIO_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};

	// PA1
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_1;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	// PA0 also A0
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AIN;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	// PD6 Just In Case
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_6;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IPD;
	GPIO_Init(GPIOD, &GPIO_InitStruct);
	return;
}

/*********************************************************************
 * @fn      SWO_ADC1_Init
 *
 * @brief   Initializes the ADC.
 *
 * @return  none
 */
void SWO_ADC1_Init(void)
{
	ADC_InitTypeDef ADC_InitStruct = {0};
	ADC_DeInit(ADC1);
	ADC_InitStruct.ADC_Mode = ADC_Mode_Independent;
	ADC_InitStruct.ADC_ScanConvMode = DISABLE;
	ADC_InitStruct.ADC_ContinuousConvMode = DISABLE;
	ADC_InitStruct.ADC_ExternalTrigConv = ADC_ExternalTrigConv_T2_TRGO;
	ADC_InitStruct.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStruct.ADC_NbrOfChannel = 1;

	ADC_Init(ADC1, &ADC_InitStruct);

	ADC_RegularChannelConfig(ADC1, ADC_Channel_0, 0, ADC_SampleTime_30Cycles);

	ADC_Cmd(ADC1, ENABLE);

	/*
	ADC_ResetCalibration(ADC1);
	while(ADC_GetCalibrationStatus(ADC1)) {;}

	ADC_StartCalibration(ADC1);
	while(ADC_GetCalibrationStatus(ADC1)) {;}
	*/

	ADC_ExternalTrigConvCmd(ADC1, ENABLE);

	ADC_ITConfig(ADC1, ADC_IT_EOC, ENABLE);

	return;
}


/*********************************************************************
 * @fn      SWO_TIM2_Init
 *
 * @brief   Initializes the timer.
 *
 * @return  none
 */
void SWO_TIM2_Init(void)
{
	TIM_TimeBaseInitTypeDef TIM_InitStruct = {0};
	TIM_InternalClockConfig(TIM2);

	/*
	 * The system core clock is supposed to be 8MHz.  We divide it down
	 * to 4khz.  This would require us to divide by 2000.
	 *
	 * so the prescaler is set to 4 and the period is set to 500
	 */
	TIM_InitStruct.TIM_Period = 499;
	TIM_InitStruct.TIM_Prescaler = 3;
	TIM_InitStruct.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_InitStruct.TIM_RepetitionCounter = 0;

	TIM_TimeBaseInit(TIM2, &TIM_InitStruct);

	TIM_UpdateRequestConfig(TIM2, TIM_UpdateSource_Regular);
	TIM_SelectOutputTrigger(TIM2, TIM_TRGOSource_Update);

	TIM_Cmd(TIM2, ENABLE);
	return;
}


void SW0_WDG(void)
{
	// set to a rate of 500hz or less
	// 128e3 / 500 = 256
	// 256 / 4 (prescaler) = 64 (counter reload)
	IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
	IWDG_SetPrescaler(IWDG_Prescaler_4);
	IWDG_SetReload(64);
	IWDG_WriteAccessCmd(IWDG_WriteAccess_Disable);
	IWDG_Enable();
	IWDG_ReloadCounter();
	return;
}

/*********************************************************************
 * @fn      USARTx_CFG
 *
 * @brief   Initializes the USART2 & USART3 peripheral.
 *
 * @return  none
 */
void USARTx_CFG(void);

/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
	NVIC_InitTypeDef NVIC_InitStruct = {0};
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);

    SystemCoreClockUpdate();
    PWR_PVDLevelConfig(PWR_PVDLevel_4V4);
    PWR_PVDCmd(ENABLE);
    SWO_RCC_Init();
    SWO_GPIO_Init();
    SWO_ADC1_Init();
    SWO_TIM2_Init();
    NVIC_InitStruct.NVIC_IRQChannel = ADC_IRQn;
    NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
    NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0x1;
    NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0x0;
    NVIC_Init(&NVIC_InitStruct);
	NVIC_ClearPendingIRQ(ADC_IRQn);  // critical

    while(1)
    {
    	__WFI();
    }
}
