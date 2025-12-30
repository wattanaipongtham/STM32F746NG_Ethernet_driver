/*
 * File: timer.c
 * Project: STM32F746NG_ETHERNET_DRIVER
 * Author: Wattanai Pongtham
 * Created on: Dec 10, 2025
 * Version: <Module>_1.0.0
 * Description:
 *
 * MIT License
 * 
 * Copyright (c) 2025 Wattanai Pongtham
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.

 */

#include "timer.h"
#include "stm32f7xx.h"

volatile uint32_t tim3_delay_cnt = 0;

void system_clock_initial(void)
{
		/* Turn ON HSE oscillator */
		RCC->CR |= (RCC_CR_HSEON);
		while(!(RCC->CR & RCC_CR_HSERDY_Msk)){}

		/* Enable Power interface clock */
		RCC->APB1ENR |= (RCC_APB1ENR_PWREN);

		/* Turn OFF PLL oscillator to config PLL*/
		RCC->CR &= ~(RCC_CR_PLLON);
		while((RCC->CR & (RCC_CR_PLLRDY_Msk))){}

		/* Select HSE as source for PLL */
		RCC->PLLCFGR |= (RCC_PLLCFGR_PLLSRC_HSE);

		/* Clear and set PLLM to 25 */
		RCC->PLLCFGR = (RCC->PLLCFGR & ~(RCC_PLLCFGR_PLLM_Msk)) | (PLLM_VAL << RCC_PLLCFGR_PLLM_Pos);

		/* Clear and set PLLN to 400 */
		RCC->PLLCFGR = (RCC->PLLCFGR & ~(RCC_PLLCFGR_PLLN_Msk)) | (PLLN_VAL << RCC_PLLCFGR_PLLN_Pos);

		/* Clear and set PLLP divide by 2 */
		RCC->PLLCFGR = (RCC->PLLCFGR & ~(RCC_PLLCFGR_PLLP_Msk));

		/* Clear and set PLLQ to 9 */
		RCC->PLLCFGR = (RCC->PLLCFGR & ~(RCC_PLLCFGR_PLLQ_Msk)) | (PLLQ_VAL << RCC_PLLCFGR_PLLQ_Pos);

		PWR->CR1 |= (3UL << 14);

		/* Turn ON PLL oscillator */
		RCC->CR |= (RCC_CR_PLLON);
		while((RCC->CR & (RCC_CR_PLLRDY_Msk)) == 0){}

		/* Enable over-drive */
		PWR->CR1 |= (1U << 16);
		while (!(PWR->CSR1 & (1U << 16))) {}

		/* Enable over-drive switching */
		PWR->CR1 |= (1U << 17);
		while (!(PWR->CSR1 & (1U << 17))) {}

		/* Set flash period to 6 wait state */
		FLASH->ACR = (FLASH_ACR_LATENCY_6WS | FLASH_ACR_PRFTEN);

		/* PPRE1 Divide by 4 */
		RCC->CFGR = (RCC->CFGR & ~(RCC_CFGR_PPRE1_Msk)) | (RCC_CFGR_PPRE1_DIV4);

		/* PPRE2 Divide by 2 */
		RCC->CFGR = (RCC->CFGR & ~(RCC_CFGR_PPRE2_Msk)) | (RCC_CFGR_PPRE2_DIV2);

		/* RTCPRE Divide by 2 */
		RCC->CFGR = (RCC->CFGR & ~(RCC_CFGR_RTCPRE_Msk)) | (25 << RCC_CFGR_RTCPRE_Pos);

		/* Config System Clock Switch as PLL */
		RCC->CFGR = (RCC->CFGR & ~(RCC_CFGR_SW_Msk)) | (RCC_CFGR_SW_PLL);
		while((RCC->CFGR & RCC_CFGR_SWS_PLL) == 0){}

}

void timer5_init()
{
	/* Enable TIM5 Clock */
	RCC->APB1ENR |= (RCC_APB1ENR_TIM5EN);

	/* Config TIM5 clock to 1MHz */
	TIM5->PSC = (TIM5_PCR_VAL - 1);

	/* Config Auto Reload with Maximum value */
	TIM5->ARR = TIM5_MAXIMUM_VAL;

	TIM5->EGR = TIM_EGR_UG;

	/* Start counting from zero*/
	TIM5->CNT = 0;

	/* Enable TIM5 Counter */
	TIM5->CR1 |= (TIM_CR1_CEN);
}
