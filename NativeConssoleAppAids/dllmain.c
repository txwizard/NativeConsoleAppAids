// dllmain.cpp : Defines the entry point for the DLL application.
#define BUILDING_DLLMAIN_FOR_NATIVECONSSOLEAPPAIDS
#include "NativeConssoleAppAids_Pvt.h"

BOOL APIENTRY DllMain ( HMODULE phModule,
                        DWORD   pul_reason_for_call,
                        LPVOID  plpReserved
                      )
{
    switch ( pul_reason_for_call )
    {
		case DLL_PROCESS_ATTACH:
			m_hModuleOfThisDLL	= phModule;
			m_hProcHeap			= GetProcessHeap ( );
			break;

		case DLL_THREAD_ATTACH:
		case DLL_THREAD_DETACH:
		case DLL_PROCESS_DETACH:
			break;
    }	// switch ( pul_reason_for_call )

    return TRUE;
}	// DllMain