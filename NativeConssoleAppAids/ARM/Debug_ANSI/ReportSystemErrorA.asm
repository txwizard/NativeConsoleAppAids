; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TTL	F:\Source_Code\Visual_Studio\Projects\NATIVE\DLL\NativeConsoleAppAids\NativeConssoleAppAids\ReportSystemErrorA.c
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
|__DF7D1A7F_reportsystemerrora@c| DCB 0x1
	EXPORT	|__local_stdio_printf_options|
	EXPORT	|printf|
	EXPORT	|ReportSystemErrorA|
	EXPORT	|__JustMyCode_Default|
	IMPORT	|__imp___acrt_iob_func|
	IMPORT	|__imp___stdio_common_vfprintf|
	IMPORT	|__imp_GetLastError|
	IMPORT	|__imp_FormatMessageA|
	IMPORT	|GetANSIStringPointer|
	IMPORT	|__CheckForDebuggerJustMyCode|
	IMPORT	|__GSHandlerCheck|
	IMPORT	|__chkstk|
	IMPORT	|__security_pop_cookie|
	IMPORT	|__security_push_cookie|
	IMPORT	|m_hModuleOfThisDLL|
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
|$pdata2$ReportSystemErrorA| DCD imagerel |ReportSystemErrorA|
	DCD	imagerel |$unwind3$ReportSystemErrorA|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind3$ReportSystemErrorA| DCD 0x6630006a
	DCD	0xfc0e04f9
	DCD	0xfc01e8fc
	DCD	0xff0210a8
	DCD	0xe04f7fc
	DCD	0x108801e8
	DCD	0xff03ef
	DCD	imagerel |__GSHandlerCheck|
	DCD	0xffffffe9
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
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\reportsystemerrora.c
;	COMDAT ReportSystemErrorA
.text$mn	SEGMENT

|ReportSystemErrorA| PROC

; 22   : {

	push        {r0,r1}
	push        {r4,r11,lr}
	add         r11,sp,#4
	bl          __security_push_cookie
	mov         r4,#0x40E
	bl          __chkstk
	sub         sp,sp,r4
|$M13|
	ldr         r0,|$LN12@ReportSyst|		; =|__DF7D1A7F_reportsystemerrora@c|
	bl          __CheckForDebuggerJustMyCode

; 23   : 	TCHAR   achrFormatMessageBuffer [ RCDATA_MAX_BUFFER_P6C ];
; 24   : 
; 25   : 	LPTSTR  lpFmtMsgResStr = ( LPTSTR ) &achrFormatMessageBuffer;

	add         r3,sp,#0x30
	str         r3,[sp,#0x1C]

; 26   : 	DWORD   dwLastError = GetLastError( );

	ldr         r3,|$LN10@ReportSyst|		; =|__imp_GetLastError|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x10]

; 27   : 	DWORD   dwResult = FormatMessage ( FORMAT_MESSAGE_FROM_SYSTEM |

	movs        r3,#0
	str         r3,[sp,#8]
	mov         r3,#0x1002
	str         r3,[sp,#4]
	ldr         r3,[sp,#0x1C]
	str         r3,[sp]
	mov         r3,#0x400
	ldr         r2,[sp,#0x10]
	movs        r1,#0
	mov         r0,#0x1200
	ldr         r4,|$LN11@ReportSyst|		; =|__imp_FormatMessageA|
	ldr         r4,[r4]
	blx         r4
	str         r0,[sp,#0x20]
	ldr         r3,[sp,#0x20]
	str         r3,[sp,#0x14]

; 28   : 		                               FORMAT_MESSAGE_IGNORE_INSERTS , 			// DWORD dwFlags,       // source and processing options
; 29   : 		                               NULL ,                    				// lpSource             // message source
; 30   : 		                               dwLastError ,							// MessageID,, usually from GetLastError
; 31   : 		                               MAKELANGID ( LANG_NEUTRAL ,
; 32   : 			                                        SUBLANG_DEFAULT ) ,			// language identifier
; 33   : 		                               lpFmtMsgResStr ,							// Pointer to message buffer
; 34   : 		                               RCDATA_MAX_BUFFER_P6C ,         			// DWORD nSize, maximum  size of buffer
; 35   : 		                               NULL );                         			// System messages contain no arguments.
; 36   : 
; 37   : 	if ( dwResult )

	ldr         r3,[sp,#0x14]
	cmp         r3,#0
	beq         |$LN2@ReportSyst|

; 38   : 	{
; 39   : 		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,

	mov         r3,#0x104C
	ldr         r3,[sp,r3]
	cmp         r3,#0
	beq         |$LN5@ReportSyst|
	mov         r3,#0x104C
	ldr         r3,[sp,r3]
	str         r3,[sp,#0x18]
	b           |$LN6@ReportSyst|
|$LN5@ReportSyst|
	movs        r3,#0x67
	str         r3,[sp,#0x18]
|$LN6@ReportSyst|
	movs        r2,#0
	ldr         r1,[sp,#0x18]
	ldr         r3,|$LN9@ReportSyst|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetANSIStringPointer
	str         r0,[sp,#0x24]
	ldr         r3,[sp,#0x1C]
	ldr         r2,[sp,#0x10]
	ldr         r1,[sp,#0x10]
	ldr         r0,[sp,#0x24]
	bl          printf

; 40   : 			                          puintResStringId 
; 41   : 											? puintResStringId
; 42   : 											: IDS_STRING103 ,
; 43   : 			                          FB_HIDE_LENGTH ) ,
; 44   : 		       	   dwLastError ,
; 45   : 			       dwLastError ,
; 46   : 			       lpFmtMsgResStr );
; 47   : 	}	// TRUE (anticipated outcome) block, if ( dwResult )

	b           |$LN3@ReportSyst|
|$LN2@ReportSyst|

; 48   : 	else
; 49   : 	{
; 50   : 		dwResult = GetLastError ( );

	ldr         r3,|$LN10@ReportSyst|		; =|__imp_GetLastError|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x14]

; 51   : 		_tprintf ( GetStringPointer ( m_hModuleOfThisDLL ,

	movs        r2,#0
	movs        r1,#0x68
	ldr         r3,|$LN9@ReportSyst|		; =|m_hModuleOfThisDLL|
	ldr         r0,[r3]
	bl          GetANSIStringPointer
	str         r0,[sp,#0x28]
	ldr         r3,[sp,#0x14]
	str         r3,[sp]
	ldr         r3,[sp,#0x14]
	ldr         r2,[sp,#0x10]
	ldr         r1,[sp,#0x10]
	ldr         r0,[sp,#0x28]
	bl          printf
|$LN3@ReportSyst|

; 52   : 			                          IDS_STRING104 ,
; 53   : 			                          FB_HIDE_LENGTH ) ,
; 54   : 			       dwLastError ,
; 55   : 			       dwLastError ,
; 56   : 			       dwResult ,
; 57   : 			       dwResult );
; 58   : 	}	// FALSE (unanticipated outcome) block, if ( dwResult )
; 59   : 
; 60   : 	return pintFinalReturnCode;

	mov         r3,#0x1048
	ldr         r3,[sp,r3]
	str         r3,[sp,#0x2C]

; 61   : }	// ReportSystemErrorA

	ldr         r0,[sp,#0x2C]
|$M7|
	mov         r12,#0x1038
	add         sp,sp,r12
	bl          __security_pop_cookie
	pop         {r4,r11}
	ldr         pc,[sp],#0xC
|$LN8@ReportSyst|
|$LN9@ReportSyst|
	DCD         |m_hModuleOfThisDLL|
|$LN10@ReportSyst|
	DCD         |__imp_GetLastError|
|$LN11@ReportSyst|
	DCD         |__imp_FormatMessageA|
|$LN12@ReportSyst|
	DCD         |__DF7D1A7F_reportsystemerrora@c|
|$M14|

	ENDP  ; |ReportSystemErrorA|

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
