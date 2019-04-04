//	============================================================================
//  ShowProgramInfoA.C: Display the version of the executing program and the
//                      hardware platform for which it was built.
//	============================================================================

#if defined ( UNICODE )
	#undef UNICODE
#endif	/* #if defined ( UNICODE ) */

#if defined ( _UNICODE )
	#undef _UNICODE
#endif	/* #if defined ( UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


LPTSTR LIBSPEC_NATIVECONSSOLEAPPAIDS_API ShowProgramInfoA
(
	BOOL pfDirectToStandardError
)
{
	#include ".\ShowProgramInfo.inl"
}	// ShowProgramInfoA