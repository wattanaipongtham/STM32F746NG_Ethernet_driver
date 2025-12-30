/*
 * File: ethernet_driver.h
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

#ifndef CORE_INC_ETHERNET_DRIVER_H_
#define CORE_INC_ETHERNET_DRIVER_H_

#define GPIO_MODER_ALTERNATE	0x2UL
#define ALTERNATE_FUNCTION_11	0xBUL

#define LAN8742A_PHY_ADDRESS           0

/* PHY Reset delay these values are based on a 1 ms Systick interrupt*/
#define PHY_RESET_DELAY                 ((uint32_t)0x000000FFU)

/* PHY Configuration delay */
#define PHY_CONFIG_DELAY                ((uint32_t)0x00000FFFU)

#define PHY_READ_TO                     ((uint32_t)0x0000FFFFU)

#define PHY_WRITE_TO                    ((uint32_t)0x0000FFFFU)


#define PHY_BCR                         ((uint16_t)0x00U)    /*!< Transceiver Basic Control Register   */
#define PHY_BSR                         ((uint16_t)0x01U)    /*!< Transceiver Basic Status Register    */

#define PHY_RESET                       ((uint16_t)0x8000U)  /*!< (1U <<15) PHY Reset */
#define PHY_LOOPBACK                    ((uint16_t)0x4000U)  /*!< (1U<< 14) Select loop-back mode */
#define PHY_FULLDUPLEX_100M             ((uint16_t)0x2100U)  /*!< (1U<< 13) | (1U<<8)Set the full-duplex mode at 100 Mb/s */
#define PHY_HALFDUPLEX_100M             ((uint16_t)0x2000U)  /*!< (1U<< 13)  Set the half-duplex mode at 100 Mb/s */

#define PHY_FULLDUPLEX_10M              ((uint16_t)0x0100U)  /*!< (1U<<8) Set the full-duplex mode at 10 Mb/s  */

#define PHY_HALFDUPLEX_10M              ((uint16_t)0x0000U)  /*!< Set the half-duplex mode at 10 Mb/s  */
#define PHY_AUTONEGOTIATION             ((uint16_t)0x1000U)  /*!< Enable auto-negotiation function     */
#define PHY_RESTART_AUTONEGOTIATION     ((uint16_t)0x0200U)  /*!< Restart auto-negotiation function    */
#define PHY_POWERDOWN                   ((uint16_t)0x0800U)  /*!< Select the power down mode           */
#define PHY_ISOLATE                     ((uint16_t)0x0400U)  /*!< Isolate PHY from MII                 */

#define PHY_AUTONEGO_COMPLETE           ((uint16_t)0x0020U)  /*!< Auto-Negotiation process completed   */
#define PHY_LINKED_STATUS               ((uint16_t)0x0004U)  /*!< Valid link established               */

#define PHY_JABBER_DETECTION            ((uint16_t)0x0002U)  /*!< Jabber condition detected            */


/*Extend PHY Registers*/
#define PHY_SR                          ((uint16_t)0x10U)    /*!< PHY status register Offset                  */
#define PHY_ISFR                        ((uint16_t)0x001DU)  /*!< PHY Interrupt Source Flag register Offset   */

#define PHY_ISFR_INT4                   ((uint16_t)0x000BU)  /*!< PHY Link down inturrupt       */

#define PHY_SPEED_STATUS                ((uint16_t)0x0002U)  /*!< PHY Speed mask                              */
#define PHY_DUPLEX_STATUS               ((uint16_t)0x0004U)  /*!< PHY Duplex mask                             */

#define ETH_MACMIIAR_MASK    						((uint32_t)0xFFFFFFE3U)
#define ETH_MACCR_CLEAR_MASK    				((uint32_t)0xFF20810FU)
#define ETH_MACFCR_CLEAR_MASK   				((uint32_t)0x0000FF41U)
#define ETH_REG_WRITE_DELAY							1

typedef enum
{
	OK       = 0x00U,
	ERR      = 0x01U,
	BUSY     = 0x02U,
	TIMEOUT  = 0x03U
}StatusTypeDef;

typedef enum
{
	UNLOCKED   = 0x00U,
	LOCKED	   = 0x01U
}LockTypeDef;


typedef enum
{
  DEV_STATE_RESET             = 0x00U,    /* Peripheral not yet Initialized or disabled         */
  DEV_STATE_READY             = 0x01U,    /* Peripheral Initialized and ready for use           */
  DEV_STATE_BUSY              = 0x02U,    /* an internal process is ongoing                     */
  DEV_STATE_BUSY_TX           = 0x12U,    /* Data Transmission process is ongoing               */
  HAL_ETH_STATE_BUSY_RX       = 0x22U,    /* Data Reception process is ongoing                  */
  HAL_ETH_STATE_BUSY_TX_RX    = 0x32U,    /* Data Transmission and Reception process is ongoing */
  DEV_STATE_BUSY_WR           = 0x42U,    /* Write process is ongoing                           */
  DEV_STATE_BUSY_RD           = 0x82U,    /* Read process is ongoing                            */
  DEV_STATE_TIMEOUT           = 0x03U,    /* Timeout state                                      */
  HAL_ETH_STATE_ERROR         = 0x04U     /* Reception process is ongoing                       */
}ETH_StateTypeDef;


typedef struct
{
	  uint32_t			   AutoNegiotion;
	  uint32_t             Speed;
	  uint32_t             DuplexMode;
	  uint16_t             PhyAddress;
	  uint8_t             *MACAddr;
	  uint32_t             RxMode;
	  uint32_t             ChecksumMode;
	  uint32_t             MediaInterface;

}ETH_InitTypeDef;


typedef struct
{
	  uint32_t             Watchdog;
	  uint32_t             Jabber;
	  uint32_t             InterFrameGap;
	  uint32_t             CarrierSense;
	  uint32_t             ReceiveOwn;
	  uint32_t             ChecksumOffload;
	  uint32_t             BackOffLimit;
	  uint32_t             DeferralCheck;
	  uint32_t             ReceiveAll;
	  uint32_t             PassControlFrames;
	  uint32_t             BroadcastFramesReception;
	  uint32_t             DestinationAddrFilter;
	  uint32_t             MulticastFramesFilter;
	  uint32_t             UnicastFramesFilter;
	  uint32_t             HashTableHigh;
	  uint32_t             HashTableLow;
	  uint32_t             PauseTime;
	  uint32_t             ZeroQuantaPause;
	  uint32_t             PauseLowThreshold;
	  uint32_t             UnicastPauseFrameDetect;
	  uint32_t             ReceiveFlowControl;
	  uint32_t             VLANTagComparison;
	  uint32_t             VLANTagIdentifier;

} ETH_MACInitTypeDef;

typedef struct
{
	  uint32_t             DropTCPIPChecksumErrorFrame;
	  uint32_t             ReceiveStoreForward;
	  uint32_t             FlushReceivedFrame;
	  uint32_t             TransmitStoreForward;
	  uint32_t             TransmitThresholdControl;
	  uint32_t             ForwardErrorFrames;
	  uint32_t             ForwardUndersizedGoodFrames;
	  uint32_t             ReceiveThresholdControl;
	  uint32_t             SecondFrameOperate;
	  uint32_t             AddressAlignedBeats;
	  uint32_t             FixedBurst;
	  uint32_t             RxDMABurstLength;
	  uint32_t             TxDMABurstLength;
	  uint32_t             EnhancedDescriptorFormat;
	  uint32_t             DescriptorSkipLength;
	  uint32_t             DMAArbitration;
} ETH_DMAInitTypeDef;


typedef struct
{
  __IO uint32_t   Status;           /* Status */
  uint32_t   ControlBufferSize;     /* Control and Buffer1, Buffer2 lengths */
  uint32_t   Buffer1Addr;           /* Buffer1 address pointer */
  uint32_t   Buffer2NextDescAddr;   /* Buffer2 or next descriptor address pointer */
  uint32_t   ExtendedStatus;        /* Extended status for PTP receive descriptor */
  uint32_t   Reserved1;             /* Reserved */
  uint32_t   TimeStampLow;          /* Time Stamp Low value for transmit and receive */
  uint32_t   TimeStampHigh;         /* Time Stamp High value for transmit and receive */

} ETH_DMADescTypeDef;


typedef struct
{
  ETH_DMADescTypeDef *FSRxDesc;
  ETH_DMADescTypeDef *LSRxDesc;
  uint32_t  SegCount;
  uint32_t length;
  uint32_t buffer;
} ETH_DMARxFrameInfos;


typedef struct
{

  ETH_InitTypeDef            Init;
  uint32_t                   LinkStatus;
  ETH_DMADescTypeDef         *RxDesc;
  ETH_DMADescTypeDef         *TxDesc;
  ETH_DMARxFrameInfos        RxFrameInfos;
  __IO ETH_StateTypeDef      State;
  LockTypeDef                Lock;
} ETH_HandleTypeDef;

#endif /* CORE_INC_ETHERNET_DRIVER_H_ */
