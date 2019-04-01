/*
    ============================================================================

    File Name:          IsBufFerFromHeap.c

    Function Name:      IsBufFerFromHeap

    Synopsis:           Determine whether a pointer belongs to a specified heap.

    Status:             Beginning with version 1, 9, 0, 4, this function is no
                        longer used internally, and external use is deprecated.
                        Please see the Remarks for an explanation of why this is
                        so.

    In:                 plpvBuf     = Pointer to buffer to test.

                        phHeap      = Handle to heap to be examined. If phHeap
                                      is NULL, get a handle to the process heap,
                                      and evaluate it.

    Out:                TRUE if buffer plpvBuf belongs to heap phHeap.
                        FALSE if buffer plpvBuf belongs to heap phHeap.

                        To be on the safe side, return FALSE if any exception
                        occurs. See Remarks.

                        If IsBufFromHeap_WW returns FALSE, call GetLastError(),
                        report the error directly or through FormatMessage(),
                        and terminate.

    Remarks:            DEPRECATED: The original intent of this function was to
                        validate a heap pointer before treating it as such. The
                        behavior of the heap routines in Windows 7 makes this a
                        bad idea, because it runs the risk of raising avoidable
                        breakpoint exceptions, even in retail builds of the
                        calling code. Since HeapAlloc and HeapReAlloc fail with
                        a trappable exception, it seems more prudent to go ahead
                        and call them, and forgo the pointer sanity check.

                        Call this function before you attempt to treat any
                        pointer as a heap pointer (e. g., to free the associated
                        memory, or reallocate the associated buffer.

                        IMPORTANT:  Unless plpvBuf is the address of a memory
                                    block that was allocated from the default
                                    process heap, this routine generate the
                                    following message, when the routine runs in
                                    a debugger.

                                        User breakpoint called from code

                                    This message cannot be suppressed. However,
                                    when you acknowledge the message box, your
                                    code continues to execute normally, but the
                                    exception is noted in the Debug output
                                    window.

                                    Outside a debugger, there is no outward sign
                                    of this first-chance exception, and the code
                                    behaves as expected and intended, UNLESS the
                                    code runs on Windows 7 and newer, which is
                                    why its use is deprecated, and it has been
                                    written out of the other routines in this
                                    library that used it.
    ============================================================================
*/

#include ".\NativeConssoleAppAids_Pvt.h"


BOOL LIBSPEC_NATIVECONSSOLEAPPAIDS_API IsBufFerFromHeap
(
	HANDLE phHeap ,
	LPVOID plpvBuf
)
{
#define HEAP_SIZE_ERROR         MINUS_ONE_WW

    HANDLE   hThisHeap          = NULL ;
    DWORD    dwExceptionCode    = ZERO_WW ;

	Unless ( plpvBuf )
	{
		return FALSE;
	}	// Unless ( plpvBuf )

    //  ------------------------------------------------------------------------
    //  Establish which heap to check. This initializes hThisHeap on each call.
    //  If no heap is specified (indicated by phHeap being null), the default
    //  process heap is assumed.
    //  ------------------------------------------------------------------------

    if ( phHeap )
    {   // Test this heap, presumably a private heap.
        hThisHeap   = phHeap ;
    }   // TRUE block, if ( phHeap )
    else
    {   // Use the default process heap.
        hThisHeap   = GetProcessHeap ( ) ;

        Unless ( hThisHeap )
        {   // Verify that Windows gave us the handle.
            return FALSE ;
        }   // Unless ( hThisHeap )
    }   // FALSE block, if ( phHeap )

    __try
    {   // __try == try in C++, C#, and VB.NET
        if ( HeapSize ( hThisHeap ,
			            HEAP_ALL_FLAGS_OFF_WW ,
			            plpvBuf ) == HEAP_SIZE_ERROR )
        {   // The structured exception handling will probably render this branch dead.
            return FALSE ;
        }   // TRUE block, if ( HeapSize ( hThisHeap , HEAP_ALL_FLAGS_OFF_WW , plpvBuf ) == HEAP_SIZE_ERROR )
        else
        {   // Memory came from this heap.
            return TRUE ;
        }   // FALSE block, if ( HeapSize ( hThisHeap , HEAP_ALL_FLAGS_OFF_WW , plpvBuf ) == HEAP_SIZE_ERROR )
    }   // Try block ends here.
    __except ( dwExceptionCode = GetExceptionCode ( ) )
    {   // __except == catch in C++, C#, and VB.NET
        SetLastError ( dwExceptionCode ) ;
        return FALSE ;
    }   // Try/Catch block.
}   // IsBufFerFromHeap