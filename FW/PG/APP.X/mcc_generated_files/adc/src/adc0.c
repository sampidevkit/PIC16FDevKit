/**
 * ADC0 Generated Driver File
 *
 * @file adc0.c
 *
 * @ingroup  adc0
 *
 * @brief This file contains the driver code for the ADC0 module.
 *
 * @version ADC0 Driver Version 2.0.0
 *
 * @version ADC0 Package Version 2.0.0
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

// Section: Included Files

#include "../adc0.h"
#include "../adc_types.h"

static void (*ADC0_ThresholdCallback)(void);
static void (*ADC0_ConversionDoneCallback)(void);
static void (*ADC0_ResultReadyCallback)(void);
static void (*ADC0_TriggerOverrunCallback)(void);
static void (*ADC0_SampleOverwriteCallback)(void);
static void (*ADC0_ResultOverwriteCallback)(void);

// Section: ADC Module APIs

void ADC0_Initialize(void)
{
    // Disable the ADC module
    ADC0.CTRLA &= ~ADC_ENABLE_bm;

    // Clear the Interrupt Control Register
    ADC0.INTCTRL &= ~(ADC_RESRDY_bm|ADC_WCMP_bm);

    // Clear the ADC interrupt flags
    ADC0.INTFLAGS &= ~(ADC_RESRDY_bm|ADC_WCMP_bm);

    // Initialize all other registers
    ADC0.CTRLB = (ADC_PRESC_DIV2_gc);               /* PRESC (CLK_PER divided by 2) */
    ADC0.CTRLC = (ADC_REFSEL_1V024_gc);             /* REFSEL (1.024V) */
    ADC0.CTRLD = (ADC_WINCM_NONE_gc)                /* WINCM (No Window Comparison) */
				|(1 << ADC_WINSRC_bp);              /* WINSRC (enabled) */
    ADC0.CTRLE = 0xFF;                              /* SAMPDUR (0xFF) */
    ADC0.CTRLF = (1 << ADC_FREERUN_bp)              /* FREERUN (enabled) */
				|(0 << ADC_LEFTADJ_bp)              /* LEFTADJ (disabled) */
				|(ADC_SAMPNUM_NONE_gc);             /* SAMPNUM (No accumulation) */
    ADC0.COMMAND = (ADC_MODE_SINGLE_10BIT_gc)         /* MODE (SINGLE_10BIT) */
				|(ADC_START_STOP_gc);               /* START (Stop/No ongoing conv) */
    ADC0.DBGCTRL = (0 << ADC_DBGRUN_bp);              /* DBGRUN (disabled) */
    ADC0.MUXPOS = (ADC_MUXPOS_AIN0_gc);              /* MUXPOS (AIN0) */
    ADC0.WINLT = 0x0;                               /* WINLT (0x0) */
    ADC0.WINHT = 0x0;                               /* WINHT (0x0) */
    
    // Configure Interrupt Handlers
    ADC0_ConversionDoneCallback = NULL;
    ADC0_ThresholdCallback = NULL;
    ADC0_ResultReadyCallback = NULL;
    ADC0_ResultOverwriteCallback = NULL;
    ADC0_SampleOverwriteCallback = NULL;
    ADC0_TriggerOverrunCallback = NULL;

    // Enable the ADC
    ADC0.CTRLA = (1 << ADC_ENABLE_bp)               /* ENABLE (enabled) */
				|(0 << ADC_LOWLAT_bp)               /* LOWLAT (disabled) */
				|(0 << ADC_RUNSTBY_bp);             /* RUNSTBY (disabled) */
}

void ADC0_Deinitialize(void)
{
    ADC0.CTRLA = 0x0;
    ADC0.CTRLB = 0x0;
    ADC0.CTRLC = 0x0;
    ADC0.CTRLD = 0x0;
    ADC0.CTRLE = 0x0;
    ADC0.CTRLF = 0x0;
    ADC0.COMMAND = 0x0;
    ADC0.DBGCTRL = 0x0;
    ADC0.MUXPOS = 0x0;
    ADC0.WINLT = 0x0;
    ADC0.WINHT = 0x0;
}

void ADC0_Enable(void)
{
    ADC0.CTRLA |= ADC_ENABLE_bm;
}

void ADC0_Disable(void)
{
    ADC0.CTRLA &= ~ADC_ENABLE_bm;
}

void ADC0_ChannelSelect(adc_channel_t channel)
{
    ADC0.MUXPOS = ((ADC0.MUXPOS & ~ADC_MUXPOS_gm) | (ADC_MUXPOS_gm & channel));
}

adc_result_t ADC0_ChannelSelectAndConvert(adc_channel_t channel)
{
    ADC0.MUXPOS = ((ADC0.MUXPOS & ~ADC_MUXPOS_gm) | (ADC_MUXPOS_gm & channel));
    ADC0.COMMAND = (ADC0.COMMAND & ~ADC_START_gm) | (ADC_START_gm & ADC_START_IMMEDIATE_gc);
    while(0U != (ADC0.STATUS & ADC_ADCBUSY_bm))
    {
        // Wait for conversion to finish
    }
    return (adc_result_t)(ADC0.SAMPLE);
}

void ADC0_ConversionStart(void)
{
    ADC0.COMMAND = (ADC0.COMMAND & ~ADC_START_gm) | (ADC_START_gm & ADC_START_IMMEDIATE_gc);
}

void ADC0_ConversionStop(void)
{
    ADC0.COMMAND = (ADC0.COMMAND & ~ADC_START_gm);
}

bool ADC0_IsConversionDone(void)
{
    return (bool)(!(ADC0.STATUS & ADC_ADCBUSY_bm));
}

adc_result_t ADC0_ConversionResultGet(void)
{
    return (adc_result_t)(ADC0.SAMPLE);
}

void ADC0_ComputationModeSet(adc_computation_mode_t computationMode)
{
    ADC0.COMMAND = (ADC0.COMMAND & ~ADC_MODE_gm) | ((computationMode << ADC_MODE_gp) & ADC_MODE_gm);
}

void ADC0_ThresholdModeSet(adc_threshold_mode_t thresholdMode)
{
    ADC0.CTRLD = (ADC0.CTRLD & ~ADC_WINCM_gm) | (thresholdMode & ADC_WINCM_gm);
}

void ADC0_UpperThresholdSet(adc_threshold_t upperThreshold)
{
    ADC0.WINHT = upperThreshold;
}

void ADC0_LowerThresholdSet(adc_threshold_t lowerThreshold)
{
    ADC0.WINLT = lowerThreshold;
}

void ADC0_SampleRepeatCountSet(adc_repeat_count_t repeatCount)
{
    ADC0.CTRLF = (ADC0.CTRLF & ~ADC_SAMPNUM_gm) | (ADC_SAMPNUM_gm & repeatCount);
}

adc_accumulate_t ADC0_AccumulatedResultGet(void)
{
    return (adc_accumulate_t)(ADC0.RESULT);
}

uint8_t ADC0_ResolutionGet(void)
{
    return (ADC0.COMMAND & ADC_MODE_SINGLE_8BIT_gc) ? ADC_RESOLUTION_8BIT : ADC_RESOLUTION_10BIT;
}

void ADC0_AutoTriggerEnable(void)
{
    ADC0.COMMAND = (ADC0.COMMAND & ~ADC_START_gm) | (ADC_START_gm & ADC_START_EVENT_TRIGGER_gc);
}

void ADC0_AutoTriggerDisable(void)
{
   ADC0.COMMAND &= ~ADC_START_EVENT_TRIGGER_gc;
}

void ADC0_AutoTriggerSourceSet(adc_trigger_source_t triggerSource)
{
   ADC0.COMMAND = ((ADC0.COMMAND & ~ADC_START_gm) | (ADC_START_gm & triggerSource));
}

void ADC0_ContinuousConversionEnable(void)
{
    ADC0.CTRLF |= ADC_FREERUN_bm;
}

void ADC0_ContinuousConversionDisable(void)
{
    ADC0.CTRLF &= ~ADC_FREERUN_bm;
}

void ADC0_Tasks(void)
{
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_RESRDY_bm))
    {
        ADC0.INTFLAGS = ADC_RESRDY_bm;
        
        if (NULL != ADC0_ResultReadyCallback)
        {
            ADC0_ResultReadyCallback();
        }
        else
        {
            // do nothing
        }
    }
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_SAMPRDY_bm))
    {
        ADC0.INTFLAGS = ADC_SAMPRDY_bm;

        if (NULL != ADC0_ConversionDoneCallback)
        {
            ADC0_ConversionDoneCallback();
        }
        else
        {
            // do nothing
        }
    }
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_WCMP_bm))
    {
        ADC0.INTFLAGS = ADC_WCMP_bm;
        
        if (NULL != ADC0_ThresholdCallback)
        {
            ADC0_ThresholdCallback();
        }
        else
        {
            // do nothing
        }
    }
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_RESOVR_bm))
    {
        ADC0.INTFLAGS = ADC_RESOVR_bm;
        
        if (NULL != ADC0_ResultOverwriteCallback)
        {
            ADC0_ResultOverwriteCallback();
        }
        else
        {
            // do nothing
        }
    }
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_SAMPOVR_bm))
    {
        ADC0.INTFLAGS = ADC_SAMPOVR_bm;
        
        if (NULL != ADC0_SampleOverwriteCallback)
        {
            ADC0_SampleOverwriteCallback();
        }
        else
        {
            // do nothing
        }
    }
    if (ADC_BIT_CLEAR != (ADC0.INTFLAGS & ADC_TRIGOVR_bm))
    {
        ADC0.INTFLAGS = ADC_TRIGOVR_bm;
        
        if (NULL != ADC0_TriggerOverrunCallback)
        {
            ADC0_TriggerOverrunCallback();
        }
        else
        {
            // do nothing
        }
    }
    else
    {
        // do nothing
    }
}

void ADC0_ResultReadyCallbackRegister(void (*callback)(void))
{
    ADC0_ResultReadyCallback = callback;
}

void ADC0_ConversionDoneCallbackRegister(void (*callback)(void))
{
    ADC0_ConversionDoneCallback = callback;
}

void ADC0_ThresholdCallbackRegister(void (*callback)(void))
{
    ADC0_ThresholdCallback = callback;
}

void ADC0_ResultOverwriteCallbackRegister(void (*callback)(void))
{
    ADC0_ResultOverwriteCallback = callback;
}

void ADC0_SampleOverwriteCallbackRegister(void (*callback)(void))
{
    ADC0_SampleOverwriteCallback = callback;
}

void ADC0_TriggerOverrunCallbackRegister(void (*callback)(void))
{
    ADC0_TriggerOverrunCallback = callback;
}

bool ADC0_IsResultReadyInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_RESRDY_bm);
}

bool ADC0_IsConversionDoneInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_SAMPRDY_bm);
}

bool ADC0_IsThresholdInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_WCMP_bm);
}

bool ADC0_IsResultOverwriteInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_RESOVR_bm);
}

bool ADC0_IsSampleOverwriteInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_SAMPOVR_bm);
}

bool ADC0_IsTriggerOverrunInterruptFlagSet(void)
{
    return (bool)(ADC0.INTFLAGS & ADC_TRIGOVR_bm);
}

void ADC0_ResultReadyInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_RESRDY_bm;
}

void ADC0_ConversionDoneInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_SAMPRDY_bm;
}

void ADC0_ThresholdInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_WCMP_bm;
}

void ADC0_ResultOverwriteInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_RESOVR_bm;
}

void ADC0_SampleOverwriteInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_SAMPOVR_bm;
}

void ADC0_TriggerOverrunInterruptFlagClear(void)
{
    ADC0.INTFLAGS = ADC_TRIGOVR_bm;
}