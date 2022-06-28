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


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API ShowProgramInfoW
(
	BOOL pfDirectToStandardError ,
	BOOL pfOmitPlatformInfo
)
{
	#include ".\ShowProgramInfo.inl"
}	// ShowProgramInfoW