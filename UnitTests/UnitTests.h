#if !defined ( NATIVECONSSOLEAPPAIDS_DEFINED )
#define NATIVECONSSOLEAPPAIDS_DEFINED

/*
	============================================================================

	File Name:          NativeConssoleAppAids.h

	File Synopsis:      This C/C++ header file defines the functions exported by
						NativeConssoleAppAids.dll, along with a few symbolic
						constants used by it.

	Remarks:            These functions were defined and tested for the projects
						that I created to port three open source libraries, zlib,
						iconv, and libxml2, to the ARM processor.

	Date Created:       Tuesday, 19 March 2019

	License:            Copyright (C) 2019, David A. Gray. All rights reserved.

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions are met:

	*   Redistributions of source code must retain the above copyright notice,
	this list of conditions and the following disclaimer.

	*   Redistributions in binary form must reproduce the above copyright
	notice, this list of conditions and the following disclaimer in the
	documentation and/or other materials provided with the distribution.

	*   Neither the name of David A. Gray nor the names of his contributors may
	be used to endorse or promote products derived from this software without
	specific prior written permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
	AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
	IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
	ARE DISCLAIMED. IN NO EVENT SHALL David A. Gray BE LIABLE FOR ANY DIRECT,
	INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
	THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

	----------------------------------------------------------------------------
	Revision History
	----------------------------------------------------------------------------

	Date       By  Synopsis
	---------- --- -------------------------------------------------------------
	2019/03/19 DAG Header created and first used in VSProjectSettingsTester.exe,
                   then UnitTests.exe.
	============================================================================
*/


#if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 )
	#pragma once
#endif  /*  #if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 ) */

#include "targetver.h"

#include <stdlib.h>
#include <tchar.h>
#include <stdio.h>

#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
#include <windows.h>					// Windows Header Files

#include "..\NativeConssoleAppAids\NativeConssoleAppAids.h"

#endif /* #if !defined ( NATIVECONSSOLEAPPAIDS_DEFINED ) */