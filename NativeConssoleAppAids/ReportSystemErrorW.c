//	============================================================================
//  ReportSystemErrorW.C: Make a report via the standard output stream when a
//                        Windows API call reports an exception.
//	============================================================================

#if !defined ( UNICODE )
	#define UNICODE
#endif	/* #if !defined ( UNICODE ) */

#if !defined ( _UNICODE )
	#define _UNICODE
#endif	/* #if !defined ( _UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


int LIBSPEC_NATIVECONSSOLEAPPAIDS_API ReportSystemErrorW
(
	CINT          pintFinalReturnCode ,
	RES_STRING_ID puintResStringId
)
{
	TCHAR   achrFormatMessageBuffer [ RCDATA_MAX_BUFFER_P6C ];

	LPTSTR  lpFmtMsgResStr = ( LPTSTR ) &achrFormatMessageBuffer;
	DWORD   dwLastError = GetLastError( );
	DWORD   dwResult = FormatMessage ( FORMAT_MESSAGE_FROM_SYSTEM |
		                               FORMAT_MESSAGE_IGNORE_INSERTS , 			// DWORD dwFlags,       // source and processing options
		                               NULL ,                    				// lpSource             // message source
		                               dwLastError ,							// MessageID,, usually from GetLastError
		                               MAKELANGID ( LANG_NEUTRAL ,
			                                        SUBLANG_DEFAULT ) ,			// language identifier
		                               lpFmtMsgResStr ,							// Pointer to message buffer
		                               RCDATA_MAX_BUFFER_P6C ,         			// DWORD nSize, maximum  size of buffer
		                               NULL );                         			// System messages contain no arguments.

	if ( dwResult )
	{
		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,
			                          puintResStringId ? puintResStringId : IDS_STRING103 ,
			                          FB_HIDE_LENGTH ) ,
		       	   dwLastError ,
			       dwLastError ,
			       lpFmtMsgResStr );
	}	// TRUE (anticipated outcome) block, if ( dwResult )
	else
	{
		dwResult = GetLastError( );
		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,
			                          IDS_STRING104 ,
			                          FB_HIDE_LENGTH ) ,
			       dwLastError ,
			       dwLastError ,
			       dwResult ,
			       dwResult );
	}	// FALSE (unanticipated outcome) block, if ( dwResult )

	return pintFinalReturnCode;
}	// ReportSystemErrorW