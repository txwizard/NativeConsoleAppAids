//	============================================================================
//  ShowPlatformW.C: Use C preporocesor variables set by the build script to
//                        make a report via the standard output stream that
//						  shows the hardware platform for which it was built.
//	============================================================================

#if !defined ( UNICODE )
	#define UNICODE
#endif	/* #if !defined ( UNICODE ) */

#if !defined ( _UNICODE )
	#define _UNICODE
#endif	/* #if !defined ( _UNICODE ) */

#include ".\NativeConssoleAppAids_Pvt.h"


void LIBSPEC_NATIVECONSSOLEAPPAIDS_API ShowPlatformW
(
	LPCTSTR plpszFormatString
)
{
	#if defined ( PLATFORM_IS_Win32 )
		_tprintf ( plpszFormatString ,
			       GetStringPointer ( m_hModuleOfThisDLL ,
					                  IDS_STRING105 ,
					                  FB_HIDE_LENGTH ) );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_Win32 ) */

	#if defined ( PLATFORM_IS_x64 )
		_tprintf ( plpszFormatString ,
			       GetStringPointer ( m_hModuleOfThisDLL ,
					                  IDS_STRING106 ,
					                  FB_HIDE_LENGTH ) );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_x64 ) */

	#if defined ( PLATFORM_IS_ARM )
		_tprintf ( plpszFormatString ,
			       GetStringPointer ( m_hModuleOfThisDLL ,
					                  IDS_STRING107 ,
					                  FB_HIDE_LENGTH ) );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_ARM ) */

	#if defined ( PLATFORM_IS_ARM64 )
		_tprintf ( plpszFormatString ,
			       GetStringPointer ( m_hModuleOfThisDLL ,
					                  IDS_STRING108 ,
					                  FB_HIDE_LENGTH ) );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_ARM64 ) */

#if !defined ( PLATFORM_IS_DEFINED )
		_tprintf ( plpszFormatString ,
			       GetStringPointer ( m_hModuleOfThisDLL ,
					                  IDS_STRING118 ,
					                  FB_HIDE_LENGTH ) );
#endif	/* #if !defined ( PLATFORM_IS_DEFINED ) */
}	// ShowPlatformW