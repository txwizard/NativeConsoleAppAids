; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TTL	F:\Source_Code\Visual_Studio\Projects\NATIVE\DLL\NativeConsoleAppAids\NativeConssoleAppAids\FB_FindLineEndW.c
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
|__B95E53A2_fb_findlineendw@c| DCB 0x1
	EXPORT	|FB_FindLineEndW|
	EXPORT	|__JustMyCode_Default|
	IMPORT	|__CheckForDebuggerJustMyCode|
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$FB_FindLineEndW| DCD imagerel |FB_FindLineEndW|
	DCD	imagerel |$unwind2$FB_FindLineEndW|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$FB_FindLineEndW| DCD 0x33200035
	DCD	0xa8fb02
	DCD	0x8802ff02
	DCD	0xff03ef00
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
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\fb_findlineendw.c
;	COMDAT FB_FindLineEndW
.text$mn	SEGMENT

|FB_FindLineEndW| PROC

; 23   : {

	push        {r0,r1}
	push        {r11,lr}
	mov         r11,sp
	sub         sp,sp,#8
|$M14|
	ldr         r0,|$LN11@FB_FindLin|		; =|__B95E53A2_fb_findlineendw@c|
	bl          __CheckForDebuggerJustMyCode

; 24   : 	if ( plpString && pintPosEnd )

	ldr         r3,[sp,#0x10]
	cmp         r3,#0
	beq         |$LN4@FB_FindLin|
	ldr         r3,[sp,#0x14]
	cmp         r3,#0
	beq         |$LN4@FB_FindLin|

; 25   : 	{
; 26   : 		switch ( ( TCHAR ) plpString [ OrdinalToArrayIndexP6C( pintPosEnd ) ] )

	ldr         r3,[sp,#0x14]
	add         r2,r3,#0xFFFFFFFF
	movs        r3,#2
	mul         r2,r2,r3
	ldr         r3,[sp,#0x10]
	add         r3,r3,r2
	ldrh        r3,[r3]
	str         r3,[sp,#4]
	ldr         r3,[sp,#4]
	cmp         r3,#0xA
	beq         |$LN6@FB_FindLin|
	ldr         r3,[sp,#4]
	cmp         r3,#0xD
	beq         |$LN6@FB_FindLin|
	b           |$LN7@FB_FindLin|
|$LN6@FB_FindLin|

; 27   : 		{
; 28   : 			case CARRIAGE_RETURN_P6C:
; 29   : 			case LINEFEED_P6C:
; 30   : 				return ( LPTSTR ) plpString + ( LONG_PTR ) OrdinalToArrayIndexP6C ( pintPosEnd );

	ldr         r3,[sp,#0x14]
	add         r2,r3,#0xFFFFFFFF
	movs        r3,#2
	mul         r2,r2,r3
	ldr         r3,[sp,#0x10]
	add         r3,r3,r2
	str         r3,[sp]
	b           |$LN1@FB_FindLin|
|$LN7@FB_FindLin|

; 31   : 			default:
; 32   : 				return NULL;

	movs        r3,#0
	str         r3,[sp]
	b           |$LN1@FB_FindLin|

; 33   : 		}	// switch ( ( TCHAR ) plpString [ OrdinalToArrayIndexP6C ( pintPosEnd ) ] )
; 34   : 	}	// TRUE (anticipated outcome) block, if ( plpString && pintPosEnd )

	b           |$LN5@FB_FindLin|
|$LN4@FB_FindLin|

; 35   : 	else
; 36   : 	{
; 37   : 		return NULL;

	movs        r3,#0
	str         r3,[sp]
|$LN5@FB_FindLin|
|$LN1@FB_FindLin|

; 38   : 	}	// FALSE (unanticipated outcome) block, if ( plpString && pintPosEnd )
; 39   : }	// FB_FindLineEndW

	ldr         r0,[sp]
|$M9|
	add         sp,sp,#8
	pop         {r11}
	ldr         pc,[sp],#0xC
|$LN12@FB_FindLin|
|$M13|
	__debugbreak
|$LN10@FB_FindLin|
|$LN11@FB_FindLin|
	DCD         |__B95E53A2_fb_findlineendw@c|
|$M15|

	ENDP  ; |FB_FindLineEndW|

	END
