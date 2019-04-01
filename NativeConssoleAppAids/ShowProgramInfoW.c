//	============================================================================
//  ShowProgramInfoW.C: Display the version of the executing program and the
//                      hardware platform for which it was built.
//	============================================================================

#if !defined ( UNICODE )
	#define UNICODE
#endif	/* #if !defined ( UNICODE ) */

#if !defined ( _UNICODE )
	#define _UNICODE
#endif	/* #if !defined ( _UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API ShowProgramInfoW ( )
{
	#define BUFSIZE_VERSION_STRING		0x00000020

	int rintResult = ERROR_SUCCESS;

	LPTSTR lpModuleFileName = GetExeHameFromWindows ( );
	LPTSTR lpszVersionString = AllocTchars_WW ( BUFSIZE_VERSION_STRING );
	LPTSTR lpszModuleBaseName = ProgramIDFromArgV ( lpModuleFileName );

	if ( rintResult = GetFileVersion ( lpszVersionString , BUFSIZE_VERSION_STRING , lpModuleFileName ) )
		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,
			                          IDS_STRING109 ,
			                          FB_HIDE_LENGTH ) ,
			       rintResult );
	else
		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,
			                          IDS_STRING110 ,
			                          FB_HIDE_LENGTH ) ,
			       lpszModuleBaseName ,
		           lpszVersionString );

	#pragma warning ( suppress : 4312 )
	lpszVersionString	= ( LPTSTR ) FreeBuffer_WW ( lpszVersionString );

	ShowPlatform ( GetStringPointer ( m_hModuleOfThisDLL ,
		                              IDS_STRING117 ,
		                              FB_HIDE_LENGTH ) );

	return lpszModuleBaseName;
}	// ShowProgramInfoW