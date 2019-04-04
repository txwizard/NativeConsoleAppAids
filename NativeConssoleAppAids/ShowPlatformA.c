//	============================================================================
//  ShowPlatformA.C: Use C preporocesor variables set by the build script to
//                        make a report via the standard output stream that
//                        shows the hardware platform for which it was built.
//	============================================================================

#if defined ( UNICODE )
	#undef UNICODE
#endif	/* #if defined ( UNICODE ) */

#if defined ( _UNICODE )
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


void LIBSPEC_NATIVECONSSOLEAPPAIDS_API ShowPlatformA
(
	LPCTSTR plpszFormatString ,
	BOOL    pfDirectToStandardError
)
{
	#include ".\ShowPlatform.inl"
}	// ShowPlatformA