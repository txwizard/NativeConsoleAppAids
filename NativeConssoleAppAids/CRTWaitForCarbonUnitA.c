/*
	============================================================================

	File Name:			WaitForCarbounUnitA.C

	Header:				The declaration of this function finally has a place to
						call home, NativeConssoleAppAids.h.

	File Synopsis:		This file defines the implementation of function
						WaitForCarbounUnitA (ANSI) and WaitForCarbounUnitW (wide
						character, or Unicode), which is identical apart from
						the character encoding.

	Function Synopsis:	WaitForCarbounUnitA provides a portable mechanism to
						cause a program that is about to end to block until a
						carbon unit arrives to acknowledge its final message.

	Remarks:			This is the ANSI (narrow character) implemntation of a
						generic routine named WaitForCarbounUnit.

	Author:				David A. Gray, MBA

	----------------------------------------------------------------------------
	Revision History
	----------------------------------------------------------------------------

	Date       By  Synopsis
	---------- --- -------------------------------------------------------------
	2018/06/24 DAG Function created and tested to meet an immediate need.
	2019/03/22 DAG Document that this routine at last has a home, and move its
				   common implementation code into this inline include file.
	============================================================================
*/


#if defined ( UNICODE )
	#undef UNICODE
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#define CRTTIME_UNIT_TESTS_HELPERS

#include ".\NativeConssoleAppAids_Pvt.h"

int     LIBSPEC_NATIVECONSSOLEAPPAIDS_API WaitForCarbounUnitA
(
	const LPCRTWaitForCarbonUnit plpCRTWaitForCarbonUnit
)
{
	#include ".\CRTWaitForCarbonUnit.inl"
}	// WaitForCarbounUnitA