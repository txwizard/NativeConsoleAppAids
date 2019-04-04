//  ShowPlatform.inl: Use C preporocesor variables set by the build script to
//                    make a report via the standard output stream that shows
//                    the hardware platform for which it was built.
//	============================================================================

	LPTSTR lpszPlatformString = NULL;

	#if defined ( PLATFORM_IS_Win32 )
		lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
			                                    IDS_STRING105 ,
				                                FB_HIDE_LENGTH );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_Win32 ) */

	#if defined ( PLATFORM_IS_x64 )
		lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
			                                    IDS_STRING106 ,
				                                FB_HIDE_LENGTH );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_x64 ) */

	#if defined ( PLATFORM_IS_ARM )
		lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
			                                    IDS_STRING107 ,
				                                FB_HIDE_LENGTH );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_ARM ) */

	#if defined ( PLATFORM_IS_ARM64 )
		lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
			                                    IDS_STRING108 ,
				                                FB_HIDE_LENGTH );
		#define PLATFORM_IS_DEFINED
	#endif	/* #if defined ( PLATFORM_IS_ARM64 ) */

	#if !defined ( PLATFORM_IS_DEFINED )
		lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
			                                    IDS_STRING118 ,
				                                FB_HIDE_LENGTH );
	#endif	/* #if !defined ( PLATFORM_IS_DEFINED ) */

	_ftprintf ( pfDirectToStandardError ? stderr : stdout ,
		        plpszFormatString ,
		        lpszPlatformString );

	//	------------------------------------------------------------------------
	//	Although lpszPlatformString goes out of scope, its pointer remains in
	//	the abandoned stack frame until it is overwritten. Initializing it to an
	//	invalid address precludes its use in a use-after-free attack.
	//
	//	This is serious business; I have shown that abandoned stack frames can
	//	be used to attack a program. Though FreeBuffer_WW calls HeapFree, which
	//	returns +1, that address is invalid in user mode.
	//	------------------------------------------------------------------------

	#pragma warning ( suppress : 4312 )
	lpszPlatformString = ( LPTSTR ) FreeBuffer_WW ( lpszPlatformString );

	//	------------------------------------------------------------------------
	//	Though discarding a buffer that was passed into a routine is usually a
	//	bad idea, this case warrants an exception, since the call to the routine
	//	that created it is expected to be nested in the call to this routine,
	//	leaving the buffer invisible to the calling routine, such a compromise
	//	is fairly safe. Nevertheless, this routine first attempts to get the
	//	size of the buffer from the heap manager. Unless the reported size is
	//	greater than -1, the attempt is abandoned.
	//	------------------------------------------------------------------------

	if ( IsBufFerFromHeap ( m_hProcHeap , ( LPTSTR ) plpszFormatString ) )
	{ 
		FreeBuffer_WW ( ( LPTSTR ) plpszFormatString );
	}	// if ( IsBufFerFromHeap ( m_hProcHeap , plpszFormatString ) )
// ShowPlatform ends here.