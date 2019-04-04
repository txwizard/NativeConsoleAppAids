//	============================================================================
//  FB_FormatMessageA.c: Get a pointer to a null terminated string that contains
//                       the translation of a system status code to text for use
//                       by carbon units.
//	============================================================================

#if defined ( UNICODE )
	#undef UNICODE
#endif	/* #if defined ( UNICODE ) */

#if defined ( _UNICODE )
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"

#define SFM_ERR_FORMAT_MESSAGE      8
#define SFM_ERR_NO_NINT             4
#define SFM_ERR_FORMAT_UNKNOWN      3

static LPCTSTR szFixedMsgs [ ] =
{
	_T( "%s\nError code = 0x%08x - %s\n" ) ,
	_T( "%s\nError code = %d - %s\n" ) ,
	_T( "%s\nError code = o%o - %s\n" ) ,
	_T( "%s\nError code = 0x%08x - %s\n" ) ,
	_T( "Error code = 0x%08x - %s\n" ) ,
	_T( "Error code = %d - %s\n" ) ,
	_T( "Error code = o%o - %s\n" ) ,
	_T( "Error code = 0x%08x - %s\n" ) ,
	_T( "%s\nError code = 0x%08x\nWindows API function FormatMessage failed,\n     returning error code 0x%08x\n" ) ,
	_T( "%s\nError code = %d\nWindows API function FormatMessage failed,\n     returning error code %d\n" ) ,
	_T( "%s\nError code = o%o\nWindows API function FormatMessage failed,\n     returning error code o%o\n" ) ,
	_T( "%s\nError code = 0x%08x\nWindows API function FormatMessage failed,\n     returning error code 0x%08x\n" ) ,
	_T( "Error code = 0x%08x\nWindows API function FormatMessage failed,\n     returning error code 0x%08x\n" ) ,
	_T( "Error code = %d\nWindows API function FormatMessage failed,\n     returning error code %d\n" ) ,
	_T( "Error code = o%o\nWindows API function FormatMessage failed,\n     returning error code o%o\n" ) ,
	_T( "Error code = 0x%08x\nWindows API function FormatMessage failed,\n     returning error code 0x%08x\n" ) ,
};	// static LPCTSTR szFixedMsgs

// ToDo: Investigate linkage editor warnint:   LINK : warning C4742: 'achrStringBuf' has different alignment in 'f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\fb_formatmessagew.c'  and 'f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\fb_formatmessagea.c': 2 and 1.
// ToDo: Ditto for achrSprintFBuf.

TCHAR achrSprintFBuf [ RCDATA_MAX_BUFFER_P6C ];
TCHAR achrStringBuf  [ RCDATA_MAX_BUFFER_P6C ];

static TCHAR * lpSprintFBuf	= ( TCHAR * ) &achrSprintFBuf;
static TCHAR * lpStringBuf	= ( TCHAR * ) &achrStringBuf;


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API FB_FormatMessageA
(
	LPCTSTR              plpHint ,
	CDWORD               pdwLastError ,
	CSTATUS_CODE_FORMAT2 penmCodeFormat
)
{
	DWORD       rdwLastError	= FB_ProcessStatusCode ( pdwLastError );
	int         intLineEndPos	= STRLEN_EMPTY_P6C;
	DWORD       dwResult		= ERROR_SUCCESS;
	DWORD       dwFixedMessage	= ARRAY_FIRST_ELEMENT_P6C;
	LPVOID      lpPosMsgTail	= NULL;

	dwResult = FormatMessage ( FORMAT_MESSAGE_FROM_SYSTEM |
		                       FORMAT_MESSAGE_IGNORE_INSERTS ,					// DWORD dwFlags,       // source and processing options
		                       NULL ,											// lpSource             // message source
		                       rdwLastError ,									// MessageID,, usually from GetLastError
		                       MAKELANGID ( LANG_NEUTRAL ,
			                                SUBLANG_DEFAULT ) ,					// language identifier
			                   ( LPTSTR ) lpStringBuf ,							// Pointer to message buffer
		                       RCDATA_MAX_BUFFER_P6C ,							// DWORD nSize, maximum  size of buffer
		                       NULL );											// System messages contain no arguments.

	if ( dwResult )
	{
		if ( penmCodeFormat == FB_SCF2_HEXADECIMAL || penmCodeFormat == FB_SCF2_DECIMAL || penmCodeFormat == FB_SCF2_OCTAL )
			dwFixedMessage += penmCodeFormat;
		else
			dwFixedMessage += SFM_ERR_FORMAT_UNKNOWN;

		Unless ( plpHint )
			dwFixedMessage += SFM_ERR_NO_NINT;

		Unless ( dwResult )
			dwFixedMessage += SFM_ERR_FORMAT_MESSAGE;

		intLineEndPos = _stprintf_s ( lpSprintFBuf ,
			                          RCDATA_MAX_BUFFER_P6C ,
			                          szFixedMsgs [ dwFixedMessage ] ,
			                          plpHint ? plpHint : EMPTY_STRING_P6C ,
			                          rdwLastError ,
			                          lpStringBuf );

		lpPosMsgTail = FB_FindLineEnd ( lpSprintFBuf ,
			                            intLineEndPos );

		if ( lpPosMsgTail )
		{
			//  --------------------------------------------------------------------
			//  Overwrite the first character of the unwanted tail with a NULL, thus
			//  shortening the string.
			//  --------------------------------------------------------------------

			memset ( lpPosMsgTail ,
				     ZERO_P6C ,
				     sizeof ( TCHAR ) );
		}   // if ( lpPosMsgTail )
	}   // TRUE (anticipated outcome) block, if ( dwResult )
	else
	{
		dwFixedMessage = GetLastError( );

		if ( lpStringBuf = GetStringPointer ( m_hModuleOfThisDLL ,
			                                  IDS_STRING112 ,
			                                  FB_HIDE_LENGTH ) )
		{
			_stprintf_s ( lpSprintFBuf ,
				          RCDATA_MAX_BUFFER_P6C ,
				          lpStringBuf ,
				          dwFixedMessage ,
				          dwFixedMessage ,
				          rdwLastError ,
				          rdwLastError ,
				          plpHint ? plpHint : EMPTY_STRING_P6C );
		}   // if ( lpStringBuf = GetStringPointer ( m_hModuleOfThisDLL , IDS_STRING112 , FB_HIDE_LENGTH ) )
	}   // FALSE (UNanticipated outcome) block, if ( dwResult )

	return lpSprintFBuf;
}	// FB_FormatMessageA


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API FB_FormatMessage2A
(
	RES_STRING_ID		 puintStringID ,										// Resource ID of string to load ,
	CDWORD               pdwLastError ,
	CSTATUS_CODE_FORMAT2 penmCodeFormat
)
{
	return FB_FormatMessage ( GetStringPointer ( m_hModuleOfThisDLL ,
		                                         puintStringID ,
		                                         FB_HIDE_LENGTH ) ,
		                      pdwLastError ,
		                      penmCodeFormat );
}	// FB_FormatMessage2A


DWORD LIBSPEC_NATIVECONSSOLEAPPAIDS_API FB_ProcessStatusCode
(
	CDWORD pdwLastError
)
{
	if ( pdwLastError )
	{
		SetLastError ( pdwLastError );
		return pdwLastError;
	}	// TRUE (The calling routine either got or established the status code.) block, if ( pdwLastError )
	else
	{
		return GetLastError ( );
	}	// FALSE (The calling routine expects this routine to return the value it gets from its own call to GetLastError.) block, if ( pdwLastError )
}	// FB_ProcessStatusCode