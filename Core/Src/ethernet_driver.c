/*
 * File: ethernet_driver.c
 * Project: STM32F746NG_ETHERNET_DRIVER
 * Author: Wattanai Pongtham
 * Created on: Dec 22, 2025
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
#include "stddef.h"
#include "stm32f7xx.h"
#include "timer.h"
#include "ethernet_driver.h"

StatusTypeDef dev_lock(ETH_HandleTypeDef *heth)
{
	if(heth->Lock == LOCKED)
	{
		return BUSY;
	}
	else
	{
		heth->Lock = LOCKED;
		return OK;
	}
}

StatusTypeDef dev_unlock(ETH_HandleTypeDef *heth)
{
	heth->Lock = UNLOCKED;
	return OK;
}

void ethernet_gpio_init()
{
	/*
	ETH_RMII_REF_CLK		| PA1
	ETH_MDIO						| PA2
	ETH_RMII_CRS_DV			| PA7
	ETH_MDC							| PC1
	ETH_RMII_RXD0				| PC4
	ETH_RMII_RXD1				| PC5
	ETH_RMII_TX_EN			| PG11
	ETH_RMII_TXD0				| PG13
	ETH_RMII_TXD1				| PG14
	*/

	/* Enable clock access to Ethernet module */
	RCC->AHB1ENR |= RCC_AHB1ENR_ETHMACEN;

	/* Enable clock access to Ethernet MACTX */
	RCC->AHB1ENR |= RCC_AHB1ENR_ETHMACTXEN;

	/* Enable clock access to Ethernet MACRX */
	RCC->AHB1ENR |= RCC_AHB1ENR_ETHMACRXEN;

	/* Enable Clock Access to PORT A,C and G */
	RCC->APB1ENR |= (RCC_AHB1ENR_GPIOAEN);
	RCC->APB1ENR |= (RCC_AHB1ENR_GPIOCEN);
	RCC->APB1ENR |= (RCC_AHB1ENR_GPIOGEN);

	/* Set pins to alternate function mode */
	/* SET PA1, PA2 and PA7 to Alternate Function Mode*/
	GPIOA->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER1_Pos);
	GPIOA->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER2_Pos);
	GPIOA->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER7_Pos);

	/* Set pins to alternate function mode */
	/* SET PC1, PC4 and PC5 to Alternate Function Mode*/
	GPIOC->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER1_Pos);
	GPIOC->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER4_Pos);
	GPIOC->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER5_Pos);

	/* Set pins to alternate function mode */
	/* SET PG11, PG13 and PG14 to Alternate Function Mode*/
	GPIOG->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER11_Pos);
	GPIOG->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER13_Pos);
	GPIOG->MODER |= (GPIO_MODER_ALTERNATE << GPIO_MODER_MODER14_Pos);

	/* Set Alternate Function Type to Ethernet*/
	/*Set PA1, PA2 and PA7 to Alternate Type Ethernet*/
	GPIOA->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL1_Pos);
	GPIOA->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL2_Pos);
	GPIOA->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL7_Pos);

	/*Set PC1, PC4 and PC5 to Alternate Type Ethernet*/
	GPIOC->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL1_Pos);
	GPIOC->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL4_Pos);
	GPIOC->AFR[0] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRL_AFRL5_Pos);

	/*Set PG11, PG13 and PG14 to Alternate Type Ethernet*/
	GPIOG->AFR[1] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRH_AFRH3_Pos);
	GPIOG->AFR[1] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRH_AFRH5_Pos);
	GPIOG->AFR[1] |= (ALTERNATE_FUNCTION_11 << GPIO_AFRH_AFRH6_Pos);

}

StatusTypeDef write_phy_reg(ETH_HandleTypeDef *heth, uint16_t PHYReg, uint32_t RegVal)
{
	uint32_t tmpreg    = 0;
	uint32_t tickstart = 0;

	if(heth->State == DEV_STATE_BUSY_WR)
	{
		return BUSY;
	}

	heth->State = DEV_STATE_BUSY_WR;

	/*Get the MACMIIAR Register Value */
	tmpreg = ETH->MACMIIAR;

	/* Keep Clock Range Value*/
	tmpreg &= ~(ETH_MACMIIAR_MASK);

	/* Set PHY Device address */
	tmpreg |= (uint32_t)((heth->Init.PhyAddress << 11) & ETH_MACMIIAR_PA);

	/* Set PHY Register Address */
	tmpreg |= (uint32_t)((PHYReg << 6) & ETH_MACMIIAR_MR);

	/*Set the Write Mode*/
	tmpreg |= ETH_MACMIIAR_MW;

	/*Set MMI Busy Bit*/
	tmpreg |= ETH_MACMIIAR_MB;

	/*Put Value into MMI Data Register*/
	ETH->MACMIIDR = (uint16_t)RegVal;

	/*Write Configuration intO MIIAR Register*/
	ETH->MACMIIAR  = tmpreg;

	/*Get Start Time */
	tickstart = TIM5->CNT;

	/* Check Busy Flag */
	while((tmpreg & ETH_MACMIIAR_MB) == ETH_MACMIIAR_MB)
	{
		if((TIM5->CNT - tickstart) > PHY_WRITE_TO)
		{
			heth->State =  DEV_STATE_READY;

			dev_unlock(heth);

			return TIMEOUT;
		}

		tmpreg =  ETH->MACMIIAR;
	}

	heth->State =  DEV_STATE_READY;

	return OK;

}

StatusTypeDef read_phy_reg(ETH_HandleTypeDef * heth, uint16_t PHYReg, uint32_t *RegVal)
{
	uint32_t tmpreg    = 0;
	uint32_t tickstart = 0;

	if(  DEV_STATE_BUSY_RD  == heth->State)
	{
		return BUSY;
	}

	heth->State = DEV_STATE_BUSY_RD;

	/* Get the MACMIIAR Register Value */
	tmpreg  = ETH->MACMIIAR;

	/* Keep Clock Range Value */
	tmpreg &= ~ETH_MACMIIAR_MASK;

	/* Set PHY Device Address */
	tmpreg |= ((uint32_t)((heth->Init.PhyAddress << 11) & ETH_MACMIIAR_PA));

	/* Set PHY Register Address */
	tmpreg |= (((uint32_t)PHYReg << 6) & ETH_MACMIIAR_MR);

	/* Set Write Mode */
    tmpreg &= ~ETH_MACMIIAR_MW;

	/* Set MMI Busy Bit */
	tmpreg |= ETH_MACMIIAR_MB;

	/* Write Configuration intO MIIAR Register */
	ETH->MACMIIAR  = tmpreg;

	/* Get Tick */
	tickstart = TIM5->CNT;

	/* Check Busy Flag */
	while((tmpreg & ETH_MACMIIAR_MB) ==  ETH_MACMIIAR_MB)
	{
		/* Check for Timeout */
			if((TIM5->CNT -  tickstart) > PHY_READ_TO)
			{
				heth->State =  DEV_STATE_READY;

				dev_unlock(heth);

				return TIMEOUT;
			}

			tmpreg =  ETH->MACMIIAR;

	}

	/* Get MACMIIDR Value */
	*RegVal = (uint16_t) ETH->MACMIIDR;

	heth->State =  DEV_STATE_READY;

	return OK;
}

StatusTypeDef config_mac(ETH_HandleTypeDef *heth, ETH_MACInitTypeDef *macconf)
{
	uint32_t tmpreg = 0;

	dev_lock(heth);

	heth->State =  DEV_STATE_BUSY;

	if(macconf  != NULL)
	{
		/* Configure ETH MACCR Register */
		/* Get MACCR Value */
		tmpreg =  ETH->MACCR;

		/* Clear Relevant Bits */
		tmpreg &= ETH_MACCR_CLEAR_MASK;

		tmpreg |= (uint32_t)(macconf->Watchdog|
							 macconf->Jabber|
							 macconf->InterFrameGap|
							 macconf->CarrierSense|
							 (heth->Init).Speed|
							 macconf->ReceiveOwn|
							 (heth->Init).DuplexMode|
							 macconf->ChecksumOffload|
							 macconf->BackOffLimit|
							 macconf->DeferralCheck);

		/* Write Configuration Values into MACCR */
		ETH->MACCR = (uint32_t)tmpreg;

		/*Wait to Make Sure Write Operation is Effective */
		tmpreg = ETH->MACCR;
		delay_millis(ETH_REG_WRITE_DELAY);
		ETH->MACCR = tmpreg ;

		/* Configure ETH MACFFR Register */
		ETH->MACFFR = (uint32_t)(macconf->ReceiveAll|
								 macconf->PassControlFrames|
								 macconf->BroadcastFramesReception|
								 macconf->DestinationAddrFilter|
								 macconf->MulticastFramesFilter|
								 macconf->UnicastFramesFilter);

		/*Wait to Make Sure Write Operation is Effective */
		tmpreg = ETH->MACFFR;
		delay_millis(ETH_REG_WRITE_DELAY);
		ETH->MACFFR = tmpreg ;

		/* Configure ETH MACHTHR Register */
		ETH->MACHTHR =  (uint32_t)macconf->HashTableHigh;

		/* Configure ETH MACHTLR Register */
		ETH->MACHTLR =  (uint32_t)macconf->HashTableLow;

		/* Configure ETH MACFCR Register */
		tmpreg =  ETH->MACFCR;

		/* Clear Relevant Bits */
		tmpreg &= ETH_MACFCR_CLEAR_MASK;

		tmpreg |= (uint32_t)((macconf->PauseTime << 16)|
							 macconf->ZeroQuantaPause|
							 macconf->PauseLowThreshold|
							 macconf->UnicastPauseFrameDetect|
							 macconf->ReceiveFlowControl);

		/* Write Configuration Values into MACFCR Register */
		ETH->MACFCR = (uint32_t)tmpreg;

		/* Wait to Make Sure Write Operation is Effective */
		tmpreg = ETH->MACFCR;
		delay_millis(ETH_REG_WRITE_DELAY);
		ETH->MACFCR = tmpreg ;

		/* Configure ETH MACVLANTR Register */
		ETH->MACVLANTR = (uint32_t) (macconf->VLANTagComparison |
									 macconf->VLANTagIdentifier);

		/* Wait to Make Sure Write Operation is Effective */
		tmpreg = ETH->MACVLANTR;
		delay_millis(ETH_REG_WRITE_DELAY);
		ETH->MACVLANTR = tmpreg ;

	}
	else
	{
		/* Get MACCR Value */
		 tmpreg =  ETH->MACCR;

		 /* Clear Speed Bit and Duplex Bit */
		 tmpreg &= ((uint32_t)0x00004800);

		 tmpreg |= (uint32_t)(heth->Init.Speed | heth->Init.DuplexMode);

		 /* Wait to Make Sure Write Operation is Effective */
		 tmpreg = ETH->MACCR;
		 delay_millis(ETH_REG_WRITE_DELAY);
		 ETH->MACCR = tmpreg ;
	}

	heth->State = DEV_STATE_READY;
	dev_unlock(heth);

	return OK;

}
