; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TTL	F:\Source_Code\Visual_Studio\Projects\NATIVE\DLL\NativeConsoleAppAids\NativeConssoleAppAids\ShowProgramInfoW.c
	THUMB
	.drectve
	DCB	"-defaultlib:MSVCRTD "
	DCB	"-defaultlib:OLDNAMES "

	.msvcjmc
|__2CC6E67D_corecrt_stdio_config@h| DCB 0x1
|__05476D76_corecrt_wstdio@h| DCB 0x1
|__A452D4A0_stdio@h| DCB 0x1
|__7B7A869E_ctype@h| DCB 0x1
|__457DD326_basetsd@h| DCB 0x1
|__4384A2D9_corecrt_memcpy_s@h| DCB 0x1
|__4E51A221_corecrt_wstring@h| DCB 0x1
|__2140C079_string@h| DCB 0x1
|__29C54D54_arm_neon@h| DCB 0x1
|__1887E595_winnt@h| DCB 0x1
|__9FC7C64B_processthreadsapi@h| DCB 0x1
|__FA470AEC_memoryapi@h| DCB 0x1
|__F37DAFF1_winerror@h| DCB 0x1
|__7A450CCC_winbase@h| DCB 0x1
|__86261D59_stralign@h| DCB 0x1
|__41381B41_corecrt_wconio@h| DCB 0x1
|__C0802A2B_corecrt_wtime@h| DCB 0x1
|__A40A425D_stat@h| DCB 0x1
|__5A74375D_wchar@h| DCB 0x1
|__6B9C2DC0_tchar@h| DCB 0x1
|__71A17CB8_showprograminfow@c| DCB 0x1
	EXPORT	|__local_stdio_printf_options|
	EXPORT	|wprintf|
	EXPORT	|ShowProgramInfoW|
	EXPORT	|__JustMyCode_Default|
	IMPORT	|__imp___acrt_iob_func|
	IMPORT	|__imp___stdio_common_vfwprintf|
	IMPORT	|__imp_HeapAlloc|
	IMPORT	|__imp_HeapFree|
	IMPORT	|GetExeHameFromWindowsW|
	IMPORT	|GetFileVersionW|
	IMPORT	|GetUnicodeStringPointer|
	IMPORT	|ProgramIDFromArgVW|
	IMPORT	|ShowPlatformW|
	IMPORT	|__CheckForDebuggerJustMyCode|
	IMPORT	|m_hModuleOfThisDLL|
	IMPORT	|m_hProcHeap|
	.data
	 COMMON	|?_OptionsStorage@?1??__local_stdio_printf_options@@9@9|, 0x8
							; `__local_stdio_printf_options'::`2'::_OptionsStorage
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$__local_stdio_printf_options| DCD imagerel |__local_stdio_printf_options|
	DCD	imagerel |$unwind2$__local_stdio_printf_options|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$__local_stdio_printf_options| DCD 0x32a0000d
	DCD	0xa8fb02
	DCD	0xa802ff
	DCD	0xff
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$wprintf| DCD imagerel |wprintf|
	DCD	imagerel |$unwind2$wprintf|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$wprintf| DCD 0x33200030
	DCD	0x10a8fc09
	DCD	0x8809ff04
	DCD	0xff05ef10
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$ShowProgramInfoW| DCD imagerel |ShowProgramInfoW|
	DCD	imagerel |$unwind2$ShowProgramInfoW|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$ShowProgramInfoW| DCD 0x32a00051
	DCD	0xa8fb08
	DCD	0xa808ff
	DCD	0xff
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$__JustMyCode_Default| DCD imagerel |__JustMyCode_Default|
	DCD	imagerel |$unwind2$__JustMyCode_Default|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$__JustMyCode_Default| DCD 0x10a00005
	DCD	0xff00a8fb
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
.text$mn	SEGMENT

|__JustMyCode_Default| PROC
	push        {r11,lr}
	mov         r11,sp
|$M2|
|$M1|
	pop         {r11,pc}
|$M3|

	ENDP  ; |__JustMyCode_Default|

; Function compile flags: /Odtp
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\showprograminfow.c
;	COMDAT ShowProgramInfoW
.text$mn	SEGMENT

|ShowProgramInfoW| PROC

; 18   : {

	push        {r11,lr}
	mov         r11,sp
	sub         sp,sp,#0x20
|$M14|
	ldr         r0,|$LN11@ShowProgra|		; =|__71A17CB8_showprograminfow@c|
	bl          __CheckForDebuggerJustMyCode

; 19   : 	#define BUFSIZE_VERSION_STRING		0x00000020
; 20   : 
; 21   : 	int rintResult = ERROR_SUCCESS;

	movs        r3,#0
	str         r3,[sp,#4]

; 22   : 
; 23   : 	LPTSTR lpModuleFileName = GetExeHameFromWindows ( );

	bl          GetExeHameFromWindowsW
	str         r0,[sp,#8]

; 24   : 	LPTSTR lpszVersionString = AllocTchars_WW ( BUFSIZE_VERSION_STRING );

	movs        r2,#0x40
	movs        r1,#8
	ldr         r3,|$LN9@ShowProgra|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN10@ShowProgra|		; =|__imp_HeapAlloc|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp]

; 25   : 	LPTSTR lpszModuleBaseName = ProgramIDFromArgV ( lpModuleFileName );

	ldr         r0,[sp,#8]
	bl          ProgramIDFromArgVW
	str         r0,[sp,#0xC]

; 26   : 
; 27   : 	if ( rintResult = GetFileVersion ( lpszVersionString , BUFSIZE_VERSION_STRING , lpModuleFileName ) )

	ldr         r2,[sp,#8]
	movs        r1,#0x20
	ldr         r0,[sp]
	bl          GetFileVersionW
	str         r0,[sp,#4]
	ldr         r3,[sp,#4]
	cmp         r3,#0
	beq         |$LN2@ShowProgra|

; 28   : 		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,

	movs        r2,#0
	movs        r1,#0x6D
	ldr         r3,|$LN7@ShowProgra|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetUnicodeStringPointer
	str         r0,[sp,#0x10]
	ldr         r1,[sp,#4]
	ldr         r0,[sp,#0x10]
	bl          wprintf
	b           |$LN3@ShowProgra|
|$LN2@ShowProgra|

; 29   : 			                          IDS_STRING109 ,
; 30   : 			                          FB_HIDE_LENGTH ) ,
; 31   : 			       rintResult );
; 32   : 	else
; 33   : 		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,

	movs        r2,#0
	movs        r1,#0x6E
	ldr         r3,|$LN7@ShowProgra|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetUnicodeStringPointer
	str         r0,[sp,#0x14]
	ldr         r2,[sp]
	ldr         r1,[sp,#0xC]
	ldr         r0,[sp,#0x14]
	bl          wprintf
|$LN3@ShowProgra|

; 34   : 			                          IDS_STRING110 ,
; 35   : 			                          FB_HIDE_LENGTH ) ,
; 36   : 			       lpszModuleBaseName ,
; 37   : 		           lpszVersionString );
; 38   : 
; 39   : 	#pragma warning ( suppress : 4312 )
; 40   : 	lpszVersionString	= ( LPTSTR ) FreeBuffer_WW ( lpszVersionString );

	ldr         r2,[sp]
	movs        r1,#0
	ldr         r3,|$LN9@ShowProgra|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN8@ShowProgra|		; =|__imp_HeapFree|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp]

; 41   : 
; 42   : 	ShowPlatform ( GetStringPointer ( m_hModuleOfThisDLL ,

	movs        r2,#0
	movs        r1,#0x75
	ldr         r3,|$LN7@ShowProgra|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetUnicodeStringPointer
	str         r0,[sp,#0x18]
	ldr         r0,[sp,#0x18]
	bl          ShowPlatformW

; 43   : 		                              IDS_STRING117 ,
; 44   : 		                              FB_HIDE_LENGTH ) );
; 45   : 
; 46   : 	return lpszModuleBaseName;

	ldr         r3,[sp,#0xC]
	str         r3,[sp,#0x1C]

; 47   : }	// ShowProgramInfoW

	ldr         r0,[sp,#0x1C]
|$M5|
	add         sp,sp,#0x20
	pop         {r11,pc}
|$LN12@ShowProgra|
|$M13|
	__debugbreak
|$LN6@ShowProgra|
|$LN7@ShowProgra|
	DCD         |m_hModuleOfThisDLL|
|$LN8@ShowProgra|
	DCD         |__imp_HeapFree|
|$LN9@ShowProgra|
	DCD         |m_hProcHeap|
|$LN10@ShowProgra|
	DCD         |__imp_HeapAlloc|
|$LN11@ShowProgra|
	DCD         |__71A17CB8_showprograminfow@c|
|$M15|

	ENDP  ; |ShowProgramInfoW|

; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\corecrt_wstdio.h
;	COMDAT wprintf
.text$mn	SEGMENT

|wprintf| PROC

; 611  :     {

	push        {r0-r3}
	push        {r4,r11,lr}
	add         r11,sp,#4
	sub         sp,sp,#0x24
|$M10|
	ldr         r0,|$LN9@wprintf|			; =|__05476D76_corecrt_wstdio@h|
	bl          __CheckForDebuggerJustMyCode

; 612  :         int _Result;
; 613  :         va_list _ArgList;
; 614  :         __crt_va_start(_ArgList, _Format);

	add         r3,sp,#0x30
	adds        r3,r3,#4
	str         r3,[sp,#0xC]

; 615  :         _Result = _vfwprintf_l(stdout, _Format, NULL, _ArgList);

	movs        r0,#1
	ldr         r3,|$LN8@wprintf|			; =|__imp___acrt_iob_func|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x14]
	ldr         r3,[sp,#0x30]
	str         r3,[sp,#0x10]

; 306  :         return __stdio_common_vfwprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	bl          __local_stdio_printf_options
	str         r0,[sp,#8]
	ldr         r3,[sp,#0xC]
	str         r3,[sp,#4]
	movs        r3,#0
	str         r3,[sp]
	ldr         r3,[sp,#0x10]
	ldr         r2,[sp,#0x14]
	ldr         r1,[sp,#8]
	ldr         r0,[r1]
	ldr         r1,[sp,#8]
	ldr         r1,[r1,#4]
	ldr         r4,|$LN7@wprintf|			; =|__imp___stdio_common_vfwprintf|
	ldr         r4,[r4]
	blx         r4
	str         r0,[sp,#0x18]

; 615  :         _Result = _vfwprintf_l(stdout, _Format, NULL, _ArgList);

	ldr         r3,[sp,#0x18]
	str         r3,[sp,#0x1C]

; 616  :         __crt_va_end(_ArgList);

	movs        r3,#0
	str         r3,[sp,#0xC]

; 617  :         return _Result;

	ldr         r3,[sp,#0x1C]
	str         r3,[sp,#0x20]

; 618  :     }

	ldr         r0,[sp,#0x20]
|$M5|
	add         sp,sp,#0x24
	pop         {r4,r11}
	ldr         pc,[sp],#0x14
|$LN6@wprintf|
|$LN7@wprintf|
	DCD         |__imp___stdio_common_vfwprintf|
|$LN8@wprintf|
	DCD         |__imp___acrt_iob_func|
|$LN9@wprintf|
	DCD         |__05476D76_corecrt_wstdio@h|
|$M11|

	ENDP  ; |wprintf|

; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
.text$mn	SEGMENT

|__local_stdio_printf_options| PROC

; 86   :     {

	push        {r11,lr}
	mov         r11,sp
	sub         sp,sp,#8
|$M9|
	ldr         r0,|$LN6@local_stdi|		; =|__2CC6E67D_corecrt_stdio_config@h|
	bl          __CheckForDebuggerJustMyCode

; 87   :         static unsigned __int64 _OptionsStorage;
; 88   :         return &_OptionsStorage;

	ldr         r3,|$LN5@local_stdi|		; =|?_OptionsStorage@?1??__local_stdio_printf_options@@9@9|
	str         r3,[sp]

; 89   :     }

	ldr         r0,[sp]
|$M3|
	add         sp,sp,#8
	pop         {r11,pc}
|$LN7@local_stdi|
|$M8|
	__debugbreak
|$LN4@local_stdi|
|$LN5@local_stdi|
	DCD         |?_OptionsStorage@?1??__local_stdio_printf_options@@9@9|
|$LN6@local_stdi|
	DCD         |__2CC6E67D_corecrt_stdio_config@h|
|$M10|

	ENDP  ; |__local_stdio_printf_options|

	END
