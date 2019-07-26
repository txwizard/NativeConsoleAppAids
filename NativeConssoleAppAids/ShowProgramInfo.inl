//	============================================================================
//  ShowProgramInfo.inl: Display the version of the executing program and the
//                       hardware platform for which it was built.
//
//                       The body of both ShowProgramInfoA and ShowProgramInfoW
//                       is defined herein, and this file is included inline.
//	============================================================================

	#define BUFSIZE_VERSION_STRING		0x00000020

	int rintResult = ERROR_SUCCESS;

	LPTSTR lpModuleFileName = GetExeHameFromWindows ( );
	LPTSTR lpszVersionString = AllocTchars_WW ( BUFSIZE_VERSION_STRING );
	LPTSTR lpszModuleBaseName = ProgramIDFromArgV ( lpModuleFileName );
	FILE * hOutDest = pfDirectToStandardError ? stderr : stdout;

	if ( rintResult = GetFileVersion ( lpszVersionString , BUFSIZE_VERSION_STRING , lpModuleFileName ) )
	{
		_ftprintf ( hOutDest ,
			        GetStringPointer ( m_hModuleOfThisDLL ,
				                       IDS_STRING109 ,
				                       FB_HIDE_LENGTH ) ,
			        rintResult );
	}	// TRUE (unanticipated outcome) block, if ( rintResult = GetFileVersion ( lpszVersionString , BUFSIZE_VERSION_STRING , lpModuleFileName ) )
	else
	{
		_ftprintf ( hOutDest ,
			        GetStringPointer ( m_hModuleOfThisDLL ,
			                           IDS_STRING110 ,
			                           FB_HIDE_LENGTH ) ,
			        lpszModuleBaseName ,
			        lpszVersionString );
	}	// FALSE (anticipated outcome) block, if ( rintResult = GetFileVersion ( lpszVersionString , BUFSIZE_VERSION_STRING , lpModuleFileName ) )

	#pragma warning ( suppress : 4312 )
	lpszVersionString	= ( LPTSTR ) FreeBuffer_WW ( lpszVersionString );

	ShowPlatform ( GetStringPointer ( m_hModuleOfThisDLL ,
		                              IDS_STRING117 ,
		                              FB_HIDE_LENGTH ) ,
		           pfDirectToStandardError );

	return lpszModuleBaseName;
//	ShowProgramInfo ends here.