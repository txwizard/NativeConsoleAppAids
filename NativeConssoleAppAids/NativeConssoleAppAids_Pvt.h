#if !defined ( NATIVECONSSOLEAPPAIDS_PVT_DEFINED )
#define NATIVECONSSOLEAPPAIDS_PVT_DEFINED

/*
    ============================================================================

    File Name:          NativeConssoleAppAids_Pvt.h

    File Synopsis:      This C/C++ header file defines the infrastructure that
                        supports the working code of NativeConssoleAppAids.dll.

    Remarks:            These values were moved out of NativeConssoleAppAids.h,
                        leaving it with only the minimum required to build an
                        application that depends on the routines defined by it.

    Date Created:       Wednesday, 20 March 2019

    License:            Copyright (C) 2019-2020, David A. Gray. All rights reserved.

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
    2019/03/21 DAG Header created

    2020/02/11 DAG Remove a redundant function prototype that was left behind by
                   a text copy operation.
    ============================================================================
*/

#if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 )
    #pragma once
#endif  /*  #if defined ( _MSC_VER ) && ( _MSC_VER >= 1020 ) */

#include "targetver.h"

#include <stdlib.h>
#include <stdio.h>

#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
#include <windows.h>					// Windows Header Files

#include <Const_Typedefs_WW.H>
#include <MathMacros_WW.H>
#include <TcharMacros_WW.H>

#include <NativeStringAids.h>

#include <NativeConssoleAppAids.h>

#include ".\resource.h"

#if defined ( UNICODE )
    #define DOUBLE_BACKSLASH			L"\\"
    #define EMPTY_STRING_P6C			L""
    #define FORMATTED_VERSION_STRING	L"%d.%d.%d.%d"
#else
    #define DOUBLE_BACKSLASH			"\\"
    #define EMPTY_STRING_P6C			""
    #define FORMATTED_VERSION_STRING	"%d.%d.%d.%d"
#endif	/* #if defined ( UNICODE ) */

#define FB_LOADSTRING_ERRORS            ( 0x00020000 | APPLICATION_ERROR_MASK )
#define FB_ERR_STRNG_NOT_FOUND_FOR_ID   ( 0x00000010 | FB_LOADSTRING_ERRORS   )

#if !defined ( HEAP_ALL_FLAGS_OFF )
    #define HEAP_ALL_FLAGS_OFF			0x00000000
#endif	/* #if !defined ( HEAP_ALL_FLAGS_OFF ) */

#if !defined ( TRAILING_NULL_ALLOWANCE_P6C )
    #define TRAILING_NULL_ALLOWANCE_P6C PLUS_ONE_WW
#endif  /* #if !defined ( TRAILING_NULL_ALLOWANCE_P6C) */

#if !defined ( RCDATA_MAX_LENGTH_P6C )
    #define RCDATA_MAX_LENGTH_P6C       4097
    #define RCDATA_MAX_BUFFER_P6C       ( RCDATA_MAX_LENGTH_P6C + TRAILING_NULL_ALLOWANCE_P6C )
    #define RCDATA_MAX_BUFFER_BYTES_P6C ( RCDATA_MAX_BUFFER_P6C * sizeof ( TCHAR ) )
#endif  /* #if !defined ( RCDATA_MAX_LENGTH_P6C ) */

#if !defined RCDATA_INPLACE_POINTER
    #define RCDATA_INPLACE_POINTER      ZERO_WW
#endif	/* #if !defined RCDATA_INPLACE_POINTER */

#define SFM_ERR_FORMAT_UNKNOWN			3

#define WFCU_DEFAULT_PROMPT             TEXT ( "Please press the Return (ENTER) key to exit the program.\n" )
#define WFCU_NONZERO_STATUS_CODE_MSG    TEXT ( "\nStatus code = 0x%04X (%i decimal)\n" )

#define WFCU_CONSOLE_NULL               0x00000000          // Initialize the returned console character to the null character.
#define WFCU_CONSOLE_RETURN             0x0000000A          // Carriage return is the only character accepted by WFCU_WaitForCR.

#define WFCU_WaitForCR(pintConsoleInput)                \
    while ( pintConsoleInput != WFCU_CONSOLE_RETURN )   \
        pintConsoleInput = _fgettchar ( ) ;

#if defined ( _UNICODE )
    typedef wint_t                      WCU_INT_T;
#else
    typedef int                         WCU_INT_T;
#endif  /* _UNICODE */

#if defined ( __cplusplus )
extern "C" {
#endif  /* #if defined ( __cplusplus ) */
    #if defined BUILDING_DLLMAIN_FOR_NATIVECONSSOLEAPPAIDS
               HMODULE m_hModuleOfThisDLL	= NULL;
               HANDLE  m_hProcHeap			= NULL;
    #else
        extern HMODULE m_hModuleOfThisDLL;
        extern HANDLE  m_hProcHeap;
    #endif	/* #if defined BUILDING_DLLMAIN_FOR_NATIVECONSSOLEAPPAIDS */

#if defined ( __cplusplus )
}		/* ... extern "C" */
#endif  /* #if defined ( __cplusplus )    */
#endif	/* NATIVECONSSOLEAPPAIDS_PVT_DEFINED */