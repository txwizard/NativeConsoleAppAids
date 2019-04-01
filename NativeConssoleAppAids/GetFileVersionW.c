//	============================================================================
//  GetFileVersionW.c: Get a string that contains the comma-separated parts of
//                     the numerical version of a file.
//	============================================================================

#if !defined ( UNICODE )
	#define UNICODE
#endif	/* #if !defined ( UNICODE ) */

#if !defined ( _UNICODE )
	#define _UNICODE
#endif	/* #if !defined ( _UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


int    LIBSPEC_NATIVECONSSOLEAPPAIDS_API GetFileVersionW
(
	LPTSTR plpOutBuf ,					// Pointer to buffer to receive formatted full version number string as up to pintOutBufSize - 1 wide characters
	CINT   pintOutBufSize ,				// Capacity of buffer plpOutBuf in wide characters
	LPCTSTR plpAbsoluteExeFileName		// Pointer to string containing the absolute (fully qualified) name of the program file
)
{
	DWORD  dwHandle , dwVersionInfoSize = GetFileVersionInfoSize ( plpAbsoluteExeFileName ,
		                                                           &dwHandle );
	
	if ( !dwVersionInfoSize )
	{
		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,
			                          IDS_STRING116 ,
			                          FB_HIDE_LENGTH ) ,
			       plpAbsoluteExeFileName );
		return ReportSystemError ( GFV_GETFILEVERSIONINFOSIZE_FAIL , 
			                       IDS_STRING113 );
	}	// if ( !dwVersionInfoSize )

	LPTSTR buf = AllocBytes_WW ( dwVersionInfoSize );

	if ( !GetFileVersionInfo ( plpAbsoluteExeFileName ,
		                       dwHandle ,
		                       dwVersionInfoSize ,
		                       &buf [ ARRAY_FIRST_ELEMENT_P6C ] ) )
	{
		FreeBuffer_WW ( buf );
		return ReportSystemError ( GFV_GETFILEVERSIONINFO_FAIL ,
			                       IDS_STRING114 );
	}	// if ( !GetFileVersionInfo ( lpwcFileName , dwHandle , dwVersionInfoSize , &buf [ 0 ] ) )

	VS_FIXEDFILEINFO * pvi;
	dwVersionInfoSize = sizeof ( VS_FIXEDFILEINFO );
	
	if ( !VerQueryValue ( &buf [ ARRAY_FIRST_ELEMENT_P6C ] ,
		                  DOUBLE_BACKSLASH ,
		                  ( LPVOID * ) &pvi ,
		                  ( unsigned int * ) &dwVersionInfoSize ) )
	{
		FreeBuffer_WW ( buf );
		return ReportSystemError ( GFV_VERQUERYVALUE_FAIL ,
			                       IDS_STRING115 );
	}	// if ( !VerQueryValue ( &buf [ ARRAY_FIRST_ELEMENT_P6C ] , DOUBLE_BACKSLASH , ( LPVOID* ) &pvi , ( unsigned int* ) &dwVersionInfoSize ) )

	_stprintf_s ( plpOutBuf ,
		          pintOutBufSize ,
		          FORMATTED_VERSION_STRING ,
		          pvi->dwProductVersionMS >> 16 ,			// Major
		          pvi->dwFileVersionMS & 0xFFFF ,			// Minor
		          pvi->dwFileVersionLS >> 16 ,				// Build
		          pvi->dwFileVersionLS & 0xFFFF );			// Revision
	FreeBuffer_WW ( buf );

	return GFV_SUCCEEDED;
}	// GetFileVersionW