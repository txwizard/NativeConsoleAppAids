//	============================================================================
//  FB_FindLineEndA.c: Get a pointer to the end of a line (i. e., CR or LF).
//	============================================================================

#if defined ( UNICODE )
	#undef UNICODE
#endif	/* #if defined ( UNICODE ) */

#if defined ( _UNICODE )
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"

#define CARRIAGE_RETURN_P6C         ( ( TCHAR ) '\r' )
#define LINEFEED_P6C                ( ( TCHAR ) '\n' )

LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API FB_FindLineEndA
(
	LPCTSTR plpString ,
	CINT    pintPosEnd
)
{
	if ( plpString && pintPosEnd )
	{
		switch ( ( TCHAR ) plpString [ OrdinalToArrayIndexP6C( pintPosEnd ) ] )
		{
			case CARRIAGE_RETURN_P6C:
			case LINEFEED_P6C:
				return ( LPTSTR ) plpString + ( LONG_PTR ) OrdinalToArrayIndexP6C ( pintPosEnd );
			default:
				return NULL;
		}	// switch ( ( TCHAR ) plpString [ OrdinalToArrayIndexP6C ( pintPosEnd ) ] )
	}	// TRUE (anticipated outcome) block, if ( plpString && pintPosEnd )
	else
	{
		return NULL;
	}	// FALSE (unanticipated outcome) block, if ( plpString && pintPosEnd )
}	// FB_FindLineEndA