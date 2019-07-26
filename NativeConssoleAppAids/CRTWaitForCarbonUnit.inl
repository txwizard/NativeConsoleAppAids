/*
    ============================================================================

    File Name:			WaitForCarbonUnit.inl

    Header:				The declaration of this function finally has a place to
						call home, NativeConssoleAppAids.h.

    File Synopsis:		This file defines the implementation of function 
						WaitForCarbonUnitA (ANSI) and WaitForCarbonUnitW (wide
						character, or Unicode), which is identical apart from
						the character encoding.

    Function Synopsis:	WaitForCarbonUnitA provides a portable mechanism to
						cause a program that is about to end to block until a
						carbon unit arrives to acknowledge its final message.

    Remarks:			This is the ANSI (narrow character) implemntation of a
						generic routine named WaitForCarbonUnit.

    Author:				David A. Gray, MBA

    ----------------------------------------------------------------------------
    Revision History
    ----------------------------------------------------------------------------

    Date       By  Synopsis
    ---------- --- -------------------------------------------------------------
    2018/06/24 DAG Function created and tested to meet an immediate need.
	2019/03/22 DAG Document that this routine at last has a home, move its
	               common implementation code into this inline include file, and
				   provide a wide character implementation for use by the second
				   application to incorporate it.
    ============================================================================
*/

	WCU_INT_T	intConsoleInput = WFCU_CONSOLE_NULL;

	if ( plpCRTWaitForCarbonUnit->intReturnCode )
	{
		_ftprintf ( stderr ,
			        WFCU_NONZERO_STATUS_CODE_MSG ,
				    plpCRTWaitForCarbonUnit->intReturnCode ,
				    plpCRTWaitForCarbonUnit->intReturnCode );
	}	// if ( plpCRTWaitForCarbonUnit->intReturnCode )

	if ( Beep ( plpCRTWaitForCarbonUnit->dwFreqquency
					? plpCRTWaitForCarbonUnit->dwFreqquency
					: WFCU_BELL_DFLT_FREQUENCY ,
				plpCRTWaitForCarbonUnit->dwDuration
					? plpCRTWaitForCarbonUnit->dwDuration
					: WFCU_BELL_DFLT_DURATION ) )
	{
		_ftprintf ( stderr ,
				    plpCRTWaitForCarbonUnit->lpszMessage
						? plpCRTWaitForCarbonUnit->lpszMessage
						: WFCU_DEFAULT_PROMPT );
	}	// if ( Beep ( plpCRTWaitForCarbonUnit->dwFreqquency ? plpCRTWaitForCarbonUnit->dwFreqquency : WFCU_BELL_DFLT_FREQUENCY , plpCRTWaitForCarbonUnit->dwDuration ? plpCRTWaitForCarbonUnit->dwDuration : WFCU_BELL_DFLT_DURATION ) )

	WFCU_WaitForCR( intConsoleInput );

	return plpCRTWaitForCarbonUnit->intReturnCode;
