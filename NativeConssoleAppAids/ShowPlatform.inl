//  ShowPlatform.inl: Use C preporocesor variables set by the build script to
//                    make a report via the standard output stream that shows
//                    the hardware platform for which it was built.
//	============================================================================

#if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 )
	#if defined ( _M_X64 )
		#define PLATFORM_NAME_ID		IDS_STRING106
	#endif	/* _M_X64 */

	#if  defined ( _M_IX86 )
		#define PLATFORM_NAME_ID		IDS_STRING105
	#endif /* _M_IX86 */

	#if defined ( _M_ARM64 )
		#define PLATFORM_NAME_ID		IDS_STRING108
	#endif /* _M_ARM64 */

	#if defined ( _M_ARM )
		#define PLATFORM_NAME_ID		IDS_STRING107
	#endif /* _M_ARM  */

	#if !defined ( PLATFORM_NAME_ID )
		#define PLATFORM_NAME_ID		IDS_STRING118
	#endif /* !defined ( PLATFORM_NAME_ID ) */
#else	/* #if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 ) */
	#if defined ( _M_AMD64 )
		#define PLATFORM_NAME_ID	IDS_STRING119
	#endif	/* _M_AMD64 */

	#if defined (_M_ARM )
		#define PLATFORM_NAME_ID	IDS_STRING107
	#endif	/* _M_AMD64 */

	#if  defined ( _M_ARM_ARMV7VE )
		#define PLATFORM_NAME_ID	IDS_STRING120
	#endif /* _M_ARM_ARMV7VE */

	#if ( defined ( _M_IX86 ) || defined ( _WIN32 ) )
		#define PLATFORM_NAME_ID	IDS_STRING105
	#endif	/* _M_IX86 || _WIN32 */

	#if ( defined ( _M_X64 ) || defined ( _WIN64) ) )
		#define PLATFORM_NAME_ID	IDS_STRING106
	#endif	/* _M_X64 || _WIN64 */

	#if defined ( PLATFORM_IS_ARM )
		#define PLATFORM_NAME_ID		IDS_STRING107
	#endif	/* #if defined ( PLATFORM_IS_ARM ) */

	#if defined ( PLATFORM_IS_ARM64 )
		#define PLATFORM_NAME_ID		IDS_STRING108
	#endif	/* #if defined ( PLATFORM_IS_ARM64 ) */

	#if !defined ( PLATFORM_NAME_ID )
		#define PLATFORM_NAME_ID		IDS_STRING118
	#endif	/* #if !defined ( PLATFORM_NAME_ID ) */
#endif	/* #if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 ) */

	LPTSTR	lpszPlatformString = GetStringPointer ( m_hModuleOfThisDLL ,
						                            PLATFORM_NAME_ID ,
									                FB_HIDE_LENGTH );

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