/**
 * ADC Type Definitions Header File
 *
 * @file adc_types.h
 *
 * @defgroup adc ADC
 *
 * @brief This header file provides the type definitions for the ADC module operation.
 *
 * @version ADC Driver Version 2.0.0
 *
 * @version ADC Module Version 2.0.0
*/

/*
© [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#ifndef ADC_TYPES_H
#define ADC_TYPES_H

/**
 @ingroup adc
 @brief ADC 8-bit resolution value.
*/
#define ADC_RESOLUTION_8BIT 8U

/**
 @ingroup adc
 @brief ADC 10-bit resolution value.
*/
#define ADC_RESOLUTION_10BIT 10U

/**
 @ingroup adc
 @brief ADC bit set value.
*/
#define ADC_BIT_SET 1U

/**
 @ingroup adc
 @brief ADC bit clear value.
*/
#define ADC_BIT_CLEAR 0U

/**
 * @ingroup adc
 * @typedef adc_result_t
 * @brief ADC conversion result type.
*/
typedef int16_t adc_result_t;

/**
 * @ingroup adc
 * @typedef adc_threshold_t
 * @brief ADC conversion threshold type.
*/
typedef int16_t adc_threshold_t;

/**
 * @ingroup adc
 * @typedef adc_accumulate_t
 * @brief ADC conversion accumulator type.
*/
typedef int32_t adc_accumulate_t;

/**
 * @ingroup adc
 * @typedef adc_computation_mode_t
 * @brief Enumeration for the ADC computation modes.
 */
typedef enum
{
    ADC_MODE_SINGLE_8BIT = 0x0, /**< Single 8-bit conv*/
    ADC_MODE_SINGLE_10BIT = 0x1, /**< Single 10-bit conv*/
    ADC_MODE_SERIES = 0x2, /**< Series of 10-bit conv*/
    ADC_MODE_BURST = 0x3, /**< Burst of 10-bit conv*/
    ADC_MODE_ACCTEST = 0x7 /**< Acc test mode for FuSa*/
} adc_computation_mode_t;

/**
 * @ingroup adc
 * @enum adc_channel_t
 * @brief Enumeration defining all available analog channels for the ADC conversion.
*/
typedef enum
{
    ADC0_CHANNEL_AIN0 = 0x0, /**< PD0*/
    ADC0_CHANNEL_AIN1 = 0x1, /**< PD1*/
    ADC0_CHANNEL_AIN2 = 0x2, /**< PD2*/
    ADC0_CHANNEL_AIN3 = 0x3, /**< PD3*/
    ADC0_CHANNEL_AIN4 = 0x4, /**< PD4*/
    ADC0_CHANNEL_AIN5 = 0x5, /**< PD5*/
    ADC0_CHANNEL_AIN6 = 0x6, /**< PD6*/
    ADC0_CHANNEL_AIN7 = 0x7, /**< PD7*/
    ADC0_CHANNEL_AIN16 = 0x10, /**< PF0*/
    ADC0_CHANNEL_AIN17 = 0x11, /**< PF1*/
    ADC0_CHANNEL_AIN22 = 0x16, /**< PA2*/
    ADC0_CHANNEL_AIN23 = 0x17, /**< PA3*/
    ADC0_CHANNEL_AIN24 = 0x18, /**< PA4*/
    ADC0_CHANNEL_AIN25 = 0x19, /**< PA5*/
    ADC0_CHANNEL_AIN26 = 0x1a, /**< PA6*/
    ADC0_CHANNEL_AIN27 = 0x1b, /**< PA7*/
    ADC0_CHANNEL_AIN31 = 0x1f, /**< PC3*/
    ADC0_CHANNEL_GND = 0x40, /**< Ground*/
    ADC0_CHANNEL_TEMPSENSE = 0x42, /**< Temperature sensor*/
    ADC0_CHANNEL_VDDDIV10 = 0x44, /**< VDD/10*/
    ADC0_CHANNEL_DACREF0 = 0x49, /**< AC0 DAC voltage*/
    ADC1_CHANNEL_GND = 0x40, /**< Ground*/
    ADC1_CHANNEL_TEMPSENSE = 0x42, /**< Temperature sensor*/
    ADC1_CHANNEL_VDDDIV10 = 0x44, /**< VDD/10*/
    ADC1_CHANNEL_DACREF0 = 0x49 /**< AC0 DAC voltage*/
} adc_channel_t;


/**
 * @ingroup adc
 * @typedef adc_threshold_mode_t 
 * @brief Enumeration for the ADC window comparator modes.
 */
typedef enum
{
    ADC_NEVER_INTERRUPT = 0x0, /**< No Window Comparison*/
    ADC_BELOW_LOWER_THRESHOLD = 0x1, /**< Below Window*/
    ADC_ABOVE_UPPER_THRESHOLD = 0x2, /**< Above Window*/
    ADC_INSIDE_LOWER_AND_UPPER_THRESHOLD = 0x3, /**< Inside Window*/
    ADC_OUTSIDE_LOWER_AND_UPPER_THRESHOLD = 0x4 /**< Outside Window*/
} adc_threshold_mode_t;

/**
 * @ingroup adc
 * @typedef adc_trigger_source_t 
 * @brief Enumeration for the ADC auto-trigger sources.
 */
typedef enum
{
    ADC_MUXPOS_WRITE = ADC_START_MUXPOS_WRITE_gc,
    ADC_EVENT_TRIGGER = ADC_START_EVENT_TRIGGER_gc
} adc_trigger_source_t;

/**
 * @ingroup adc
 * @typedef adc_repeat_count_t
 * @brief Enumeration for the ADC sample length values.
*/
typedef enum 
{
    ADC_NO_ACCUMULATION = 0x0, /**< No accumulation*/
    ADC_2_SAMPLES_ACCUMULATED = 0x1, /**< 2 results accumulated*/
    ADC_4_SAMPLES_ACCUMULATED = 0x2, /**< 4 results accumulated*/
    ADC_8_SAMPLES_ACCUMULATED = 0x3, /**< 8 results accumulated*/
    ADC_16_SAMPLES_ACCUMULATED = 0x4, /**< 16 results accumulated*/
    ADC_32_SAMPLES_ACCUMULATED = 0x5, /**< 32 results accumulated*/
    ADC_64_SAMPLES_ACCUMULATED = 0x6 /**< 64 results accumulated*/
} adc_repeat_count_t;


#endif // ADC_TYPES_H