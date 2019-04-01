//	============================================================================
//  ReportLoadStringErrorA.C: Make a report via the standard output stream when
//                            a resource string load fails.
//	============================================================================

#if defined ( UNICODE )
	#undef UNICODE
#endif	/* #if defined ( UNICODE ) */

#if defined ( _UNICODE )
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


TCHAR achrSprintFBuf [ RCDATA_MAX_BUFFER_P6C ];
TCHAR achrStringBuf  [ RCDATA_MAX_BUFFER_P6C ];

static TCHAR * lpSprintFBuf	= ( TCHAR * ) &achrSprintFBuf;
static TCHAR * lpStringBuf	= ( TCHAR * ) &achrStringBuf;


DWORD __stdcall ReportLoadStringError
(
	CHMODULE			phSourceModule ,
	RES_STRING_ID	    puintStringID ,
	CUINT				puintBufferID
)
{
	DWORD dwStatus = GetLastError ( ) ;

	if ( dwStatus )
	{
		if ( GetStringPointer ( m_hModuleOfThisDLL , 
			                    IDS_STRING111 ,
			                    FB_HIDE_LENGTH ) )
		{
			_stprintf_s ( lpSprintFBuf ,
				          RCDATA_MAX_BUFFER_P6C ,
				          lpStringBuf ,
				          puintStringID ) ;
			_tprintf ( FB_FormatMessage ( lpStringBuf ,
				                          dwStatus ,
				                          SCF2_HEXADECIMAL ) ) ;
		}   // if ( GetStringPointer ( m_hModuleOfThisDLL , IDS_STRING111 , FB_HIDE_LENGTH ) )
	}   // TRUE block, if ( dwStatus )
	else
	{	// Since Windows provided no error, we supply our own.
		dwStatus = FB_ERR_STRNG_NOT_FOUND_FOR_ID ;
		SetLastError ( dwStatus );
		_tprintf ( FB_FormatMessage2 ( IDS_STRING111 ,
  			                           dwStatus ,
				                       SCF2_HEXADECIMAL ) ) ;
	}   // FALSE block, if ( dwStatus )

	//	------------------------------------------------------------------------
	//	Raise a structured exception if the SEH flag is set. When this happens,
	//	there is no actual return, and the stack is unwound.
	//	------------------------------------------------------------------------

	return dwStatus ;	// Tell the calling routine to call GetLastError and/or FB_GetlpErrMsgSprintf (to get the message).
}	// ReportLoadStringErrorA