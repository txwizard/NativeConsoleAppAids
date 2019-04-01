; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TTL	F:\Source_Code\Visual_Studio\Projects\NATIVE\DLL\NativeConsoleAppAids\NativeConssoleAppAids\ProgramIDFromArgVA.c
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
|__43970FB0_programidfromargva@c| DCB 0x1
	.data
|chrArg0IsNull| DCB "ERROR: The first string in the argument list passed "
	DCB	"into routine ProgramIDFromArgV is a null reference.", 0xa
	DCB	0x0
	%	7
|chrArg0IsBlank| DCB "ERROR: The first string in the argument list passed"
	DCB	" into routine ProgramIDFromArgV is the empty string.", 0xa
	DCB	0x0
	%	3
|chrPathDlm| DCB "\\", 0x0
	EXPORT	|ProgramIDFromArgVA|
	EXPORT	|__JustMyCode_Default|
	IMPORT	|strstr|
	IMPORT	|__imp_HeapAlloc|
	IMPORT	|__CheckForDebuggerJustMyCode|
	IMPORT	|memcpy|
	IMPORT	|strlen|
	IMPORT	|m_hProcHeap|
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$ProgramIDFromArgVA| DCD imagerel |ProgramIDFromArgVA|
	DCD	imagerel |$unwind2$ProgramIDFromArgVA|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$ProgramIDFromArgVA| DCD 0x332000af
	DCD	0xa8fb0e
	DCD	0x880eff02
	DCD	0xff03ef00
;	COMDAT .pdata
.pdata	SEGMENT
|$pdata1$__JustMyCode_Default| DCD imagerel |__JustMyCode_Default|
	DCD	imagerel |$unwind2$__JustMyCode_Default|
;	COMDAT .xdata
.xdata	SEGMENT
|$unwind2$__JustMyCode_Default| DCD 0x10a00005
	DCD	0xff00a8fb
	.data
	%	2
|chrExtnDlm| DCB ".", 0x0
	%	2
|lpchrArg0IsNull| DCD |chrArg0IsNull|
|lpchrArg0IsBlank| DCD |chrArg0IsBlank|
|lpchrPathDlm| DCD |chrPathDlm|
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
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\programidfromargva.c
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\tchar.h
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\programidfromargva.c
;	COMDAT ProgramIDFromArgVA
.text$mn	SEGMENT

|ProgramIDFromArgVA| PROC

; 152  : {	// Unlike C++, straight C needs everything defined before any executable code, apart from initializers.

	push        {r0,r1}
	push        {r11,lr}
	mov         r11,sp
	sub         sp,sp,#0x38
|$M40|
	ldr         r0,|$LN37@ProgramIDF|		; =|__43970FB0_programidfromargva@c|
	bl          __CheckForDebuggerJustMyCode

; 153  : 	TCHAR *	rlpBaseNameByItself					= NULL ;

	movs        r3,#0
	str         r3,[sp,#0x2C]

; 154  : 
; 155  :     BOOL	fBaseNameIsolated					= FALSE ;

	movs        r3,#0
	str         r3,[sp,#0x18]

; 156  :     BOOL	fIsFirstDoLoop						= TRUE ;

	movs        r3,#1
	str         r3,[sp,#0x10]

; 157  : 
; 158  :     size_t	intPgmIdLengthbBytes				= -1 ;

	mvn         r3,#0
	str         r3,[sp,#0x20]

; 159  : 	size_t	intPgmPtrLength						= -1 ;

	mvn         r3,#0
	str         r3,[sp,#0xC]

; 160  : 
; 161  : 	TCHAR *	lpLastCharacterInString				= NULL ;

	movs        r3,#0
	str         r3,[sp,#0x1C]

; 162  : 	TCHAR *	lpLastDelimiterScan					= NULL ;

	movs        r3,#0
	str         r3,[sp,#4]

; 163  : 	TCHAR *	lpLastExtnDelimiter					= NULL ;

	movs        r3,#0
	str         r3,[sp,#8]

; 164  : 	TCHAR *	lpLastPathDelimiter					= NULL ;

	movs        r3,#0
	str         r3,[sp]

; 165  : 
; 166  :     if ( plpszArg0 )

	ldr         r3,[sp,#0x40]
	cmp         r3,#0
	beq         |$LN8@ProgramIDF|

; 167  :     {
; 168  :         if ( ( intPgmPtrLength = intPgmPtrLength = _tcslen ( plpszArg0 ) ) )

	ldr         r0,[sp,#0x40]
	bl          strlen
	str         r0,[sp,#0x30]
	ldr         r3,[sp,#0x30]
	str         r3,[sp,#0xC]
	ldr         r3,[sp,#0xC]
	str         r3,[sp,#0xC]
	ldr         r3,[sp,#0xC]
	cmp         r3,#0
	beq         |$LN10@ProgramIDF|

; 169  :         {
; 170  :             lpLastDelimiterScan					= ( TCHAR * ) plpszArg0 ;

	ldr         r3,[sp,#0x40]
	str         r3,[sp,#4]

; 171  :             lpLastPathDelimiter					= ( TCHAR * ) plpszArg0 ;

	ldr         r3,[sp,#0x40]
	str         r3,[sp]
|$LN4@ProgramIDF|

; 172  : 
; 173  :             do  // while ( lpLastDelimiterScan ) ;
; 174  :             {
; 175  :                 lpLastDelimiterScan				= _tcsstr ( lpLastDelimiterScan ,

	ldr         r3,|$LN36@ProgramIDF|		; =|lpchrPathDlm|
	ldr         r1,[r3]
	ldr         r0,[sp,#4]
	bl          strstr
	str         r0,[sp,#4]

; 176  : 															lpchrPathDlm ) ;
; 177  : 
; 178  :                 if ( lpLastDelimiterScan )

	ldr         r3,[sp,#4]
	cmp         r3,#0
	beq         |$LN12@ProgramIDF|

; 179  :                 {
; 180  :                     if ( fIsFirstDoLoop )

	ldr         r3,[sp,#0x10]
	cmp         r3,#0
	beq         |$LN14@ProgramIDF|

; 181  :                     {
; 182  :                         fIsFirstDoLoop			= FALSE ;

	movs        r3,#0
	str         r3,[sp,#0x10]
|$LN14@ProgramIDF|

; 183  :                     }	// TRUE (degenerate case, where the program name is unqualified) block, if ( fIsFirstDoLoop )
; 184  : 
; 185  :                     lpLastPathDelimiter	= lpLastDelimiterScan ;

	ldr         r3,[sp,#4]
	str         r3,[sp]

; 186  :                     lpLastDelimiterScan++ ;

	ldr         r3,[sp,#4]
	adds        r3,r3,#1
	str         r3,[sp,#4]

; 187  :                 }	// TRUE block, if ( lpLastDelimiterScan )

	b           |$LN13@ProgramIDF|
|$LN12@ProgramIDF|

; 188  :                 else
; 189  :                 {
; 190  :                     if ( fIsFirstDoLoop )

	ldr         r3,[sp,#0x10]
	cmp         r3,#0
	beq         |$LN15@ProgramIDF|

; 191  :                     {
; 192  :                         fIsFirstDoLoop			= FALSE ;

	movs        r3,#0
	str         r3,[sp,#0x10]

; 193  :                     }	// TRUE (degenerate case, where the program name is unqualified) block, if ( fIsFirstDoLoop )

	b           |$LN16@ProgramIDF|
|$LN15@ProgramIDF|

; 194  :                     else
; 195  :                     {
; 196  :                         lpLastPathDelimiter++ ;

	ldr         r3,[sp]
	adds        r3,r3,#1
	str         r3,[sp]
|$LN16@ProgramIDF|
|$LN13@ProgramIDF|

; 197  :                     }	// FALSE (standard case, where the program name is at least partially qualified) block, if ( fIsFirstDoLoop )
; 198  :                 }	// FALSE block, if ( lpLastDelimiterScan )
; 199  :             } while ( lpLastDelimiterScan ) ;

	ldr         r3,[sp,#4]
	cmp         r3,#0
	bne         |$LN4@ProgramIDF|

; 200  : 
; 201  :             //	----------------------------------------------------------------
; 202  :             //	Sanity check the string pointer. Find the extension delimiter,
; 203  :             //	unless it is NULL.
; 204  :             //	----------------------------------------------------------------
; 205  : 
; 206  :             if ( lpLastPathDelimiter )

	ldr         r3,[sp]
	cmp         r3,#0
	beq         |$LN17@ProgramIDF|

; 207  :             {
; 208  : 				#pragma warning ( suppress : 4047 )
; 209  : 				lpLastCharacterInString			= ( DWORD_PTR ) ( plpszArg0 + TcharsToBytesP6C ( ( OrdinalToArrayIndexP6C ( intPgmPtrLength ) ) ) );

	ldr         r3,[sp,#0xC]
	add         r2,r3,#0xFFFFFFFF
	ldr         r3,[sp,#0x40]
	add         r3,r3,r2
	str         r3,[sp,#0x1C]

; 210  :                 lpLastExtnDelimiter				= lpLastCharacterInString;

	ldr         r3,[sp,#0x1C]
	str         r3,[sp,#8]
|$LN7@ProgramIDF|

; 211  : 
; 212  :                 do
; 213  :                 {
; 214  :                     if ( ( char ) lpLastExtnDelimiter [ ARRAY_FIRST_ELEMENT_P6C ] == chrExtnDlm [ ARRAY_FIRST_ELEMENT_P6C ] )

	ldr         r3,[sp,#8]
	ldrsb       r2,[r3]
	ldr         r3,|$LN35@ProgramIDF|		; =|chrExtnDlm|
	ldrsb       r3,[r3]
	cmp         r2,r3
	bne         |$LN19@ProgramIDF|

; 215  :                     {	// Found extension delimiter.
; 216  :                         fBaseNameIsolated		= TRUE;

	movs        r3,#1
	str         r3,[sp,#0x18]

; 217  :                     }	// TRUE (Extension delimiter found.) block, if ( ( char ) lpLastExtnDelimiter [ ARRAY_FIRST_ELEMENT_P6C ] == chrExtnDlm [ ARRAY_FIRST_ELEMENT_P6C ] )

	b           |$LN20@ProgramIDF|
|$LN19@ProgramIDF|
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\tchar.h

; 2298 : _Check_return_ __inline char * __CRTDECL _strdec(_In_reads_z_(_Cpc2 - _Cpc1) const char * _Cpc1, _In_z_ const char * _Cpc2) { return (char *)((_Cpc1)>=(_Cpc2) ? NULL : (_Cpc2-1)); }

	ldr         r2,[sp,#0x40]
	ldr         r3,[sp,#8]
	cmp         r2,r3
	bcc         |$LN27@ProgramIDF|
	movs        r3,#0
	str         r3,[sp,#0x24]
	b           |$LN28@ProgramIDF|
|$LN27@ProgramIDF|
	ldr         r3,[sp,#8]
	subs        r3,r3,#1
	str         r3,[sp,#0x24]
|$LN28@ProgramIDF|
; File f:\source_code\visual_studio\projects\native\dll\nativeconsoleappaids\nativeconssoleappaids\programidfromargva.c

; 220  :                         lpLastExtnDelimiter		= _tcsdec ( plpszArg0 ,

	ldr         r3,[sp,#0x24]
	str         r3,[sp,#8]

; 221  : 													        lpLastExtnDelimiter ) ;
; 222  : 
; 223  :                         if ( ( DWORD_PTR ) lpLastExtnDelimiter == ( DWORD_PTR ) lpLastPathDelimiter )

	ldr         r2,[sp,#8]
	ldr         r3,[sp]
	cmp         r2,r3
	bne         |$LN21@ProgramIDF|

; 224  :                         {	// Reached the beginning of the base name.
; 225  :                             fBaseNameIsolated	= TRUE;

	movs        r3,#1
	str         r3,[sp,#0x18]
|$LN21@ProgramIDF|
|$LN20@ProgramIDF|

; 226  :                         }	// if ( ( DWORD_PTR ) lpLastExtnDelimiter == ( DWORD_PTR ) lpLastPathDelimiter )
; 227  :                     }	// TRUE (Extension delimiter not yet found.) block, if ( ( char ) lpLastExtnDelimiter [ ARRAY_FIRST_ELEMENT_P6C ] == chrExtnDlm [ ARRAY_FIRST_ELEMENT_P6C ] )
; 228  :                 }
; 229  :                 while ( !fBaseNameIsolated ) ;

	ldr         r3,[sp,#0x18]
	cmp         r3,#0
	beq         |$LN7@ProgramIDF|

; 230  : 
; 231  : 				//	------------------------------------------------------------
; 232  : 				//	Though I almost always save computed values for reuse, since
; 233  : 				//	the compiler optimizes away the multiplcation operation, it
; 234  : 				//	is not worth the extra storage to compute and store the
; 235  : 				//	product.
; 236  : 				//	------------------------------------------------------------
; 237  : 
; 238  :                 intPgmIdLengthbBytes			=    ( ( DWORD_PTR ) lpLastExtnDelimiter     == ( DWORD_PTR ) lpLastPathDelimiter )

	ldr         r2,[sp,#8]
	ldr         r3,[sp]
	cmp         r2,r3
	bne         |$LN23@ProgramIDF|
	ldr         r2,[sp,#0x1C]
	ldr         r3,[sp]
	subs        r3,r2,r3
	str         r3,[sp,#0x28]
	b           |$LN24@ProgramIDF|
|$LN23@ProgramIDF|
	ldr         r2,[sp,#8]
	ldr         r3,[sp]
	subs        r3,r2,r3
	str         r3,[sp,#0x28]
|$LN24@ProgramIDF|
	ldr         r3,[sp,#0x28]
	str         r3,[sp,#0x20]

; 239  :                                                    ? ( ( DWORD_PTR ) lpLastCharacterInString -  ( DWORD_PTR ) lpLastPathDelimiter )
; 240  :                                                    : ( ( DWORD_PTR ) lpLastExtnDelimiter     -  ( DWORD_PTR ) lpLastPathDelimiter ) ;
; 241  : 
; 242  : 				//	------------------------------------------------------------
; 243  : 				//	Since memcpy returns its destination, we may as well return
; 244  : 				//	through it, which requires its return value (void *) to be
; 245  : 				//	cast to our return type, LPTSTR.
; 246  : 				//	------------------------------------------------------------
; 247  : 
; 248  : 				rlpBaseNameByItself				= AllocCString_WW ( intPgmIdLengthbBytes );

	ldr         r3,[sp,#0x20]
	adds        r2,r3,#1
	movs        r1,#8
	ldr         r3,|$LN34@ProgramIDF|		; =|m_hProcHeap|
	ldr         r0,[r3]
	ldr         r3,|$LN33@ProgramIDF|		; =|__imp_HeapAlloc|
	ldr         r3,[r3]
	blx         r3
	str         r0,[sp,#0x2C]

; 249  :                 return ( LPTSTR ) memcpy ( rlpBaseNameByItself ,

	ldr         r2,[sp,#0x20]
	ldr         r1,[sp]
	ldr         r0,[sp,#0x2C]
	bl          memcpy
	str         r0,[sp,#0x34]
	ldr         r3,[sp,#0x34]
	str         r3,[sp,#0x14]
	b           |$LN1@ProgramIDF|

; 250  :                                            lpLastPathDelimiter ,
; 251  :                                            intPgmIdLengthbBytes ) ;                
; 252  :             }	// TRUE (expected outcome) block, if ( lpLastPathDelimiter )

	b           |$LN18@ProgramIDF|
|$LN17@ProgramIDF|

; 253  :             else
; 254  :             {
; 255  :                 return lpchrArg0IsBlank ;

	ldr         r3,|$LN32@ProgramIDF|		; =|lpchrArg0IsBlank|
	ldr         r3,[r3]
	str         r3,[sp,#0x14]
	b           |$LN1@ProgramIDF|
|$LN18@ProgramIDF|

; 256  :             }	// FALSE (UNexpected outcome) block, if ( lpLastPathDelimiter )
; 257  :         }	// TRUE (expected outcome) block, if ( ( intPgmPtrLength = intPgmPtrLength = _tcslen ( plpszArg0 ) ) )

	b           |$LN11@ProgramIDF|
|$LN10@ProgramIDF|

; 258  :         else
; 259  :         {
; 260  :             return lpchrArg0IsBlank ;

	ldr         r3,|$LN32@ProgramIDF|		; =|lpchrArg0IsBlank|
	ldr         r3,[r3]
	str         r3,[sp,#0x14]
	b           |$LN1@ProgramIDF|
|$LN11@ProgramIDF|

; 261  :         }	// FALSE (UNexpected outcome) if ( ( intPgmPtrLength = intPgmPtrLength = _tcslen ( plpszArg0 ) ) )
; 262  :     }	// TRUE (expected outcome) block, if ( plpszArg0 )

	b           |$LN9@ProgramIDF|
|$LN8@ProgramIDF|

; 263  :     else
; 264  :     {
; 265  :         return lpchrArg0IsNull ;

	ldr         r3,|$LN31@ProgramIDF|		; =|lpchrArg0IsNull|
	ldr         r3,[r3]
	str         r3,[sp,#0x14]
|$LN9@ProgramIDF|
|$LN1@ProgramIDF|

; 266  :     }	// FALSE (UNexpected outcome) if ( plpszArg0 )
; 267  : }	// LPTSTR ProgramIDFromArgV

	ldr         r0,[sp,#0x14]
|$M29|
	add         sp,sp,#0x38
	pop         {r11}
	ldr         pc,[sp],#0xC
|$LN38@ProgramIDF|
|$M39|
	__debugbreak
|$LN30@ProgramIDF|
|$LN31@ProgramIDF|
	DCD         |lpchrArg0IsNull|
|$LN32@ProgramIDF|
	DCD         |lpchrArg0IsBlank|
|$LN33@ProgramIDF|
	DCD         |__imp_HeapAlloc|
|$LN34@ProgramIDF|
	DCD         |m_hProcHeap|
|$LN35@ProgramIDF|
	DCD         |chrExtnDlm|
|$LN36@ProgramIDF|
	DCD         |lpchrPathDlm|
|$LN37@ProgramIDF|
	DCD         |__43970FB0_programidfromargva@c|
|$M41|

	ENDP  ; |ProgramIDFromArgVA|

	END