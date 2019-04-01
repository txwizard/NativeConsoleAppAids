// UnitTests.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "UnitTests.h"


CRTWaitForCarbonUnit wfcuParams;

int wmain ( int argc , wchar_t * argv [ ] )
{
	int rintRC				= NO_ERROR;
	LPTSTR lpszProgramID	= NULL;

	if ( ( lpszProgramID = ShowProgramInfo ( ) ) )
	{
		_tprintf ( L"Hello World!\n" );
		_tprintf ( L"\n%s done!\n" ,
			       lpszProgramID );
	}	// TRUE (anticipated outcome) block, if ( ( lpszProgramID = ShowProgramInfo ( ) ) )
	else
	{
		rintRC = GetLastError ( );
		_tprintf ( L"\nprogram aborted\n" );
	}	// FALSE (unanticipated outcome) block, if ( ( lpszProgramID = ShowProgramInfo ( ) ) )

	wfcuParams.dwDuration	= 500;
	wfcuParams.dwFreqquency = 880;
	wfcuParams.lpszMessage	= NULL;

	WaitForCarbounUnit ( &wfcuParams );

	return rintRC;
}	// wmain