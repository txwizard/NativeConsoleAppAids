//	============================================================================
//  GetExeHameFromWindowsW.c: Get the name of the first program that loaded into
//                            the current process.
//	============================================================================

#if !defined ( UNICODE )
	#define UNICODE
#endif	/* #if !defined ( UNICODE ) */

#if !defined ( _UNICODE )
	#define _UNICODE
#endif	/* #if !defined ( _UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API GetExeHameFromWindowsW ( )
{
	static TCHAR  rachrModuleNameBuffer [ MAX_PATH ];

	if ( GetModuleFileName ( NULL ,												// HMODULE hModule:		A handle to the loaded module whose path is being requested. If this parameter is NULL, GetModuleFileName retrieves the path of the executable file of the current process.
		                     ( TCHAR * ) &rachrModuleNameBuffer ,				// LPSTR   lpFilename:	A pointer to a buffer that receives the fully qualified path of the module. If the length of the path is less than the size that the nSize parameter specifies, the function succeeds and the path is returned as a null-terminated string. If the length of the path exceeds the size that the nSize parameter specifies, the function succeeds and the string is truncated to nSize characters including the terminating null character.
		                     MAX_PATH ) )										// DWORD   nSize:		The size of the lpFilename buffer, in TCHARs
	{
		return ( LPTSTR ) &rachrModuleNameBuffer;
	}	// TRUE (anticipated outcome) block, if ( GetModuleFileName ( NULL , &rachrModuleNameBuffer , MAX_PATH ) )
	else
	{
		return NULL;
	}	// FALSE (unanticipated outcome) block, if ( GetModuleFileName ( NULL , &rachrModuleNameBuffer , MAX_PATH ) )
}	// GetExeHameFromWindowsW