/*
 * File: timer.h
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

#ifndef CORE_INC_TIMER_H_
#define CORE_INC_TIMER_H_

#include <stdint.h>
#include "stm32f7xx.h"

#define PLLM_VAL	25UL
#define PLLN_VAL	400UL
#define PLLQ_VAL	9UL

#define TIM5_PCR_VAL 100UL
#define TIM5_MAXIMUM_VAL 0xFFFFFFFF

void system_clock_initial(void);
void timer5_init(void);

extern volatile uint32_t tim3_delay_cnt;
extern uint32_t start;

static inline void delay_micros(uint32_t delay)
{
	start = TIM5->CNT;
	while ((uint32_t)(TIM5->CNT - start) < delay) {}
}

static inline void delay_millis(uint32_t delay)
{
	delay = delay *1000;
	uint32_t start = TIM5->CNT;
	while ((uint32_t)(TIM5->CNT - start) < delay) {}
}
#endif /* CORE_INC_TIMER_H_ */
