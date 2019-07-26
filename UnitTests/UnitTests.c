// UnitTests.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "UnitTests.h"


CRTWaitForCarbonUnit wfcuParams;

#if defined ( UNICODE )
int wmain ( int argc , wchar_t * argv [ ] )
#else
int main( int argc , char * argv [ ] )
#endif	/* #if defined ( UNICODE ) */
{
	int rintRC				= NO_ERROR;
	LPTSTR lpszProgramID	= NULL;

	if ( ( lpszProgramID = ShowProgramInfo ( FALSE ) ) )
	{
#if defined ( UNICODE )
		_tprintf ( L"Hello World!\n" );
		_tprintf ( L"\n%s done!\n" ,
			       lpszProgramID );
#else
		_tprintf ( "Hello World!\n" );
		_tprintf ( "\n%s done!\n" ,
			       lpszProgramID );
#endif	/* #if defined ( UNICODE ) */
	}	// TRUE (anticipated outcome) block, if ( ( lpszProgramID = ShowProgramInfo ( ) ) )
	else
	{
		rintRC = GetLastError ( );
#if defined ( UNICODE )
		_tprintf ( L"\nprogram aborted\n" );
		#else
		_tprintf ( "\nprogram aborted\n" );
#endif	/* #if defined ( UNICODE ) */
	}	// FALSE (unanticipated outcome) block, if ( ( lpszProgramID = ShowProgramInfo ( ) ) )

	wfcuParams.dwDuration	= 500;
	wfcuParams.dwFreqquency = 880;
	wfcuParams.lpszMessage	= NULL;

	WaitForCarbonUnit ( &wfcuParams );

	return rintRC;
}	// wmain