/********************************** (C) COPYRIGHT *******************************
 * File Name          : ch32v00x_it.c
 * Author             : WCH
 * Version            : V1.0.0
 * Date               : 2023/12/25
 * Description        : Main Interrupt Service Routines.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/
#include <ch32v00x_it.h>
#include "swo.h"

void NMI_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void HardFault_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
//v critical
void ADC1_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
/*********************************************************************
 * @fn      NMI_Handler
 *
 * @brief   This function handles NMI exception.
 *
 * @return  none
 */
void NMI_Handler(void)
{
  while (1)
  {
  }
}

/*********************************************************************
 * @fn      HardFault_Handler
 *
 * @brief   This function handles Hard Fault exception.
 *
 * @return  none
 */
void HardFault_Handler(void)
{
  while (1)
  {
  }
}


void ADC1_IRQHandler(void)
{
	if (ADC_GetITStatus(ADC1, ADC_IT_EOC))
	{
		ADC_ClearITPendingBit(ADC1, ADC_IT_EOC);

		u16 lineVoltCts = ADC1->RDATAR;
		// assuming that the ADC counts can be used directly
		if (lineVoltCts < C_LINE_CT_LO_LIM)
		{
			GPIOA->OUTDR &= ~GPIO_Pin_1;
		}

		if (lineVoltCts > C_LINE_CT_HI_LIM)
		{
			GPIOA->OUTDR |= GPIO_Pin_1;
		}
		IWDG_ReloadCounter();
	}
}

