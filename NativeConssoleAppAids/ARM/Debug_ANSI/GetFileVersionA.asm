; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TTL	F:\Source_Code\Visual_Studio\Projects\NATIVE\DLL\NativeConsoleAppAids\NativeConssoleAppAids\GetFileVersionA.c
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
|__6B9C2DC0_tchar@h| DCB 0x1
|__7C930063_getfileversiona@c| DCB 0x1
	EXPORT	|__local_stdio_printf_options|
	EXPORT	|printf|
	EXPORT	|sprintf_s|
	EXPORT	|GetFileVersionA|
	EXPORT	|__JustMyCode_Default|
	EXPORT	|??_C@_01KICIPPFI@?2@| [ DATA ]		; `string'
	EXPORT	|??_C@_0M@PCENNPGA@?$CFd?4?$CFd?4?$CFd?4?$CFd@| [ DATA ] ; `string'
	IMPORT	|__imp___acrt_iob_func|
	IMPORT	|__imp___stdio_common_vfprintf|
	IMPORT	|__imp___stdio_common_vsprintf_s|
	IMPORT	|__imp_HeapAlloc|
	IMPORT	|__imp_HeapFree|
	IMPORT	|GetFileVersionInfoSizeA|
	IMPORT	|GetFileVersionInfoA|
	IMPORT	|VerQueryValueA|
	IMPORT	|GetANSIStringPointer|
	IMPORT	|ReportSystemErrorA|
	IMPORT	|__CheckForDebuggerJustMyCode|
	IMPORT	|__GSHandlerCheck|
	IMPORT	|__security_pop_cookie|
	IMPORT	|__security_push_cookie|
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
|$pdata1$printf| DCD imagerel |printf|
	DCD	imagerel |$unwind2$printf|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$printf| DCD 0x33200030
	DCD	0x10a8fc09
	DCD	0x8809ff04
	DCD	0xff05ef10
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$sprintf_s| DCD imagerel |sprintf_s|
	DCD	imagerel |$unwind2$sprintf_s|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$sprintf_s| DCD 0x33200038
	DCD	0x10a8fc0d
	DCD	0x880dff04
	DCD	0xff05ef10
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata2$GetFileVersionA| DCD imagerel |GetFileVersionA|
	DCD	imagerel |$unwind3$GetFileVersionA|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind3$GetFileVersionA| DCD 0x4430008a
	DCD	0xfb01e80f
	DCD	0xff0400a8
	DCD	0x8801e80f
	DCD	0xff05ef00
	DCD	imagerel |__GSHandlerCheck|
	DCD	0xffffffe5
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$__JustMyCode_Default| DCD imagerel |__JustMyCode_Default|
	DCD	imagerel |$unwind2$__JustMyCode_Default|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$__JustMyCode_Default| DCD 0x10a00005
	DCD	0xff00a8fb
;	COMDAT ??_C@_0M@PCENNPGA@?$CFd?4?$CFd?4?$CFd?4?$CFd@
.rdata	SEGMENT
|??_C@_0M@PCENNPGA@?$CFd?4?$CFd?4?$CFd?4?$CFd@| DCB "%d.%d.%d.%d", 0x0 ; `string'
;	COMDAT ??_C@_01KICIPPFI@?2@
.rdata	SEGMENT
|??_C@_01KICIPPFI@?2@| DCB "\\", 0x0			; `string'
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
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\getfileversiona.c
;	COMDAT GetFileVersionA
.text$mn	SEGMENT

|GetFileVersionA| PROC

; 23   : {

	push        {r0-r3}
	push        {r11,lr}
	mov         r11,sp
	bl          __security_push_cookie
	sub         sp,sp,#0x3C
|$M15|
	ldr         r0,|$LN14@GetFileVer|		; =|__7C930063_getfileversiona@c|
	bl          __CheckForDebuggerJustMyCode

; 24   : 	DWORD  dwHandle , dwVersionInfoSize = GetFileVersionInfoSize ( plpAbsoluteExeFileName ,

	add         r1,sp,#0x38
	ldr         r0,[sp,#0x50]
	bl          GetFileVersionInfoSizeA
	str         r0,[sp,#0x34]

; 25   : 		                                                           &dwHandle );
; 26   : 	
; 27   : 	if ( !dwVersionInfoSize )

	ldr         r3,[sp,#0x34]
	cmp         r3,#0
	bne         |$LN2@GetFileVer|

; 28   : 	{
; 29   : 		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,

	movs        r2,#0
	movs        r1,#0x74
	ldr         r3,|$LN13@GetFileVer|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetANSIStringPointer
	str         r0,[sp,#0x18]
	ldr         r1,[sp,#0x50]
	ldr         r0,[sp,#0x18]
	bl          printf

; 30   : 			                          IDS_STRING116 ,
; 31   : 			                          FB_HIDE_LENGTH ) ,
; 32   : 			       plpAbsoluteExeFileName );
; 33   : 		return ReportSystemError ( GFV_GETFILEVERSIONINFOSIZE_FAIL , 

	movs        r1,#0x71
	movs        r0,#1
	bl          ReportSystemErrorA
	str         r0,[sp,#0x1C]
	ldr         r3,[sp,#0x1C]
	str         r3,[sp,#0x14]
	b           |$LN1@GetFileVer|
|$LN2@GetFileVer|

; 34   : 			                       IDS_STRING113 );
; 35   : 	}	// if ( !dwVersionInfoSize )
; 36   : 
; 37   : 	LPTSTR buf = AllocBytes_WW ( dwVersionInfoSize );

	ldr         r2,[sp,#0x34]
	movs        r1,#8
	ldr         r3,|$LN9@GetFileVer|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN12@GetFileVer|		; =|__imp_HeapAlloc|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x10]

; 38   : 
; 39   : 	if ( !GetFileVersionInfo ( plpAbsoluteExeFileName ,

	ldr         r3,[sp,#0x10]
	ldr         r2,[sp,#0x34]
	ldr         r1,[sp,#0x38]
	ldr         r0,[sp,#0x50]
	bl          GetFileVersionInfoA
	str         r0,[sp,#0x20]
	ldr         r3,[sp,#0x20]
	cmp         r3,#0
	bne         |$LN3@GetFileVer|

; 40   : 		                       dwHandle ,
; 41   : 		                       dwVersionInfoSize ,
; 42   : 		                       &buf [ ARRAY_FIRST_ELEMENT_P6C ] ) )
; 43   : 	{
; 44   : 		FreeBuffer_WW ( buf );

	ldr         r2,[sp,#0x10]
	movs        r1,#0
	ldr         r3,|$LN9@GetFileVer|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN8@GetFileVer|		; =|__imp_HeapFree|
	ldr         r3,[r3]
	blx         r3

; 45   : 		return ReportSystemError ( GFV_GETFILEVERSIONINFO_FAIL ,

	movs        r1,#0x72
	movs        r0,#2
	bl          ReportSystemErrorA
	str         r0,[sp,#0x24]
	ldr         r3,[sp,#0x24]
	str         r3,[sp,#0x14]
	b           |$LN1@GetFileVer|
|$LN3@GetFileVer|

; 46   : 			                       IDS_STRING114 );
; 47   : 	}	// if ( !GetFileVersionInfo ( lpwcFileName , dwHandle , dwVersionInfoSize , &buf [ 0 ] ) )
; 48   : 
; 49   : 	VS_FIXEDFILEINFO * pvi;
; 50   : 	dwVersionInfoSize = sizeof ( VS_FIXEDFILEINFO );

	movs        r3,#0x34
	str         r3,[sp,#0x34]

; 51   : 	
; 52   : 	if ( !VerQueryValue ( &buf [ ARRAY_FIRST_ELEMENT_P6C ] ,

	add         r3,sp,#0x34
	add         r2,sp,#0x30
	ldr         r1,|$LN11@GetFileVer|		; =|??_C@_01KICIPPFI@?2@|
	ldr         r0,[sp,#0x10]
	bl          VerQueryValueA
	str         r0,[sp,#0x28]
	ldr         r3,[sp,#0x28]
	cmp         r3,#0
	bne         |$LN4@GetFileVer|

; 53   : 		                  DOUBLE_BACKSLASH ,
; 54   : 		                  ( LPVOID * ) &pvi ,
; 55   : 		                  ( unsigned int * ) &dwVersionInfoSize ) )
; 56   : 	{
; 57   : 		FreeBuffer_WW ( buf );

	ldr         r2,[sp,#0x10]
	movs        r1,#0
	ldr         r3,|$LN9@GetFileVer|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN8@GetFileVer|		; =|__imp_HeapFree|
	ldr         r3,[r3]
	blx         r3

; 58   : 		return ReportSystemError ( GFV_VERQUERYVALUE_FAIL ,

	movs        r1,#0x73
	movs        r0,#3
	bl          ReportSystemErrorA
	str         r0,[sp,#0x2C]
	ldr         r3,[sp,#0x2C]
	str         r3,[sp,#0x14]
	b           |$LN1@GetFileVer|
|$LN4@GetFileVer|

; 59   : 			                       IDS_STRING115 );
; 60   : 	}	// if ( !VerQueryValue ( &buf [ ARRAY_FIRST_ELEMENT_P6C ] , DOUBLE_BACKSLASH , ( LPVOID* ) &pvi , ( unsigned int* ) &dwVersionInfoSize ) )
; 61   : 
; 62   : 	_stprintf_s ( plpOutBuf ,

	ldr         r3,[sp,#0x30]
	adds        r3,r3,#0xC
	ldr         r3,[r3]
	uxth        r3,r3
	str         r3,[sp,#8]
	ldr         r3,[sp,#0x30]
	adds        r3,r3,#0xC
	ldr         r3,[r3]
	lsrs        r3,r3,#0x10
	str         r3,[sp,#4]
	ldr         r3,[sp,#0x30]
	adds        r3,r3,#8
	ldr         r3,[r3]
	uxth        r3,r3
	str         r3,[sp]
	ldr         r3,[sp,#0x30]
	adds        r3,r3,#0x10
	ldr         r3,[r3]
	lsrs        r3,r3,#0x10
	ldr         r2,|$LN10@GetFileVer|		; =|??_C@_0M@PCENNPGA@?$CFd?4?$CFd?4?$CFd?4?$CFd@|
	ldr         r1,[sp,#0x4C]
	ldr         r0,[sp,#0x48]
	bl          sprintf_s

; 63   : 		          pintOutBufSize ,
; 64   : 		          FORMATTED_VERSION_STRING ,
; 65   : 		          pvi->dwProductVersionMS >> 16 ,			// Major
; 66   : 		          pvi->dwFileVersionMS & 0xFFFF ,			// Minor
; 67   : 		          pvi->dwFileVersionLS >> 16 ,				// Build
; 68   : 		          pvi->dwFileVersionLS & 0xFFFF );			// Revision
; 69   : 	FreeBuffer_WW ( buf );

	ldr         r2,[sp,#0x10]
	movs        r1,#0
	ldr         r3,|$LN9@GetFileVer|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN8@GetFileVer|		; =|__imp_HeapFree|
	ldr         r3,[r3]
	blx         r3

; 70   : 
; 71   : 	return GFV_SUCCEEDED;

	movs        r3,#0
	str         r3,[sp,#0x14]
|$LN1@GetFileVer|

; 72   : }	// GetFileVersion

	ldr         r0,[sp,#0x14]
|$M6|
	add         sp,sp,#0x3C
	bl          __security_pop_cookie
	pop         {r11}
	ldr         pc,[sp],#0x14
|$LN7@GetFileVer|
|$LN8@GetFileVer|
	DCD         |__imp_HeapFree|
|$LN9@GetFileVer|
	DCD         |m_hProcHeap|
|$LN10@GetFileVer|
	DCD         |??_C@_0M@PCENNPGA@?$CFd?4?$CFd?4?$CFd?4?$CFd@|
|$LN11@GetFileVer|
	DCD         |??_C@_01KICIPPFI@?2@|
|$LN12@GetFileVer|
	DCD         |__imp_HeapAlloc|
|$LN13@GetFileVer|
	DCD         |m_hModuleOfThisDLL|
|$LN14@GetFileVer|
	DCD         |__7C930063_getfileversiona@c|
|$M16|

	ENDP  ; |GetFileVersionA|

; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
;	COMDAT sprintf_s
.text$mn	SEGMENT

|sprintf_s| PROC

; 1841 :         {

	push        {r0-r3}
	push        {r4,r11,lr}
	add         r11,sp,#4
	sub         sp,sp,#0x34
|$M11|
	ldr         r0,|$LN10@sprintf_s|		; =|__A452D4A0_stdio@h|
	bl          __CheckForDebuggerJustMyCode

; 1842 :             int _Result;
; 1843 :             va_list _ArgList;
; 1844 :             __crt_va_start(_ArgList, _Format);

	add         r3,sp,#0x48
	adds        r3,r3,#4
	str         r3,[sp,#0x1C]

; 1845 :             _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, NULL, _ArgList);

	ldr         r3,[sp,#0x48]
	str         r3,[sp,#0x20]

; 1498 :         int const _Result = __stdio_common_vsprintf_s(

	bl          __local_stdio_printf_options
	str         r0,[sp,#0x10]
	ldr         r3,[sp,#0x1C]
	str         r3,[sp,#8]
	movs        r3,#0
	str         r3,[sp,#4]
	ldr         r3,[sp,#0x20]
	str         r3,[sp]
	ldr         r3,[sp,#0x44]
	ldr         r2,[sp,#0x40]
	ldr         r1,[sp,#0x10]
	ldr         r0,[r1]
	ldr         r1,[sp,#0x10]
	ldr         r1,[r1,#4]
	ldr         r4,|$LN9@sprintf_s|			; =|__imp___stdio_common_vsprintf_s|
	ldr         r4,[r4]
	blx         r4
	str         r0,[sp,#0x24]
	ldr         r3,[sp,#0x24]
	str         r3,[sp,#0x14]

; 1499 :             _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS,
; 1500 :             _Buffer, _BufferCount, _Format, _Locale, _ArgList);
; 1501 : 
; 1502 :         return _Result < 0 ? -1 : _Result;

	ldr         r3,[sp,#0x14]
	cmp         r3,#0
	bge         |$LN5@sprintf_s|
	mvn         r3,#0
	str         r3,[sp,#0x18]
	b           |$LN6@sprintf_s|
|$LN5@sprintf_s|
	ldr         r3,[sp,#0x14]
	str         r3,[sp,#0x18]
|$LN6@sprintf_s|

; 1845 :             _Result = _vsprintf_s_l(_Buffer, _BufferCount, _Format, NULL, _ArgList);

	ldr         r3,[sp,#0x18]
	str         r3,[sp,#0x28]

; 1846 :             __crt_va_end(_ArgList);

	movs        r3,#0
	str         r3,[sp,#0x1C]

; 1847 :             return _Result;

	ldr         r3,[sp,#0x28]
	str         r3,[sp,#0x2C]

; 1848 :         }

	ldr         r0,[sp,#0x2C]
|$M7|
	add         sp,sp,#0x34
	pop         {r4,r11}
	ldr         pc,[sp],#0x14
|$LN8@sprintf_s|
|$LN9@sprintf_s|
	DCD         |__imp___stdio_common_vsprintf_s|
|$LN10@sprintf_s|
	DCD         |__A452D4A0_stdio@h|
|$M12|

	ENDP  ; |sprintf_s|

; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
;	COMDAT printf
.text$mn	SEGMENT

|printf| PROC

; 954  :     {

	push        {r0-r3}
	push        {r4,r11,lr}
	add         r11,sp,#4
	sub         sp,sp,#0x24
|$M10|
	ldr         r0,|$LN9@printf|			; =|__A452D4A0_stdio@h|
	bl          __CheckForDebuggerJustMyCode

; 955  :         int _Result;
; 956  :         va_list _ArgList;
; 957  :         __crt_va_start(_ArgList, _Format);

	add         r3,sp,#0x30
	adds        r3,r3,#4
	str         r3,[sp,#0xC]

; 958  :         _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	movs        r0,#1
	ldr         r3,|$LN8@printf|			; =|__imp___acrt_iob_func|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x14]
	ldr         r3,[sp,#0x30]
	str         r3,[sp,#0x10]

; 643  :         return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

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
	ldr         r4,|$LN7@printf|			; =|__imp___stdio_common_vfprintf|
	ldr         r4,[r4]
	blx         r4
	str         r0,[sp,#0x18]

; 958  :         _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	ldr         r3,[sp,#0x18]
	str         r3,[sp,#0x1C]

; 959  :         __crt_va_end(_ArgList);

	movs        r3,#0
	str         r3,[sp,#0xC]

; 960  :         return _Result;

	ldr         r3,[sp,#0x1C]
	str         r3,[sp,#0x20]

; 961  :     }

	ldr         r0,[sp,#0x20]
|$M5|
	add         sp,sp,#0x24
	pop         {r4,r11}
	ldr         pc,[sp],#0x14
|$LN6@printf|
|$LN7@printf|
	DCD         |__imp___stdio_common_vfprintf|
|$LN8@printf|
	DCD         |__imp___acrt_iob_func|
|$LN9@printf|
	DCD         |__A452D4A0_stdio@h|
|$M11|

	ENDP  ; |printf|

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