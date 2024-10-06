	.file	"main.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.file 0 "/home/user/OSBase/sem3/sem1/task3" "main.c"
	.globl	gcd
	.type	gcd, @function
gcd:
.LFB6:
	.file 1 "main.c"
	.loc 1 5 24
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	.loc 1 6 5
	cmp	DWORD PTR -4[rbp], 0
	jne	.L2
	.loc 1 7 10
	mov	eax, DWORD PTR -8[rbp]
	jmp	.L3
.L2:
	.loc 1 9 10
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	mov	edi, edx
	call	gcd
.L3:
	.loc 1 11 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gcd, .-gcd
	.section	.rodata
	.align 8
.LC0:
	.string	"Faled to create new process. Try again!"
	.align 8
.LC1:
	.string	"I'm a child of process with PID %d. My PID is %d\n"
.LC2:
	.string	"main.c"
.LC3:
	.string	"/bin/a"
.LC4:
	.string	"BAD"
	.align 8
.LC5:
	.string	"I'm a parent of process with PID %d. My PID is %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 13 47
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	.loc 1 16 8
	call	fork@PLT
	mov	DWORD PTR -4[rbp], eax
	.loc 1 17 9
	call	getppid@PLT
	mov	DWORD PTR -8[rbp], eax
	.loc 1 18 11
	call	getpid@PLT
	mov	DWORD PTR -12[rbp], eax
	.loc 1 20 5
	cmp	DWORD PTR -4[rbp], -1
	jne	.L5
	.loc 1 21 3
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	.loc 1 22 10
	mov	eax, -1
	jmp	.L6
.L5:
	.loc 1 23 12
	cmp	DWORD PTR -4[rbp], 0
	jne	.L7
.LBB2:
	.loc 1 24 3
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	.loc 1 27 13
	mov	rax, QWORD PTR -40[rbp]
	mov	r8, rax
	mov	ecx, 0
	lea	rax, .LC2[rip]
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	execle@PLT
	mov	DWORD PTR -16[rbp], eax
	.loc 1 29 6
	cmp	DWORD PTR -16[rbp], 0
	jns	.L8
	.loc 1 30 4
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	.loc 1 31 11
	mov	eax, -1
	jmp	.L6
.L7:
.LBE2:
	.loc 1 34 3
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L8:
	.loc 1 37 9
	mov	eax, 0
.L6:
	.loc 1 38 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/unistd.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xc
	.long	.LASF1244
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF1222
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF1223
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF1224
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF1225
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF1226
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF1227
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF1228
	.uleb128 0x6
	.long	.LASF1230
	.byte	0x2
	.byte	0x9a
	.byte	0x19
	.long	0x5c
	.uleb128 0x2
	.long	0x7b
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF1229
	.uleb128 0xe
	.long	0x7b
	.uleb128 0x6
	.long	.LASF1231
	.byte	0x3
	.byte	0x61
	.byte	0x11
	.long	0x6a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF1232
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF1233
	.uleb128 0x2
	.long	0x76
	.uleb128 0x7
	.long	.LASF1234
	.byte	0x4
	.value	0x24d
	.long	0x5c
	.long	0xc2
	.uleb128 0x3
	.long	0xc2
	.uleb128 0x3
	.long	0xc2
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.long	0x82
	.uleb128 0x7
	.long	.LASF1235
	.byte	0x5
	.value	0x164
	.long	0x5c
	.long	0xde
	.uleb128 0x3
	.long	0xc2
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF1236
	.value	0x28a
	.long	0x6a
	.uleb128 0x4
	.long	.LASF1237
	.value	0x28d
	.long	0x6a
	.uleb128 0x4
	.long	.LASF1238
	.value	0x30a
	.long	0x6a
	.uleb128 0xf
	.long	.LASF1245
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.long	0x5c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x191
	.uleb128 0x5
	.long	.LASF1239
	.byte	0xe
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1240
	.byte	0x1a
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF1241
	.byte	0x28
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"pid"
	.byte	0xe
	.byte	0x8
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.long	.LASF1242
	.byte	0xd
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF1243
	.byte	0x13
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.string	"res"
	.byte	0x1b
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"gcd"
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0x5c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.string	"a"
	.byte	0xe
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.string	"b"
	.byte	0x15
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x5
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 6 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro4
	.file 7 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x7
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF387
	.file 8 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro5
	.file 9 "/usr/include/features-time64.h"
	.byte	0x3
	.uleb128 0x188
	.uleb128 0x9
	.file 10 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 11 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x13
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF442
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.file 12 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1e9
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x3
	.uleb128 0x231
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 13 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x232
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x15
	.long	.LASF515
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 14 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x201
	.uleb128 0xe
	.file 15 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 16 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF579
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x18
	.long	.LASF582
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x13
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF442
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.file 18 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.file 19 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x6
	.uleb128 0xe2
	.long	.LASF642
	.byte	0x4
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x2
	.long	.LASF643
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x2
	.long	.LASF644
	.byte	0x4
	.byte	0x4
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x2
	.long	.LASF645
	.byte	0x4
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x2
	.long	.LASF646
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x2
	.long	.LASF647
	.byte	0x4
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.file 26 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.file 27 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x1ae
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro22
	.file 28 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x15
	.long	.LASF687
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x15
	.long	.LASF515
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro24
	.file 29 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x2
	.long	.LASF721
	.byte	0x4
	.file 30 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h"
	.byte	0x3
	.uleb128 0x80
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x2
	.long	.LASF722
	.byte	0x4
	.file 31 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.byte	0x3
	.uleb128 0x81
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0x2
	.long	.LASF723
	.byte	0x4
	.file 32 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h"
	.byte	0x3
	.uleb128 0x82
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x2
	.long	.LASF724
	.byte	0x4
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF555
	.byte	0x3
	.uleb128 0x90
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.file 33 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.byte	0x3
	.uleb128 0x9b
	.uleb128 0x21
	.byte	0x5
	.uleb128 0x14
	.long	.LASF725
	.byte	0x4
	.byte	0x5
	.uleb128 0xab
	.long	.LASF726
	.file 34 "/usr/include/endian.h"
	.byte	0x3
	.uleb128 0xb0
	.uleb128 0x22
	.byte	0x5
	.uleb128 0x13
	.long	.LASF727
	.file 35 "/usr/include/x86_64-linux-gnu/bits/endian.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x23
	.byte	0x7
	.long	.Ldebug_macro26
	.file 36 "/usr/include/x86_64-linux-gnu/bits/endianness.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro29
	.file 37 "/usr/include/x86_64-linux-gnu/bits/byteswap.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x7
	.long	.Ldebug_macro30
	.byte	0x4
	.file 38 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x26
	.byte	0x5
	.uleb128 0x18
	.long	.LASF744
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x4
	.file 39 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.byte	0x3
	.uleb128 0xb3
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x16
	.long	.LASF757
	.file 40 "/usr/include/x86_64-linux-gnu/bits/select.h"
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0x7
	.long	.Ldebug_macro32
	.byte	0x4
	.file 41 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x2
	.long	.LASF762
	.file 42 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2a
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x4
	.byte	0x4
	.file 43 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x2b
	.byte	0x5
	.uleb128 0x2
	.long	.LASF765
	.byte	0x4
	.file 44 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x3
	.long	.LASF766
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro35
	.file 45 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.byte	0x3
	.uleb128 0xe3
	.uleb128 0x2d
	.byte	0x5
	.uleb128 0x14
	.long	.LASF783
	.file 46 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x5
	.uleb128 0x14
	.long	.LASF784
	.file 47 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x2f
	.byte	0x5
	.uleb128 0x13
	.long	.LASF785
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro36
	.byte	0x4
	.file 48 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x30
	.byte	0x5
	.uleb128 0x14
	.long	.LASF797
	.byte	0x4
	.file 49 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.byte	0x3
	.uleb128 0x4c
	.uleb128 0x31
	.byte	0x7
	.long	.Ldebug_macro37
	.byte	0x4
	.file 50 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h"
	.byte	0x3
	.uleb128 0x59
	.uleb128 0x32
	.byte	0x7
	.long	.Ldebug_macro38
	.byte	0x4
	.byte	0x5
	.uleb128 0x71
	.long	.LASF804
	.byte	0x4
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF805
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro39
	.file 51 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h"
	.byte	0x3
	.uleb128 0xca
	.uleb128 0x33
	.byte	0x7
	.long	.Ldebug_macro40
	.byte	0x4
	.file 52 "/usr/include/x86_64-linux-gnu/bits/environments.h"
	.byte	0x3
	.uleb128 0xce
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x16
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro41
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro42
	.byte	0x3
	.uleb128 0xe2
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro43
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro44
	.file 53 "/usr/include/x86_64-linux-gnu/bits/confname.h"
	.byte	0x3
	.uleb128 0x276
	.uleb128 0x35
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x4
	.file 54 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h"
	.byte	0x3
	.uleb128 0x387
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x15
	.long	.LASF1216
	.file 55 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x37
	.byte	0x5
	.uleb128 0x15
	.long	.LASF1217
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro46
	.file 56 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h"
	.byte	0x3
	.uleb128 0x4c2
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.07cd4a96fabe38074afd00c49c181cd0,comdat
.Ldebug_macro2:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0x5
	.uleb128 0
	.long	.LASF239
	.byte	0x5
	.uleb128 0
	.long	.LASF240
	.byte	0x5
	.uleb128 0
	.long	.LASF241
	.byte	0x5
	.uleb128 0
	.long	.LASF242
	.byte	0x5
	.uleb128 0
	.long	.LASF243
	.byte	0x5
	.uleb128 0
	.long	.LASF244
	.byte	0x5
	.uleb128 0
	.long	.LASF245
	.byte	0x5
	.uleb128 0
	.long	.LASF246
	.byte	0x5
	.uleb128 0
	.long	.LASF247
	.byte	0x5
	.uleb128 0
	.long	.LASF248
	.byte	0x5
	.uleb128 0
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0x5
	.uleb128 0
	.long	.LASF251
	.byte	0x5
	.uleb128 0
	.long	.LASF252
	.byte	0x5
	.uleb128 0
	.long	.LASF253
	.byte	0x5
	.uleb128 0
	.long	.LASF254
	.byte	0x5
	.uleb128 0
	.long	.LASF255
	.byte	0x5
	.uleb128 0
	.long	.LASF256
	.byte	0x5
	.uleb128 0
	.long	.LASF257
	.byte	0x5
	.uleb128 0
	.long	.LASF258
	.byte	0x5
	.uleb128 0
	.long	.LASF259
	.byte	0x5
	.uleb128 0
	.long	.LASF260
	.byte	0x5
	.uleb128 0
	.long	.LASF261
	.byte	0x5
	.uleb128 0
	.long	.LASF262
	.byte	0x5
	.uleb128 0
	.long	.LASF263
	.byte	0x5
	.uleb128 0
	.long	.LASF264
	.byte	0x5
	.uleb128 0
	.long	.LASF265
	.byte	0x5
	.uleb128 0
	.long	.LASF266
	.byte	0x5
	.uleb128 0
	.long	.LASF267
	.byte	0x5
	.uleb128 0
	.long	.LASF268
	.byte	0x5
	.uleb128 0
	.long	.LASF269
	.byte	0x5
	.uleb128 0
	.long	.LASF270
	.byte	0x5
	.uleb128 0
	.long	.LASF271
	.byte	0x5
	.uleb128 0
	.long	.LASF272
	.byte	0x5
	.uleb128 0
	.long	.LASF273
	.byte	0x5
	.uleb128 0
	.long	.LASF274
	.byte	0x5
	.uleb128 0
	.long	.LASF275
	.byte	0x5
	.uleb128 0
	.long	.LASF276
	.byte	0x5
	.uleb128 0
	.long	.LASF277
	.byte	0x5
	.uleb128 0
	.long	.LASF278
	.byte	0x5
	.uleb128 0
	.long	.LASF279
	.byte	0x5
	.uleb128 0
	.long	.LASF280
	.byte	0x5
	.uleb128 0
	.long	.LASF281
	.byte	0x5
	.uleb128 0
	.long	.LASF282
	.byte	0x5
	.uleb128 0
	.long	.LASF283
	.byte	0x5
	.uleb128 0
	.long	.LASF284
	.byte	0x5
	.uleb128 0
	.long	.LASF285
	.byte	0x5
	.uleb128 0
	.long	.LASF286
	.byte	0x5
	.uleb128 0
	.long	.LASF287
	.byte	0x5
	.uleb128 0
	.long	.LASF288
	.byte	0x5
	.uleb128 0
	.long	.LASF289
	.byte	0x5
	.uleb128 0
	.long	.LASF290
	.byte	0x5
	.uleb128 0
	.long	.LASF291
	.byte	0x5
	.uleb128 0
	.long	.LASF292
	.byte	0x5
	.uleb128 0
	.long	.LASF293
	.byte	0x5
	.uleb128 0
	.long	.LASF294
	.byte	0x5
	.uleb128 0
	.long	.LASF295
	.byte	0x5
	.uleb128 0
	.long	.LASF296
	.byte	0x5
	.uleb128 0
	.long	.LASF297
	.byte	0x5
	.uleb128 0
	.long	.LASF298
	.byte	0x5
	.uleb128 0
	.long	.LASF299
	.byte	0x5
	.uleb128 0
	.long	.LASF300
	.byte	0x5
	.uleb128 0
	.long	.LASF301
	.byte	0x5
	.uleb128 0
	.long	.LASF302
	.byte	0x5
	.uleb128 0
	.long	.LASF303
	.byte	0x5
	.uleb128 0
	.long	.LASF304
	.byte	0x5
	.uleb128 0
	.long	.LASF305
	.byte	0x5
	.uleb128 0
	.long	.LASF306
	.byte	0x5
	.uleb128 0
	.long	.LASF307
	.byte	0x5
	.uleb128 0
	.long	.LASF308
	.byte	0x5
	.uleb128 0
	.long	.LASF309
	.byte	0x5
	.uleb128 0
	.long	.LASF310
	.byte	0x5
	.uleb128 0
	.long	.LASF311
	.byte	0x5
	.uleb128 0
	.long	.LASF312
	.byte	0x5
	.uleb128 0
	.long	.LASF313
	.byte	0x5
	.uleb128 0
	.long	.LASF314
	.byte	0x5
	.uleb128 0
	.long	.LASF315
	.byte	0x5
	.uleb128 0
	.long	.LASF316
	.byte	0x5
	.uleb128 0
	.long	.LASF317
	.byte	0x5
	.uleb128 0
	.long	.LASF318
	.byte	0x5
	.uleb128 0
	.long	.LASF319
	.byte	0x5
	.uleb128 0
	.long	.LASF320
	.byte	0x5
	.uleb128 0
	.long	.LASF321
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF323
	.byte	0x5
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF325
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF327
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF329
	.byte	0x5
	.uleb128 0
	.long	.LASF330
	.byte	0x5
	.uleb128 0
	.long	.LASF331
	.byte	0x5
	.uleb128 0
	.long	.LASF332
	.byte	0x5
	.uleb128 0
	.long	.LASF333
	.byte	0x5
	.uleb128 0
	.long	.LASF334
	.byte	0x5
	.uleb128 0
	.long	.LASF335
	.byte	0x5
	.uleb128 0
	.long	.LASF336
	.byte	0x5
	.uleb128 0
	.long	.LASF337
	.byte	0x5
	.uleb128 0
	.long	.LASF338
	.byte	0x5
	.uleb128 0
	.long	.LASF339
	.byte	0x5
	.uleb128 0
	.long	.LASF340
	.byte	0x5
	.uleb128 0
	.long	.LASF341
	.byte	0x5
	.uleb128 0
	.long	.LASF342
	.byte	0x5
	.uleb128 0
	.long	.LASF343
	.byte	0x5
	.uleb128 0
	.long	.LASF344
	.byte	0x5
	.uleb128 0
	.long	.LASF345
	.byte	0x5
	.uleb128 0
	.long	.LASF346
	.byte	0x5
	.uleb128 0
	.long	.LASF347
	.byte	0x5
	.uleb128 0
	.long	.LASF348
	.byte	0x5
	.uleb128 0
	.long	.LASF349
	.byte	0x5
	.uleb128 0
	.long	.LASF350
	.byte	0x5
	.uleb128 0
	.long	.LASF351
	.byte	0x5
	.uleb128 0
	.long	.LASF352
	.byte	0x5
	.uleb128 0
	.long	.LASF353
	.byte	0x5
	.uleb128 0
	.long	.LASF354
	.byte	0x5
	.uleb128 0
	.long	.LASF355
	.byte	0x5
	.uleb128 0
	.long	.LASF356
	.byte	0x5
	.uleb128 0
	.long	.LASF357
	.byte	0x5
	.uleb128 0
	.long	.LASF358
	.byte	0x5
	.uleb128 0
	.long	.LASF359
	.byte	0x5
	.uleb128 0
	.long	.LASF360
	.byte	0x5
	.uleb128 0
	.long	.LASF361
	.byte	0x5
	.uleb128 0
	.long	.LASF362
	.byte	0x5
	.uleb128 0
	.long	.LASF363
	.byte	0x5
	.uleb128 0
	.long	.LASF364
	.byte	0x5
	.uleb128 0
	.long	.LASF365
	.byte	0x5
	.uleb128 0
	.long	.LASF366
	.byte	0x5
	.uleb128 0
	.long	.LASF367
	.byte	0x5
	.uleb128 0
	.long	.LASF368
	.byte	0x5
	.uleb128 0
	.long	.LASF369
	.byte	0x5
	.uleb128 0
	.long	.LASF370
	.byte	0x5
	.uleb128 0
	.long	.LASF371
	.byte	0x5
	.uleb128 0
	.long	.LASF372
	.byte	0x5
	.uleb128 0
	.long	.LASF373
	.byte	0x5
	.uleb128 0
	.long	.LASF374
	.byte	0x5
	.uleb128 0
	.long	.LASF375
	.byte	0x5
	.uleb128 0
	.long	.LASF376
	.byte	0x5
	.uleb128 0
	.long	.LASF377
	.byte	0x5
	.uleb128 0
	.long	.LASF378
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.88fdbfd5cf6f83ed579effc3e425f09b,comdat
.Ldebug_macro3:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF379
	.byte	0x5
	.uleb128 0x26
	.long	.LASF380
	.byte	0x5
	.uleb128 0x27
	.long	.LASF381
	.byte	0x5
	.uleb128 0x30
	.long	.LASF382
	.byte	0x5
	.uleb128 0x31
	.long	.LASF383
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF384
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro4:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF385
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF386
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.94fa84bfdc4fa1f32c117154c6101507,comdat
.Ldebug_macro5:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF388
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF389
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF390
	.byte	0x6
	.uleb128 0x80
	.long	.LASF391
	.byte	0x6
	.uleb128 0x81
	.long	.LASF392
	.byte	0x6
	.uleb128 0x82
	.long	.LASF393
	.byte	0x6
	.uleb128 0x83
	.long	.LASF394
	.byte	0x6
	.uleb128 0x84
	.long	.LASF395
	.byte	0x6
	.uleb128 0x85
	.long	.LASF396
	.byte	0x6
	.uleb128 0x86
	.long	.LASF397
	.byte	0x6
	.uleb128 0x87
	.long	.LASF398
	.byte	0x6
	.uleb128 0x88
	.long	.LASF399
	.byte	0x6
	.uleb128 0x89
	.long	.LASF400
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF401
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF402
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF403
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF404
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF405
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF406
	.byte	0x6
	.uleb128 0x90
	.long	.LASF407
	.byte	0x6
	.uleb128 0x91
	.long	.LASF408
	.byte	0x6
	.uleb128 0x92
	.long	.LASF409
	.byte	0x6
	.uleb128 0x93
	.long	.LASF410
	.byte	0x6
	.uleb128 0x94
	.long	.LASF411
	.byte	0x6
	.uleb128 0x95
	.long	.LASF412
	.byte	0x6
	.uleb128 0x96
	.long	.LASF413
	.byte	0x6
	.uleb128 0x97
	.long	.LASF414
	.byte	0x6
	.uleb128 0x98
	.long	.LASF415
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF416
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF417
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF418
	.byte	0x5
	.uleb128 0xba
	.long	.LASF419
	.byte	0x6
	.uleb128 0xeb
	.long	.LASF420
	.byte	0x5
	.uleb128 0xec
	.long	.LASF421
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF422
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF423
	.byte	0x5
	.uleb128 0x101
	.long	.LASF424
	.byte	0x5
	.uleb128 0x108
	.long	.LASF425
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF426
	.byte	0x6
	.uleb128 0x11f
	.long	.LASF427
	.byte	0x5
	.uleb128 0x120
	.long	.LASF428
	.byte	0x6
	.uleb128 0x121
	.long	.LASF429
	.byte	0x5
	.uleb128 0x122
	.long	.LASF430
	.byte	0x5
	.uleb128 0x145
	.long	.LASF431
	.byte	0x5
	.uleb128 0x149
	.long	.LASF432
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF433
	.byte	0x5
	.uleb128 0x151
	.long	.LASF434
	.byte	0x5
	.uleb128 0x155
	.long	.LASF435
	.byte	0x6
	.uleb128 0x156
	.long	.LASF391
	.byte	0x5
	.uleb128 0x157
	.long	.LASF425
	.byte	0x6
	.uleb128 0x158
	.long	.LASF390
	.byte	0x5
	.uleb128 0x159
	.long	.LASF424
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF436
	.byte	0x6
	.uleb128 0x15e
	.long	.LASF437
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF438
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.21825217995af4880cdf0ea22ad93ab2,comdat
.Ldebug_macro6:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF439
	.byte	0x5
	.uleb128 0xb
	.long	.LASF440
	.byte	0x5
	.uleb128 0xf
	.long	.LASF441
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.395.96ec08e97b0d70ff094b9574a8620dfe,comdat
.Ldebug_macro7:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF443
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF444
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF445
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF446
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF447
	.byte	0x6
	.uleb128 0x1db
	.long	.LASF448
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF449
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF450
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF451
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF452
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.20.d13119a82209af2f0bb8316a396922fa,comdat
.Ldebug_macro8:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF453
	.byte	0x2
	.uleb128 0x23
	.string	"__P"
	.byte	0x6
	.uleb128 0x24
	.long	.LASF454
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF455
	.byte	0x5
	.uleb128 0x32
	.long	.LASF456
	.byte	0x5
	.uleb128 0x39
	.long	.LASF457
	.byte	0x5
	.uleb128 0x41
	.long	.LASF458
	.byte	0x5
	.uleb128 0x42
	.long	.LASF459
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF460
	.byte	0x5
	.uleb128 0x50
	.long	.LASF461
	.byte	0x5
	.uleb128 0x51
	.long	.LASF462
	.byte	0x5
	.uleb128 0x52
	.long	.LASF463
	.byte	0x5
	.uleb128 0x76
	.long	.LASF464
	.byte	0x5
	.uleb128 0x77
	.long	.LASF465
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF466
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF467
	.byte	0x5
	.uleb128 0x80
	.long	.LASF468
	.byte	0x5
	.uleb128 0x88
	.long	.LASF469
	.byte	0x5
	.uleb128 0x89
	.long	.LASF470
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF471
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF472
	.byte	0x5
	.uleb128 0x97
	.long	.LASF473
	.byte	0x5
	.uleb128 0x98
	.long	.LASF474
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF475
	.byte	0x5
	.uleb128 0xce
	.long	.LASF476
	.byte	0x5
	.uleb128 0xda
	.long	.LASF477
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF478
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF479
	.byte	0x5
	.uleb128 0x100
	.long	.LASF480
	.byte	0x5
	.uleb128 0x102
	.long	.LASF481
	.byte	0x5
	.uleb128 0x105
	.long	.LASF482
	.byte	0x5
	.uleb128 0x106
	.long	.LASF483
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF484
	.byte	0x5
	.uleb128 0x123
	.long	.LASF485
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF486
	.byte	0x5
	.uleb128 0x136
	.long	.LASF487
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF488
	.byte	0x5
	.uleb128 0x143
	.long	.LASF489
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF490
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF491
	.byte	0x5
	.uleb128 0x155
	.long	.LASF492
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF493
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF494
	.byte	0x5
	.uleb128 0x176
	.long	.LASF495
	.byte	0x5
	.uleb128 0x182
	.long	.LASF496
	.byte	0x5
	.uleb128 0x188
	.long	.LASF497
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF498
	.byte	0x5
	.uleb128 0x198
	.long	.LASF499
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF500
	.byte	0x6
	.uleb128 0x1a9
	.long	.LASF501
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF502
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF504
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF505
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF506
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF507
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF508
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF509
	.byte	0x5
	.uleb128 0x200
	.long	.LASF510
	.byte	0x5
	.uleb128 0x201
	.long	.LASF511
	.byte	0x5
	.uleb128 0x216
	.long	.LASF512
	.byte	0x6
	.uleb128 0x21c
	.long	.LASF513
	.byte	0x5
	.uleb128 0x220
	.long	.LASF514
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.618.aa66ffd9944c5208c2ff171a52d6bbbe,comdat
.Ldebug_macro9:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF516
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF517
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF518
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF519
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF520
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF521
	.byte	0x5
	.uleb128 0x271
	.long	.LASF522
	.byte	0x5
	.uleb128 0x272
	.long	.LASF523
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF524
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF525
	.byte	0x5
	.uleb128 0x290
	.long	.LASF526
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF527
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF528
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF529
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF530
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF531
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF532
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.7865f4f7062bab1c535c1f73f43aa9b9,comdat
.Ldebug_macro10:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF533
	.byte	0x5
	.uleb128 0xb
	.long	.LASF534
	.byte	0x5
	.uleb128 0xc
	.long	.LASF535
	.byte	0x5
	.uleb128 0xd
	.long	.LASF536
	.byte	0x5
	.uleb128 0xe
	.long	.LASF537
	.byte	0x5
	.uleb128 0xf
	.long	.LASF538
	.byte	0x5
	.uleb128 0x10
	.long	.LASF539
	.byte	0x5
	.uleb128 0x11
	.long	.LASF540
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.e7d4b6f4649b40d3e0dce357ae78234f,comdat
.Ldebug_macro11:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF541
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF542
	.byte	0x6
	.uleb128 0x43
	.long	.LASF543
	.byte	0x5
	.uleb128 0x47
	.long	.LASF544
	.byte	0x6
	.uleb128 0x49
	.long	.LASF545
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF546
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF547
	.byte	0x5
	.uleb128 0x53
	.long	.LASF548
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF549
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF550
	.byte	0x6
	.uleb128 0x60
	.long	.LASF551
	.byte	0x5
	.uleb128 0x64
	.long	.LASF552
	.byte	0x6
	.uleb128 0x69
	.long	.LASF553
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF554
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro12:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF555
	.byte	0x5
	.uleb128 0x20
	.long	.LASF556
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.185.cbb642e1ccd385e8aa504b15cb7fb086,comdat
.Ldebug_macro13:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF557
	.byte	0x5
	.uleb128 0xba
	.long	.LASF558
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF559
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF560
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF561
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF562
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF563
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF564
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF565
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF566
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF567
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF568
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF569
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF570
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF571
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF572
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF573
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF574
	.byte	0x6
	.uleb128 0xed
	.long	.LASF575
	.byte	0x6
	.uleb128 0x18f
	.long	.LASF576
	.byte	0x5
	.uleb128 0x194
	.long	.LASF577
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF578
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro14:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF580
	.byte	0x5
	.uleb128 0x27
	.long	.LASF581
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro15:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF583
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF584
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF585
	.byte	0x5
	.uleb128 0x70
	.long	.LASF586
	.byte	0x5
	.uleb128 0x71
	.long	.LASF587
	.byte	0x5
	.uleb128 0x72
	.long	.LASF588
	.byte	0x5
	.uleb128 0x80
	.long	.LASF589
	.byte	0x5
	.uleb128 0x81
	.long	.LASF590
	.byte	0x5
	.uleb128 0x82
	.long	.LASF591
	.byte	0x5
	.uleb128 0x83
	.long	.LASF592
	.byte	0x5
	.uleb128 0x84
	.long	.LASF593
	.byte	0x5
	.uleb128 0x85
	.long	.LASF594
	.byte	0x5
	.uleb128 0x86
	.long	.LASF595
	.byte	0x5
	.uleb128 0x87
	.long	.LASF596
	.byte	0x5
	.uleb128 0x89
	.long	.LASF597
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.ccf5919b8e01b553263cf8f4ab1d5fde,comdat
.Ldebug_macro16:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF598
	.byte	0x5
	.uleb128 0x22
	.long	.LASF599
	.byte	0x5
	.uleb128 0x23
	.long	.LASF600
	.byte	0x5
	.uleb128 0x26
	.long	.LASF601
	.byte	0x5
	.uleb128 0x27
	.long	.LASF602
	.byte	0x5
	.uleb128 0x28
	.long	.LASF603
	.byte	0x5
	.uleb128 0x29
	.long	.LASF604
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF605
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF606
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF607
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF608
	.byte	0x5
	.uleb128 0x33
	.long	.LASF609
	.byte	0x5
	.uleb128 0x34
	.long	.LASF610
	.byte	0x5
	.uleb128 0x35
	.long	.LASF611
	.byte	0x5
	.uleb128 0x36
	.long	.LASF612
	.byte	0x5
	.uleb128 0x37
	.long	.LASF613
	.byte	0x5
	.uleb128 0x38
	.long	.LASF614
	.byte	0x5
	.uleb128 0x39
	.long	.LASF615
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF616
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF617
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF618
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF619
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF620
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF621
	.byte	0x5
	.uleb128 0x40
	.long	.LASF622
	.byte	0x5
	.uleb128 0x41
	.long	.LASF623
	.byte	0x5
	.uleb128 0x42
	.long	.LASF624
	.byte	0x5
	.uleb128 0x43
	.long	.LASF625
	.byte	0x5
	.uleb128 0x44
	.long	.LASF626
	.byte	0x5
	.uleb128 0x45
	.long	.LASF627
	.byte	0x5
	.uleb128 0x46
	.long	.LASF628
	.byte	0x5
	.uleb128 0x47
	.long	.LASF629
	.byte	0x5
	.uleb128 0x48
	.long	.LASF630
	.byte	0x5
	.uleb128 0x49
	.long	.LASF631
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF632
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF633
	.byte	0x5
	.uleb128 0x51
	.long	.LASF634
	.byte	0x5
	.uleb128 0x54
	.long	.LASF635
	.byte	0x5
	.uleb128 0x57
	.long	.LASF636
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF637
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF638
	.byte	0x5
	.uleb128 0x67
	.long	.LASF639
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro17:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF640
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF641
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro18:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF648
	.byte	0x5
	.uleb128 0x66
	.long	.LASF649
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF650
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF651
	.byte	0x5
	.uleb128 0x70
	.long	.LASF652
	.byte	0x5
	.uleb128 0x72
	.long	.LASF653
	.byte	0x5
	.uleb128 0x73
	.long	.LASF654
	.byte	0x5
	.uleb128 0x75
	.long	.LASF655
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.53.78a7f18f3bc87ded52f05aa6f6a64310,comdat
.Ldebug_macro19:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x35
	.long	.LASF656
	.byte	0x5
	.uleb128 0x43
	.long	.LASF657
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF658
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF659
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF660
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF661
	.byte	0x5
	.uleb128 0x63
	.long	.LASF662
	.byte	0x5
	.uleb128 0x68
	.long	.LASF663
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF664
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF665
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF666
	.byte	0x5
	.uleb128 0x78
	.long	.LASF667
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.e4b00b560d878dcfbc6635b3406640c5,comdat
.Ldebug_macro20:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF668
	.byte	0x5
	.uleb128 0x19
	.long	.LASF669
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF670
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF671
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF672
	.byte	0x6
	.uleb128 0x24
	.long	.LASF673
	.byte	0x5
	.uleb128 0x25
	.long	.LASF674
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.147.dbd603e98db8f3e1583090fab2abd54e,comdat
.Ldebug_macro21:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x93
	.long	.LASF675
	.byte	0x5
	.uleb128 0x94
	.long	.LASF676
	.byte	0x5
	.uleb128 0x95
	.long	.LASF677
	.byte	0x6
	.uleb128 0xb4
	.long	.LASF678
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF679
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro22:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF680
	.byte	0x5
	.uleb128 0x21
	.long	.LASF681
	.byte	0x5
	.uleb128 0x29
	.long	.LASF682
	.byte	0x5
	.uleb128 0x31
	.long	.LASF683
	.byte	0x5
	.uleb128 0x37
	.long	.LASF684
	.byte	0x5
	.uleb128 0x42
	.long	.LASF685
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF686
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro23:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF688
	.byte	0x5
	.uleb128 0x23
	.long	.LASF689
	.byte	0x5
	.uleb128 0x24
	.long	.LASF690
	.byte	0x5
	.uleb128 0x25
	.long	.LASF691
	.byte	0x5
	.uleb128 0x26
	.long	.LASF692
	.byte	0x5
	.uleb128 0x34
	.long	.LASF693
	.byte	0x5
	.uleb128 0x35
	.long	.LASF694
	.byte	0x5
	.uleb128 0x36
	.long	.LASF695
	.byte	0x5
	.uleb128 0x37
	.long	.LASF696
	.byte	0x5
	.uleb128 0x38
	.long	.LASF697
	.byte	0x5
	.uleb128 0x39
	.long	.LASF698
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF699
	.byte	0x5
	.uleb128 0x46
	.long	.LASF700
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF701
	.byte	0x5
	.uleb128 0x69
	.long	.LASF702
	.byte	0x5
	.uleb128 0x71
	.long	.LASF703
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF704
	.byte	0x5
	.uleb128 0x97
	.long	.LASF705
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF706
	.byte	0x5
	.uleb128 0xab
	.long	.LASF707
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF708
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.23.882ecbf54662e1f16e101552381a65da,comdat
.Ldebug_macro24:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF709
	.byte	0x5
	.uleb128 0x28
	.long	.LASF710
	.byte	0x5
	.uleb128 0x33
	.long	.LASF711
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF712
	.byte	0x5
	.uleb128 0x41
	.long	.LASF713
	.byte	0x5
	.uleb128 0x46
	.long	.LASF714
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF715
	.byte	0x5
	.uleb128 0x50
	.long	.LASF716
	.byte	0x5
	.uleb128 0x62
	.long	.LASF717
	.byte	0x5
	.uleb128 0x68
	.long	.LASF718
	.byte	0x5
	.uleb128 0x74
	.long	.LASF719
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF720
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.237.1f61be91cef0ba0db0d8c26bca1f54cc,comdat
.Ldebug_macro25:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xed
	.long	.LASF575
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF578
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.20.efabd1018df5d7b4052c27dc6bdd5ce5,comdat
.Ldebug_macro26:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF728
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF729
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF730
	.byte	0x5
	.uleb128 0x20
	.long	.LASF731
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endianness.h.2.2c6a211f7909f3af5e9e9cfa3b6b63c8,comdat
.Ldebug_macro27:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF732
	.byte	0x5
	.uleb128 0x9
	.long	.LASF733
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.40.9e5d395adda2f4eb53ae69b69b664084,comdat
.Ldebug_macro28:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF734
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF735
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.27.4c4f94262c4eaee2982fe00ed1b4f173,comdat
.Ldebug_macro29:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF736
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF737
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF738
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF739
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.byteswap.h.24.5363c019348146aada5aeadf51456576,comdat
.Ldebug_macro30:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF740
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF741
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF742
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF743
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.39.30a606dbd99b6c3df61c1f06dbdabd4e,comdat
.Ldebug_macro31:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF745
	.byte	0x5
	.uleb128 0x28
	.long	.LASF746
	.byte	0x5
	.uleb128 0x29
	.long	.LASF747
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF748
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF749
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF750
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF751
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF752
	.byte	0x5
	.uleb128 0x31
	.long	.LASF753
	.byte	0x5
	.uleb128 0x32
	.long	.LASF754
	.byte	0x5
	.uleb128 0x33
	.long	.LASF755
	.byte	0x5
	.uleb128 0x34
	.long	.LASF756
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.25.df647f04fce2d846f134ede6a14ddf91,comdat
.Ldebug_macro32:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.long	.LASF758
	.byte	0x5
	.uleb128 0x20
	.long	.LASF759
	.byte	0x5
	.uleb128 0x22
	.long	.LASF760
	.byte	0x5
	.uleb128 0x24
	.long	.LASF761
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__sigset_t.h.2.6b1ab6ff3d7b8fd9c0c42b0d80afbd80,comdat
.Ldebug_macro33:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF763
	.byte	0x5
	.uleb128 0x4
	.long	.LASF764
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.44.887a4ff60aa97fcd9c1be017735e1675,comdat
.Ldebug_macro34:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF767
	.byte	0x6
	.uleb128 0x34
	.long	.LASF768
	.byte	0x5
	.uleb128 0x36
	.long	.LASF769
	.byte	0x5
	.uleb128 0x37
	.long	.LASF770
	.byte	0x5
	.uleb128 0x38
	.long	.LASF771
	.byte	0x5
	.uleb128 0x44
	.long	.LASF772
	.byte	0x5
	.uleb128 0x49
	.long	.LASF773
	.byte	0x5
	.uleb128 0x50
	.long	.LASF774
	.byte	0x5
	.uleb128 0x55
	.long	.LASF775
	.byte	0x5
	.uleb128 0x56
	.long	.LASF776
	.byte	0x5
	.uleb128 0x57
	.long	.LASF777
	.byte	0x5
	.uleb128 0x58
	.long	.LASF778
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.186.489a4ed8f2d29cd358843490f54ddea5,comdat
.Ldebug_macro35:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xba
	.long	.LASF779
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF780
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF781
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF782
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pthreadtypesarch.h.25.6063cba99664c916e22d3a912bcc348a,comdat
.Ldebug_macro36:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.long	.LASF786
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF787
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF788
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF789
	.byte	0x5
	.uleb128 0x29
	.long	.LASF790
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF791
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF792
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF793
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF794
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF795
	.byte	0x5
	.uleb128 0x30
	.long	.LASF796
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_mutex.h.20.ed51f515172b9be99e450ba83eb5dd99,comdat
.Ldebug_macro37:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF798
	.byte	0x5
	.uleb128 0x25
	.long	.LASF799
	.byte	0x5
	.uleb128 0x38
	.long	.LASF800
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_rwlock.h.21.0254880f2904e3833fb8ae683e0f0330,comdat
.Ldebug_macro38:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF801
	.byte	0x5
	.uleb128 0x28
	.long	.LASF802
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF803
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.23.e34f3a5c100123d9385c8b91a86a6783,comdat
.Ldebug_macro39:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF806
	.byte	0x5
	.uleb128 0x22
	.long	.LASF807
	.byte	0x5
	.uleb128 0x35
	.long	.LASF808
	.byte	0x5
	.uleb128 0x43
	.long	.LASF809
	.byte	0x5
	.uleb128 0x46
	.long	.LASF810
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF811
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF812
	.byte	0x5
	.uleb128 0x52
	.long	.LASF813
	.byte	0x5
	.uleb128 0x56
	.long	.LASF814
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF815
	.byte	0x5
	.uleb128 0x64
	.long	.LASF816
	.byte	0x5
	.uleb128 0x67
	.long	.LASF817
	.byte	0x5
	.uleb128 0x68
	.long	.LASF818
	.byte	0x5
	.uleb128 0x69
	.long	.LASF819
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF820
	.byte	0x5
	.uleb128 0x70
	.long	.LASF821
	.byte	0x5
	.uleb128 0x73
	.long	.LASF822
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.posix_opt.h.20.21a42956ee7763f6aa309b86c7756272,comdat
.Ldebug_macro40:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF823
	.byte	0x5
	.uleb128 0x17
	.long	.LASF824
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF825
	.byte	0x5
	.uleb128 0x20
	.long	.LASF826
	.byte	0x5
	.uleb128 0x23
	.long	.LASF827
	.byte	0x5
	.uleb128 0x26
	.long	.LASF828
	.byte	0x5
	.uleb128 0x29
	.long	.LASF829
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF830
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF831
	.byte	0x5
	.uleb128 0x32
	.long	.LASF832
	.byte	0x5
	.uleb128 0x35
	.long	.LASF833
	.byte	0x5
	.uleb128 0x39
	.long	.LASF834
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF835
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF836
	.byte	0x5
	.uleb128 0x42
	.long	.LASF837
	.byte	0x5
	.uleb128 0x45
	.long	.LASF838
	.byte	0x5
	.uleb128 0x48
	.long	.LASF839
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF840
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF841
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF842
	.byte	0x5
	.uleb128 0x52
	.long	.LASF843
	.byte	0x5
	.uleb128 0x55
	.long	.LASF844
	.byte	0x5
	.uleb128 0x58
	.long	.LASF845
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF846
	.byte	0x5
	.uleb128 0x60
	.long	.LASF847
	.byte	0x5
	.uleb128 0x63
	.long	.LASF848
	.byte	0x5
	.uleb128 0x67
	.long	.LASF849
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF850
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF851
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF852
	.byte	0x5
	.uleb128 0x70
	.long	.LASF853
	.byte	0x5
	.uleb128 0x72
	.long	.LASF854
	.byte	0x5
	.uleb128 0x75
	.long	.LASF855
	.byte	0x5
	.uleb128 0x78
	.long	.LASF856
	.byte	0x5
	.uleb128 0x79
	.long	.LASF857
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF858
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF859
	.byte	0x5
	.uleb128 0x80
	.long	.LASF860
	.byte	0x5
	.uleb128 0x83
	.long	.LASF861
	.byte	0x5
	.uleb128 0x86
	.long	.LASF862
	.byte	0x5
	.uleb128 0x89
	.long	.LASF863
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF864
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF865
	.byte	0x5
	.uleb128 0x92
	.long	.LASF866
	.byte	0x5
	.uleb128 0x95
	.long	.LASF867
	.byte	0x5
	.uleb128 0x98
	.long	.LASF868
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF869
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF870
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF871
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF872
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF873
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF874
	.byte	0x5
	.uleb128 0xad
	.long	.LASF875
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF876
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF877
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF878
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF879
	.byte	0x5
	.uleb128 0xba
	.long	.LASF880
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF881
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF882
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF883
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF884
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.environments.h.56.c5802092ccc191baeb41f8d355bb878f,comdat
.Ldebug_macro41:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x38
	.long	.LASF885
	.byte	0x5
	.uleb128 0x39
	.long	.LASF886
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF887
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF888
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF889
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF890
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF891
	.byte	0x5
	.uleb128 0x60
	.long	.LASF892
	.byte	0x5
	.uleb128 0x65
	.long	.LASF893
	.byte	0x5
	.uleb128 0x66
	.long	.LASF894
	.byte	0x5
	.uleb128 0x68
	.long	.LASF895
	.byte	0x5
	.uleb128 0x69
	.long	.LASF896
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.210.b40c6c15db1d0b653f8dce03f258da9c,comdat
.Ldebug_macro42:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF897
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF898
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF899
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF555
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF556
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.237.e19404c7e1259e8e5fb3f9b7fddfda02,comdat
.Ldebug_macro43:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xed
	.long	.LASF575
	.byte	0x6
	.uleb128 0x18f
	.long	.LASF576
	.byte	0x5
	.uleb128 0x194
	.long	.LASF577
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF578
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.256.afd745de2c03742f75ac85ed821b1299,comdat
.Ldebug_macro44:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x100
	.long	.LASF900
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF901
	.byte	0x5
	.uleb128 0x113
	.long	.LASF902
	.byte	0x5
	.uleb128 0x119
	.long	.LASF903
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF904
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF905
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF906
	.byte	0x5
	.uleb128 0x147
	.long	.LASF907
	.byte	0x5
	.uleb128 0x148
	.long	.LASF908
	.byte	0x5
	.uleb128 0x149
	.long	.LASF909
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.confname.h.27.257966e7e49af2ab4cb41132b3606cbf,comdat
.Ldebug_macro45:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF910
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF911
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF912
	.byte	0x5
	.uleb128 0x21
	.long	.LASF913
	.byte	0x5
	.uleb128 0x23
	.long	.LASF914
	.byte	0x5
	.uleb128 0x25
	.long	.LASF915
	.byte	0x5
	.uleb128 0x27
	.long	.LASF916
	.byte	0x5
	.uleb128 0x29
	.long	.LASF917
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF918
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF919
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x5
	.uleb128 0x31
	.long	.LASF921
	.byte	0x5
	.uleb128 0x33
	.long	.LASF922
	.byte	0x5
	.uleb128 0x35
	.long	.LASF923
	.byte	0x5
	.uleb128 0x37
	.long	.LASF924
	.byte	0x5
	.uleb128 0x39
	.long	.LASF925
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF926
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF927
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF928
	.byte	0x5
	.uleb128 0x41
	.long	.LASF929
	.byte	0x5
	.uleb128 0x43
	.long	.LASF930
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF931
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF932
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF933
	.byte	0x5
	.uleb128 0x50
	.long	.LASF934
	.byte	0x5
	.uleb128 0x52
	.long	.LASF935
	.byte	0x5
	.uleb128 0x54
	.long	.LASF936
	.byte	0x5
	.uleb128 0x56
	.long	.LASF937
	.byte	0x5
	.uleb128 0x58
	.long	.LASF938
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF939
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF940
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF941
	.byte	0x5
	.uleb128 0x60
	.long	.LASF942
	.byte	0x5
	.uleb128 0x62
	.long	.LASF943
	.byte	0x5
	.uleb128 0x64
	.long	.LASF944
	.byte	0x5
	.uleb128 0x66
	.long	.LASF945
	.byte	0x5
	.uleb128 0x68
	.long	.LASF946
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF947
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF948
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF949
	.byte	0x5
	.uleb128 0x70
	.long	.LASF950
	.byte	0x5
	.uleb128 0x72
	.long	.LASF951
	.byte	0x5
	.uleb128 0x74
	.long	.LASF952
	.byte	0x5
	.uleb128 0x76
	.long	.LASF953
	.byte	0x5
	.uleb128 0x78
	.long	.LASF954
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF955
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF956
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF957
	.byte	0x5
	.uleb128 0x80
	.long	.LASF958
	.byte	0x5
	.uleb128 0x82
	.long	.LASF959
	.byte	0x5
	.uleb128 0x84
	.long	.LASF960
	.byte	0x5
	.uleb128 0x86
	.long	.LASF961
	.byte	0x5
	.uleb128 0x87
	.long	.LASF962
	.byte	0x5
	.uleb128 0x89
	.long	.LASF963
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF964
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF965
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF966
	.byte	0x5
	.uleb128 0x91
	.long	.LASF967
	.byte	0x5
	.uleb128 0x96
	.long	.LASF968
	.byte	0x5
	.uleb128 0x98
	.long	.LASF969
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF970
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF971
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF972
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF973
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF974
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF975
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF976
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF977
	.byte	0x5
	.uleb128 0xab
	.long	.LASF978
	.byte	0x5
	.uleb128 0xad
	.long	.LASF979
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF980
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF981
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF982
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF983
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF984
	.byte	0x5
	.uleb128 0xba
	.long	.LASF985
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF986
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF987
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF988
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF989
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF990
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF991
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF992
	.byte	0x5
	.uleb128 0xca
	.long	.LASF993
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF994
	.byte	0x5
	.uleb128 0xce
	.long	.LASF995
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF996
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF997
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF998
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF999
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1000
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1001
	.byte	0x5
	.uleb128 0xde
	.long	.LASF1002
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1003
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1004
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF1005
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1006
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF1007
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1008
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1009
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1010
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1011
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF1012
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1013
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1014
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1015
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1016
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF1017
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x123
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x125
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x127
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x129
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x133
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x135
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x137
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x141
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x145
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x148
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x155
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x157
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x159
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x160
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x162
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x165
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x167
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x169
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x171
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x173
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x175
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x177
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x179
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x183
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x185
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x187
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x191
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x193
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x195
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x197
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x199
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x1b9
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x1f9
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x200
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x20c
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x222
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x225
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x22f
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x236
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x23a
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x245
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x247
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x24b
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x24f
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x251
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x25b
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x287
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x28b
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x291
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x293
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x295
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x29f
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x2a8
	.long	.LASF1215
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.1108.0d9b49b7dac9f8f76c53696f4c15e077,comdat
.Ldebug_macro46:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x454
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x455
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x456
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x457
	.long	.LASF1221
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF659:
	.string	"_IOFBF 0"
.LASF1093:
	.string	"_SC_SPORADIC_SERVER _SC_SPORADIC_SERVER"
.LASF597:
	.string	"__STD_TYPE typedef"
.LASF782:
	.string	"__fsfilcnt_t_defined "
.LASF1151:
	.string	"_CS_POSIX_V6_WIDTH_RESTRICTED_ENVS _CS_V6_WIDTH_RESTRICTED_ENVS"
.LASF440:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF255:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF319:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1224:
	.string	"unsigned char"
.LASF682:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF829:
	.string	"_POSIX_MAPPED_FILES 200809L"
.LASF57:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF333:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF112:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF690:
	.string	"__HAVE_FLOAT64 1"
.LASF928:
	.string	"_PC_ALLOC_SIZE_MIN _PC_ALLOC_SIZE_MIN"
.LASF889:
	.string	"_POSIX_V6_LP64_OFF64 1"
.LASF423:
	.string	"__USE_ISOC11 1"
.LASF845:
	.string	"_POSIX_THREAD_PRIO_INHERIT 200809L"
.LASF934:
	.string	"_SC_NGROUPS_MAX _SC_NGROUPS_MAX"
.LASF675:
	.string	"stdin stdin"
.LASF249:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF985:
	.string	"_SC_PII _SC_PII"
.LASF748:
	.string	"le16toh(x) __uint16_identity (x)"
.LASF702:
	.string	"__f64(x) x ##f64"
.LASF339:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF956:
	.string	"_SC_AIO_PRIO_DELTA_MAX _SC_AIO_PRIO_DELTA_MAX"
.LASF318:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF966:
	.string	"_SC_SIGQUEUE_MAX _SC_SIGQUEUE_MAX"
.LASF23:
	.string	"__LP64__ 1"
.LASF1146:
	.string	"_SC_THREAD_ROBUST_PRIO_PROTECT _SC_THREAD_ROBUST_PRIO_PROTECT"
.LASF825:
	.string	"_POSIX_SAVED_IDS 1"
.LASF539:
	.string	"__stub_sigreturn "
.LASF403:
	.string	"__USE_XOPEN2K8XSI"
.LASF664:
	.string	"SEEK_SET 0"
.LASF242:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF502:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF1052:
	.string	"_SC_NL_ARGMAX _SC_NL_ARGMAX"
.LASF751:
	.string	"be32toh(x) __bswap_32 (x)"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF828:
	.string	"_POSIX_FSYNC 200809L"
.LASF516:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF722:
	.string	"__clockid_t_defined 1"
.LASF1010:
	.string	"_SC_THREAD_ATTR_STACKADDR _SC_THREAD_ATTR_STACKADDR"
.LASF477:
	.string	"__flexarr []"
.LASF193:
	.string	"__DECIMAL_DIG__ 21"
.LASF844:
	.string	"_POSIX_THREAD_ATTR_STACKADDR 200809L"
.LASF1011:
	.string	"_SC_THREAD_ATTR_STACKSIZE _SC_THREAD_ATTR_STACKSIZE"
.LASF1226:
	.string	"signed char"
.LASF448:
	.string	"__GNU_LIBRARY__"
.LASF143:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF176:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF1042:
	.string	"_SC_NZERO _SC_NZERO"
.LASF1124:
	.string	"_SC_LEVEL2_CACHE_SIZE _SC_LEVEL2_CACHE_SIZE"
.LASF487:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF1123:
	.string	"_SC_LEVEL1_DCACHE_LINESIZE _SC_LEVEL1_DCACHE_LINESIZE"
.LASF303:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF140:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF1218:
	.string	"F_ULOCK 0"
.LASF36:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF950:
	.string	"_SC_MEMORY_PROTECTION _SC_MEMORY_PROTECTION"
.LASF309:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF167:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF51:
	.string	"__INT8_TYPE__ signed char"
.LASF1035:
	.string	"_SC_CHAR_MAX _SC_CHAR_MAX"
.LASF226:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF872:
	.string	"_POSIX_MONOTONIC_CLOCK 0"
.LASF964:
	.string	"_SC_SEM_NSEMS_MAX _SC_SEM_NSEMS_MAX"
.LASF1142:
	.string	"_SC_TRACE_SYS_MAX _SC_TRACE_SYS_MAX"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF42:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF1237:
	.string	"getppid"
.LASF127:
	.string	"__UINT8_C(c) c"
.LASF1006:
	.string	"_SC_THREAD_DESTRUCTOR_ITERATIONS _SC_THREAD_DESTRUCTOR_ITERATIONS"
.LASF52:
	.string	"__INT16_TYPE__ short int"
.LASF373:
	.string	"linux 1"
.LASF949:
	.string	"_SC_MEMLOCK_RANGE _SC_MEMLOCK_RANGE"
.LASF832:
	.string	"_POSIX_MEMORY_PROTECTION 200809L"
.LASF848:
	.string	"_POSIX_THREAD_ROBUST_PRIO_PROTECT -1"
.LASF1201:
	.string	"_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS"
.LASF491:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF325:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF1063:
	.string	"_SC_XOPEN_REALTIME _SC_XOPEN_REALTIME"
.LASF770:
	.string	"__FD_ELT(d) ((d) / __NFDBITS)"
.LASF6:
	.string	"__STDC_HOSTED__ 1"
.LASF642:
	.string	"__STD_TYPE"
.LASF758:
	.string	"__FD_ZERO(s) do { unsigned int __i; fd_set *__arr = (s); for (__i = 0; __i < sizeof (fd_set) / sizeof (__fd_mask); ++__i) __FDS_BITS (__arr)[__i] = 0; } while (0)"
.LASF351:
	.string	"__x86_64 1"
.LASF1020:
	.string	"_SC_ATEXIT_MAX _SC_ATEXIT_MAX"
.LASF763:
	.string	"____sigset_t_defined "
.LASF464:
	.string	"__P(args) args"
.LASF726:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF1016:
	.string	"_SC_NPROCESSORS_CONF _SC_NPROCESSORS_CONF"
.LASF791:
	.string	"__SIZEOF_PTHREAD_COND_T 48"
.LASF558:
	.string	"__SIZE_T__ "
.LASF229:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF579:
	.string	"__need___va_list "
.LASF884:
	.string	"_POSIX_TYPED_MEMORY_OBJECTS -1"
.LASF109:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF610:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF719:
	.string	"__daddr_t_defined "
.LASF163:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1199:
	.string	"_CS_POSIX_V7_ILP32_OFF32_LDFLAGS _CS_POSIX_V7_ILP32_OFF32_LDFLAGS"
.LASF858:
	.string	"_LFS64_STDIO 1"
.LASF222:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF187:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF836:
	.string	"_XOPEN_REALTIME 1"
.LASF1243:
	.string	"my_pid"
.LASF704:
	.string	"__f64x(x) x ##f64x"
.LASF967:
	.string	"_SC_TIMER_MAX _SC_TIMER_MAX"
.LASF773:
	.string	"FD_SETSIZE __FD_SETSIZE"
.LASF882:
	.string	"_POSIX_TRACE_INHERIT -1"
.LASF681:
	.string	"__HAVE_FLOAT128 1"
.LASF689:
	.string	"__HAVE_FLOAT32 1"
.LASF217:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF936:
	.string	"_SC_STREAM_MAX _SC_STREAM_MAX"
.LASF409:
	.string	"__USE_DYNAMIC_STACK_SIZE"
.LASF239:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF574:
	.string	"__size_t "
.LASF636:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF225:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF594:
	.string	"__ULONG32_TYPE unsigned int"
.LASF267:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF452:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF892:
	.string	"__ILP32_OFF32_LDFLAGS \"-m32\""
.LASF1087:
	.string	"_SC_SPIN_LOCKS _SC_SPIN_LOCKS"
.LASF479:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF562:
	.string	"_T_SIZE "
.LASF1212:
	.string	"_CS_POSIX_V7_LPBIG_OFFBIG_LIBS _CS_POSIX_V7_LPBIG_OFFBIG_LIBS"
.LASF1162:
	.string	"_CS_LFS64_CFLAGS _CS_LFS64_CFLAGS"
.LASF35:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF1104:
	.string	"_SC_2_PBS_MESSAGE _SC_2_PBS_MESSAGE"
.LASF224:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF897:
	.string	"STDIN_FILENO 0"
.LASF317:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF324:
	.string	"__NO_INLINE__ 1"
.LASF737:
	.string	"BIG_ENDIAN __BIG_ENDIAN"
.LASF1155:
	.string	"_CS_POSIX_V5_WIDTH_RESTRICTED_ENVS _CS_V5_WIDTH_RESTRICTED_ENVS"
.LASF921:
	.string	"_PC_PRIO_IO _PC_PRIO_IO"
.LASF266:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1067:
	.string	"_SC_BASE _SC_BASE"
.LASF1213:
	.string	"_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS"
.LASF406:
	.string	"__USE_FILE_OFFSET64"
.LASF238:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF883:
	.string	"_POSIX_TRACE_LOG -1"
.LASF802:
	.string	"__PTHREAD_RWLOCK_ELISION_EXTRA 0, { 0, 0, 0, 0, 0, 0, 0 }"
.LASF817:
	.string	"_XOPEN_XPG2 1"
.LASF393:
	.string	"__USE_POSIX"
.LASF305:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF576:
	.string	"NULL"
.LASF1158:
	.string	"_CS_LFS_CFLAGS _CS_LFS_CFLAGS"
.LASF640:
	.string	"_BITS_TIME64_H 1"
.LASF1025:
	.string	"_SC_XOPEN_CRYPT _SC_XOPEN_CRYPT"
.LASF289:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF1180:
	.string	"_CS_XBS5_LPBIG_OFFBIG_LIBS _CS_XBS5_LPBIG_OFFBIG_LIBS"
.LASF535:
	.string	"__stub_fchflags "
.LASF1195:
	.string	"_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS"
.LASF341:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF798:
	.string	"_THREAD_MUTEX_INTERNAL_H 1"
.LASF46:
	.string	"__INTMAX_TYPE__ long int"
.LASF619:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF216:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF260:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF195:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF417:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF397:
	.string	"__USE_XOPEN"
.LASF142:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF402:
	.string	"__USE_XOPEN2K8"
.LASF989:
	.string	"_SC_PII_OSI _SC_PII_OSI"
.LASF281:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF501:
	.string	"__always_inline"
.LASF560:
	.string	"_SYS_SIZE_T_H "
.LASF728:
	.string	"_BITS_ENDIAN_H 1"
.LASF63:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF413:
	.string	"__GLIBC_USE_ISOC2X"
.LASF787:
	.string	"__SIZEOF_PTHREAD_ATTR_T 56"
.LASF1019:
	.string	"_SC_AVPHYS_PAGES _SC_AVPHYS_PAGES"
.LASF355:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF450:
	.string	"__GLIBC__ 2"
.LASF696:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF1228:
	.string	"long int"
.LASF442:
	.string	"__TIMESIZE __WORDSIZE"
.LASF553:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF1135:
	.string	"_SC_V7_ILP32_OFF32 _SC_V7_ILP32_OFF32"
.LASF742:
	.string	"__bswap_constant_32(x) ((((x) & 0xff000000u) >> 24) | (((x) & 0x00ff0000u) >> 8) | (((x) & 0x0000ff00u) << 8) | (((x) & 0x000000ffu) << 24))"
.LASF762:
	.string	"__sigset_t_defined 1"
.LASF274:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF282:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF418:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF436:
	.string	"__USE_XOPEN2K8 1"
.LASF628:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF315:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF1122:
	.string	"_SC_LEVEL1_DCACHE_ASSOC _SC_LEVEL1_DCACHE_ASSOC"
.LASF850:
	.string	"_POSIX_REALTIME_SIGNALS 200809L"
.LASF414:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF254:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF643:
	.string	"_____fpos_t_defined 1"
.LASF74:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF374:
	.string	"__unix 1"
.LASF826:
	.string	"_POSIX_PRIORITY_SCHEDULING 200809L"
.LASF59:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF924:
	.string	"_PC_REC_INCR_XFER_SIZE _PC_REC_INCR_XFER_SIZE"
.LASF39:
	.string	"__SIZEOF_POINTER__ 8"
.LASF329:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF639:
	.string	"__FD_SETSIZE 1024"
.LASF977:
	.string	"_SC_CHARCLASS_NAME_MAX _SC_CHARCLASS_NAME_MAX"
.LASF296:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1121:
	.string	"_SC_LEVEL1_DCACHE_SIZE _SC_LEVEL1_DCACHE_SIZE"
.LASF731:
	.string	"__PDP_ENDIAN 3412"
.LASF624:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF287:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1245:
	.string	"main"
.LASF887:
	.string	"_XBS5_LPBIG_OFFBIG -1"
.LASF674:
	.string	"FOPEN_MAX 16"
.LASF73:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF618:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1062:
	.string	"_SC_XOPEN_LEGACY _SC_XOPEN_LEGACY"
.LASF617:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF498:
	.string	"__returns_nonnull __attribute__ ((__returns_nonnull__))"
.LASF271:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF569:
	.string	"_SIZE_T_DECLARED "
.LASF466:
	.string	"__CONCAT(x,y) x ## y"
.LASF1241:
	.string	"envp"
.LASF842:
	.string	"_POSIX_THREAD_PRIORITY_SCHEDULING 200809L"
.LASF364:
	.string	"__FXSR__ 1"
.LASF145:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF186:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF1179:
	.string	"_CS_XBS5_LPBIG_OFFBIG_LDFLAGS _CS_XBS5_LPBIG_OFFBIG_LDFLAGS"
.LASF159:
	.string	"__FLT_MAX_EXP__ 128"
.LASF980:
	.string	"_SC_2_C_DEV _SC_2_C_DEV"
.LASF380:
	.string	"__STDC_IEC_559__ 1"
.LASF25:
	.string	"__SIZEOF_LONG__ 8"
.LASF665:
	.string	"SEEK_CUR 1"
.LASF1095:
	.string	"_SC_SYSTEM_DATABASE _SC_SYSTEM_DATABASE"
.LASF948:
	.string	"_SC_MEMLOCK _SC_MEMLOCK"
.LASF29:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF122:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF1040:
	.string	"_SC_WORD_BIT _SC_WORD_BIT"
.LASF192:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF700:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF811:
	.string	"_POSIX2_C_BIND __POSIX2_THIS_VERSION"
.LASF386:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF379:
	.string	"_STDC_PREDEF_H 1"
.LASF806:
	.string	"_UNISTD_H 1"
.LASF20:
	.string	"__PIE__ 2"
.LASF247:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF311:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF480:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF40:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF158:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF244:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF447:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF797:
	.string	"_BITS_ATOMIC_WIDE_COUNTER_H "
.LASF161:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF457:
	.string	"__glibc_has_extension(ext) 0"
.LASF708:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF557:
	.string	"__size_t__ "
.LASF740:
	.string	"_BITS_BYTESWAP_H 1"
.LASF584:
	.string	"__U16_TYPE unsigned short int"
.LASF468:
	.string	"__ptr_t void *"
.LASF323:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF824:
	.string	"_POSIX_JOB_CONTROL 1"
.LASF838:
	.string	"_XOPEN_SHM 1"
.LASF847:
	.string	"_POSIX_THREAD_ROBUST_PRIO_INHERIT 200809L"
.LASF169:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF599:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF515:
	.string	"__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0"
.LASF1206:
	.string	"_CS_POSIX_V7_LP64_OFF64_CFLAGS _CS_POSIX_V7_LP64_OFF64_CFLAGS"
.LASF96:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF128:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF234:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF927:
	.string	"_PC_REC_XFER_ALIGN _PC_REC_XFER_ALIGN"
.LASF1166:
	.string	"_CS_XBS5_ILP32_OFF32_CFLAGS _CS_XBS5_ILP32_OFF32_CFLAGS"
.LASF615:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF1119:
	.string	"_SC_LEVEL1_ICACHE_ASSOC _SC_LEVEL1_ICACHE_ASSOC"
.LASF279:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF841:
	.string	"_POSIX_THREAD_SAFE_FUNCTIONS 200809L"
.LASF241:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF710:
	.string	"__u_char_defined "
.LASF137:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF415:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF568:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1169:
	.string	"_CS_XBS5_ILP32_OFF32_LINTFLAGS _CS_XBS5_ILP32_OFF32_LINTFLAGS"
.LASF571:
	.string	"___int_size_t_h "
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF424:
	.string	"__USE_ISOC99 1"
.LASF230:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1139:
	.string	"_SC_SS_REPL_MAX _SC_SS_REPL_MAX"
.LASF160:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF465:
	.string	"__PMT(args) args"
.LASF378:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF691:
	.string	"__HAVE_FLOAT32X 1"
.LASF149:
	.string	"__GCC_IEC_559 2"
.LASF1193:
	.string	"_CS_POSIX_V6_LP64_OFF64_LINTFLAGS _CS_POSIX_V6_LP64_OFF64_LINTFLAGS"
.LASF286:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF570:
	.string	"__DEFINED_size_t "
.LASF769:
	.string	"__NFDBITS (8 * (int) sizeof (__fd_mask))"
.LASF854:
	.string	"_POSIX_PRIORITIZED_IO 200809L"
.LASF874:
	.string	"_POSIX_ADVISORY_INFO 200809L"
.LASF789:
	.string	"__SIZEOF_PTHREAD_BARRIER_T 32"
.LASF981:
	.string	"_SC_2_FORT_DEV _SC_2_FORT_DEV"
.LASF851:
	.string	"_POSIX_ASYNCHRONOUS_IO 200809L"
.LASF111:
	.string	"__UINT16_MAX__ 0xffff"
.LASF833:
	.string	"_POSIX_CHOWN_RESTRICTED 0"
.LASF771:
	.string	"__FD_MASK(d) ((__fd_mask) (1UL << ((d) % __NFDBITS)))"
.LASF1163:
	.string	"_CS_LFS64_LDFLAGS _CS_LFS64_LDFLAGS"
.LASF131:
	.string	"__UINT32_C(c) c ## U"
.LASF1096:
	.string	"_SC_SYSTEM_DATABASE_R _SC_SYSTEM_DATABASE_R"
.LASF717:
	.string	"__pid_t_defined "
.LASF366:
	.string	"__SSE2_MATH__ 1"
.LASF99:
	.string	"__INTMAX_C(c) c ## L"
.LASF191:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF1131:
	.string	"_SC_LEVEL4_CACHE_ASSOC _SC_LEVEL4_CACHE_ASSOC"
.LASF27:
	.string	"__SIZEOF_SHORT__ 2"
.LASF219:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF777:
	.string	"FD_ISSET(fd,fdsetp) __FD_ISSET (fd, fdsetp)"
.LASF860:
	.string	"_POSIX_CPUTIME 0"
.LASF906:
	.string	"F_OK 0"
.LASF124:
	.string	"__INT64_C(c) c ## L"
.LASF509:
	.string	"__restrict_arr __restrict"
.LASF533:
	.string	"__stub___compat_bdflush "
.LASF1170:
	.string	"_CS_XBS5_ILP32_OFFBIG_CFLAGS _CS_XBS5_ILP32_OFFBIG_CFLAGS"
.LASF1007:
	.string	"_SC_THREAD_KEYS_MAX _SC_THREAD_KEYS_MAX"
.LASF566:
	.string	"_SIZE_T_DEFINED_ "
.LASF986:
	.string	"_SC_PII_XTI _SC_PII_XTI"
.LASF101:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF626:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF261:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF1094:
	.string	"_SC_THREAD_SPORADIC_SERVER _SC_THREAD_SPORADIC_SERVER"
.LASF446:
	.string	"__GLIBC_USE_DEPRECATED_GETS 0"
.LASF650:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF978:
	.string	"_SC_2_VERSION _SC_2_VERSION"
.LASF803:
	.string	"__PTHREAD_RWLOCK_INITIALIZER(__flags) 0, 0, 0, 0, 0, 0, 0, 0, __PTHREAD_RWLOCK_ELISION_EXTRA, 0, __flags"
.LASF488:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF221:
	.string	"__FLT32_DIG__ 6"
.LASF326:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF686:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF70:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF1015:
	.string	"_SC_THREAD_PROCESS_SHARED _SC_THREAD_PROCESS_SHARED"
.LASF544:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF538:
	.string	"__stub_setlogin "
.LASF24:
	.string	"__SIZEOF_INT__ 4"
.LASF555:
	.string	"__need_size_t "
.LASF1219:
	.string	"F_LOCK 1"
.LASF886:
	.string	"_POSIX_V6_LPBIG_OFFBIG -1"
.LASF587:
	.string	"__SLONGWORD_TYPE long int"
.LASF609:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF905:
	.string	"X_OK 1"
.LASF521:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF33:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF1107:
	.string	"_SC_STREAMS _SC_STREAMS"
.LASF506:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF426:
	.string	"__USE_POSIX_IMPLICITLY 1"
.LASF342:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF352:
	.string	"__x86_64__ 1"
.LASF1167:
	.string	"_CS_XBS5_ILP32_OFF32_LDFLAGS _CS_XBS5_ILP32_OFF32_LDFLAGS"
.LASF818:
	.string	"_XOPEN_XPG3 1"
.LASF400:
	.string	"__USE_XOPEN2K"
.LASF474:
	.string	"__glibc_objsize(__o) __bos (__o)"
.LASF765:
	.string	"__timeval_defined 1"
.LASF641:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF485:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF401:
	.string	"__USE_XOPEN2KXSI"
.LASF110:
	.string	"__UINT8_MAX__ 0xff"
.LASF165:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF383:
	.string	"__STDC_IEC_60559_COMPLEX__ 201404L"
.LASF1064:
	.string	"_SC_XOPEN_REALTIME_THREADS _SC_XOPEN_REALTIME_THREADS"
.LASF1129:
	.string	"_SC_LEVEL3_CACHE_LINESIZE _SC_LEVEL3_CACHE_LINESIZE"
.LASF504:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF549:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF1079:
	.string	"_SC_FILE_ATTRIBUTES _SC_FILE_ATTRIBUTES"
.LASF888:
	.string	"_POSIX_V7_LP64_OFF64 1"
.LASF183:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF209:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF433:
	.string	"__USE_POSIX199309 1"
.LASF945:
	.string	"_SC_SYNCHRONIZED_IO _SC_SYNCHRONIZED_IO"
.LASF368:
	.string	"__SEG_FS 1"
.LASF1216:
	.string	"_GETOPT_POSIX_H 1"
.LASF931:
	.string	"_SC_ARG_MAX _SC_ARG_MAX"
.LASF876:
	.string	"_POSIX_RAW_SOCKETS 200809L"
.LASF1127:
	.string	"_SC_LEVEL3_CACHE_SIZE _SC_LEVEL3_CACHE_SIZE"
.LASF1186:
	.string	"_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS"
.LASF871:
	.string	"_POSIX_THREAD_PROCESS_SHARED 200809L"
.LASF77:
	.string	"__GXX_ABI_VERSION 1017"
.LASF1075:
	.string	"_SC_DEVICE_SPECIFIC_R _SC_DEVICE_SPECIFIC_R"
.LASF117:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1105:
	.string	"_SC_2_PBS_TRACK _SC_2_PBS_TRACK"
.LASF256:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF915:
	.string	"_PC_PIPE_BUF _PC_PIPE_BUF"
.LASF1220:
	.string	"F_TLOCK 2"
.LASF395:
	.string	"__USE_POSIX199309"
.LASF899:
	.string	"STDERR_FILENO 2"
.LASF384:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF334:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF706:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF705:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF677:
	.string	"stderr stderr"
.LASF721:
	.string	"__clock_t_defined 1"
.LASF647:
	.string	"__FILE_defined 1"
.LASF957:
	.string	"_SC_DELAYTIMER_MAX _SC_DELAYTIMER_MAX"
.LASF711:
	.string	"__ino_t_defined "
.LASF944:
	.string	"_SC_PRIORITIZED_IO _SC_PRIORITIZED_IO"
.LASF451:
	.string	"__GLIBC_MINOR__ 36"
.LASF210:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF399:
	.string	"__USE_UNIX98"
.LASF1061:
	.string	"_SC_XBS5_LPBIG_OFFBIG _SC_XBS5_LPBIG_OFFBIG"
.LASF67:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF416:
	.string	"__KERNEL_STRICT_NAMES "
.LASF772:
	.string	"__FDS_BITS(set) ((set)->__fds_bits)"
.LASF1059:
	.string	"_SC_XBS5_ILP32_OFFBIG _SC_XBS5_ILP32_OFFBIG"
.LASF1120:
	.string	"_SC_LEVEL1_ICACHE_LINESIZE _SC_LEVEL1_ICACHE_LINESIZE"
.LASF987:
	.string	"_SC_PII_SOCKET _SC_PII_SOCKET"
.LASF862:
	.string	"_POSIX_REGEXP 1"
.LASF603:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF655:
	.string	"_IO_USER_LOCK 0x8000"
.LASF125:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF974:
	.string	"_SC_EXPR_NEST_MAX _SC_EXPR_NEST_MAX"
.LASF1207:
	.string	"_CS_POSIX_V7_LP64_OFF64_LDFLAGS _CS_POSIX_V7_LP64_OFF64_LDFLAGS"
.LASF54:
	.string	"__INT64_TYPE__ long int"
.LASF588:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF648:
	.string	"__struct_FILE_defined 1"
.LASF338:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF902:
	.string	"__socklen_t_defined "
.LASF633:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF377:
	.string	"__ELF__ 1"
.LASF656:
	.string	"_VA_LIST_DEFINED "
.LASF766:
	.string	"_STRUCT_TIMESPEC 1"
.LASF508:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF100:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF904:
	.string	"W_OK 2"
.LASF671:
	.string	"FILENAME_MAX 4096"
.LASF792:
	.string	"__SIZEOF_PTHREAD_CONDATTR_T 4"
.LASF201:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF473:
	.string	"__glibc_objsize0(__o) __bos0 (__o)"
.LASF304:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF635:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF625:
	.string	"__SUSECONDS64_T_TYPE __SQUAD_TYPE"
.LASF875:
	.string	"_POSIX_IPV6 200809L"
.LASF273:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF552:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF581:
	.string	"__GNUC_VA_LIST "
.LASF1057:
	.string	"_SC_NL_TEXTMAX _SC_NL_TEXTMAX"
.LASF913:
	.string	"_PC_NAME_MAX _PC_NAME_MAX"
.LASF895:
	.string	"__LP64_OFF64_CFLAGS \"-m64\""
.LASF1235:
	.string	"printf"
.LASF104:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1109:
	.string	"_SC_V6_ILP32_OFF32 _SC_V6_ILP32_OFF32"
.LASF1029:
	.string	"_SC_2_C_VERSION _SC_2_C_VERSION"
.LASF126:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1175:
	.string	"_CS_XBS5_LP64_OFF64_LDFLAGS _CS_XBS5_LP64_OFF64_LDFLAGS"
.LASF947:
	.string	"_SC_MAPPED_FILES _SC_MAPPED_FILES"
.LASF794:
	.string	"__SIZEOF_PTHREAD_BARRIERATTR_T 4"
.LASF1055:
	.string	"_SC_NL_NMAX _SC_NL_NMAX"
.LASF297:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF344:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF1178:
	.string	"_CS_XBS5_LPBIG_OFFBIG_CFLAGS _CS_XBS5_LPBIG_OFFBIG_CFLAGS"
.LASF178:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF545:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF890:
	.string	"_XBS5_LP64_OFF64 1"
.LASF486:
	.string	"__attribute_alloc_align__(param) __attribute__ ((__alloc_align__ param))"
.LASF669:
	.string	"L_tmpnam 20"
.LASF1152:
	.string	"_CS_GNU_LIBC_VERSION _CS_GNU_LIBC_VERSION"
.LASF644:
	.string	"____mbstate_t_defined 1"
.LASF119:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF859:
	.string	"_POSIX_SHARED_MEMORY_OBJECTS 200809L"
.LASF953:
	.string	"_SC_SHARED_MEMORY_OBJECTS _SC_SHARED_MEMORY_OBJECTS"
.LASF153:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1141:
	.string	"_SC_TRACE_NAME_MAX _SC_TRACE_NAME_MAX"
.LASF837:
	.string	"_XOPEN_REALTIME_THREADS 1"
.LASF1072:
	.string	"_SC_THREAD_CPUTIME _SC_THREAD_CPUTIME"
.LASF749:
	.string	"htobe32(x) __bswap_32 (x)"
.LASF1111:
	.string	"_SC_V6_LP64_OFF64 _SC_V6_LP64_OFF64"
.LASF313:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF546:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF577:
	.string	"NULL ((void *)0)"
.LASF1194:
	.string	"_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS"
.LASF1177:
	.string	"_CS_XBS5_LP64_OFF64_LINTFLAGS _CS_XBS5_LP64_OFF64_LINTFLAGS"
.LASF996:
	.string	"_SC_PII_OSI_COTS _SC_PII_OSI_COTS"
.LASF496:
	.string	"__attribute_nonnull__(params) __attribute__ ((__nonnull__ params))"
.LASF578:
	.string	"__need_NULL"
.LASF827:
	.string	"_POSIX_SYNCHRONIZED_IO 200809L"
.LASF370:
	.string	"__gnu_linux__ 1"
.LASF1023:
	.string	"_SC_XOPEN_XCU_VERSION _SC_XOPEN_XCU_VERSION"
.LASF322:
	.string	"__USER_LABEL_PREFIX__ "
.LASF41:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF976:
	.string	"_SC_RE_DUP_MAX _SC_RE_DUP_MAX"
.LASF1172:
	.string	"_CS_XBS5_ILP32_OFFBIG_LIBS _CS_XBS5_ILP32_OFFBIG_LIBS"
.LASF62:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF988:
	.string	"_SC_PII_INTERNET _SC_PII_INTERNET"
.LASF437:
	.string	"_ATFILE_SOURCE"
.LASF900:
	.string	"__useconds_t_defined "
.LASF593:
	.string	"__SLONG32_TYPE int"
.LASF747:
	.string	"be16toh(x) __bswap_16 (x)"
.LASF114:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1024:
	.string	"_SC_XOPEN_UNIX _SC_XOPEN_UNIX"
.LASF614:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF694:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF387:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF1215:
	.string	"_CS_V7_ENV _CS_V7_ENV"
.LASF389:
	.string	"__USE_ISOC11"
.LASF441:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF1050:
	.string	"_SC_ULONG_MAX _SC_ULONG_MAX"
.LASF768:
	.string	"__NFDBITS"
.LASF272:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF774:
	.string	"NFDBITS __NFDBITS"
.LASF543:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF1116:
	.string	"_SC_TRACE_INHERIT _SC_TRACE_INHERIT"
.LASF938:
	.string	"_SC_JOB_CONTROL _SC_JOB_CONTROL"
.LASF1103:
	.string	"_SC_2_PBS_LOCATE _SC_2_PBS_LOCATE"
.LASF367:
	.string	"__MMX_WITH_SSE__ 1"
.LASF168:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF382:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF106:
	.string	"__INT8_MAX__ 0x7f"
.LASF870:
	.string	"_POSIX_MESSAGE_PASSING 200809L"
.LASF616:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF343:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1033:
	.string	"_SC_XOPEN_XPG4 _SC_XOPEN_XPG4"
.LASF849:
	.string	"_POSIX_SEMAPHORES 200809L"
.LASF582:
	.string	"_BITS_TYPES_H 1"
.LASF790:
	.string	"__SIZEOF_PTHREAD_MUTEXATTR_T 4"
.LASF1204:
	.string	"_CS_POSIX_V7_ILP32_OFFBIG_LIBS _CS_POSIX_V7_ILP32_OFFBIG_LIBS"
.LASF316:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF150:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF942:
	.string	"_SC_TIMERS _SC_TIMERS"
.LASF19:
	.string	"__pie__ 2"
.LASF56:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF427:
	.string	"_POSIX_SOURCE"
.LASF1230:
	.string	"__pid_t"
.LASF425:
	.string	"__USE_ISOC95 1"
.LASF1078:
	.string	"_SC_PIPE _SC_PIPE"
.LASF525:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF537:
	.string	"__stub_revoke "
.LASF302:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF835:
	.string	"_POSIX_NO_TRUNC 1"
.LASF561:
	.string	"_T_SIZE_ "
.LASF152:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF755:
	.string	"be64toh(x) __bswap_64 (x)"
.LASF89:
	.string	"__SCHAR_WIDTH__ 8"
.LASF917:
	.string	"_PC_NO_TRUNC _PC_NO_TRUNC"
.LASF891:
	.string	"__ILP32_OFF32_CFLAGS \"-m32\""
.LASF478:
	.string	"__glibc_c99_flexarr_available 1"
.LASF754:
	.string	"htole64(x) __uint64_identity (x)"
.LASF1112:
	.string	"_SC_V6_LPBIG_OFFBIG _SC_V6_LPBIG_OFFBIG"
.LASF937:
	.string	"_SC_TZNAME_MAX _SC_TZNAME_MAX"
.LASF767:
	.string	"__suseconds_t_defined "
.LASF359:
	.string	"__k8__ 1"
.LASF22:
	.string	"_LP64 1"
.LASF135:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF258:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF460:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF556:
	.string	"__need_NULL "
.LASF388:
	.string	"_FEATURES_H 1"
.LASF421:
	.string	"_DEFAULT_SOURCE 1"
.LASF220:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF712:
	.string	"__dev_t_defined "
.LASF519:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF458:
	.string	"__LEAF , __leaf__"
.LASF404:
	.string	"__USE_LARGEFILE"
.LASF1058:
	.string	"_SC_XBS5_ILP32_OFF32 _SC_XBS5_ILP32_OFF32"
.LASF490:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF979:
	.string	"_SC_2_C_BIND _SC_2_C_BIND"
.LASF894:
	.string	"__ILP32_OFFBIG_LDFLAGS \"-m32\""
.LASF973:
	.string	"_SC_EQUIV_CLASS_MAX _SC_EQUIV_CLASS_MAX"
.LASF331:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF1184:
	.string	"_CS_POSIX_V6_ILP32_OFF32_LIBS _CS_POSIX_V6_ILP32_OFF32_LIBS"
.LASF1156:
	.string	"_CS_V7_WIDTH_RESTRICTED_ENVS _CS_V7_WIDTH_RESTRICTED_ENVS"
.LASF175:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF598:
	.string	"_BITS_TYPESIZES_H 1"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF1236:
	.string	"getpid"
.LASF280:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF155:
	.string	"__FLT_MANT_DIG__ 24"
.LASF992:
	.string	"_SC_UIO_MAXIOV _SC_UIO_MAXIOV"
.LASF753:
	.string	"htobe64(x) __bswap_64 (x)"
.LASF1183:
	.string	"_CS_POSIX_V6_ILP32_OFF32_LDFLAGS _CS_POSIX_V6_ILP32_OFF32_LDFLAGS"
.LASF1060:
	.string	"_SC_XBS5_LP64_OFF64 _SC_XBS5_LP64_OFF64"
.LASF1009:
	.string	"_SC_THREAD_THREADS_MAX _SC_THREAD_THREADS_MAX"
.LASF998:
	.string	"_SC_PII_OSI_M _SC_PII_OSI_M"
.LASF1054:
	.string	"_SC_NL_MSGMAX _SC_NL_MSGMAX"
.LASF707:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF736:
	.string	"LITTLE_ENDIAN __LITTLE_ENDIAN"
.LASF1017:
	.string	"_SC_NPROCESSORS_ONLN _SC_NPROCESSORS_ONLN"
.LASF98:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF823:
	.string	"_BITS_POSIX_OPT_H 1"
.LASF245:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF997:
	.string	"_SC_PII_OSI_CLTS _SC_PII_OSI_CLTS"
.LASF1088:
	.string	"_SC_REGEXP _SC_REGEXP"
.LASF1073:
	.string	"_SC_DEVICE_IO _SC_DEVICE_IO"
.LASF408:
	.string	"__USE_ATFILE"
.LASF207:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF863:
	.string	"_POSIX_READER_WRITER_LOCKS 200809L"
.LASF1208:
	.string	"_CS_POSIX_V7_LP64_OFF64_LIBS _CS_POSIX_V7_LP64_OFF64_LIBS"
.LASF1240:
	.string	"argv"
.LASF362:
	.string	"__SSE__ 1"
.LASF808:
	.string	"__POSIX2_THIS_VERSION 200809L"
.LASF102:
	.string	"__INTMAX_WIDTH__ 64"
.LASF867:
	.string	"_POSIX_SPAWN 200809L"
.LASF820:
	.string	"_XOPEN_UNIX 1"
.LASF7:
	.string	"__GNUC__ 12"
.LASF328:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF634:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF264:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF1117:
	.string	"_SC_TRACE_LOG _SC_TRACE_LOG"
.LASF757:
	.string	"_SYS_SELECT_H 1"
.LASF732:
	.string	"_BITS_ENDIANNESS_H 1"
.LASF120:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF518:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF394:
	.string	"__USE_POSIX2"
.LASF118:
	.string	"__INT16_C(c) c"
.LASF310:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF336:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF283:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF804:
	.string	"__ONCE_FLAG_INIT { 0 }"
.LASF575:
	.string	"__need_size_t"
.LASF1071:
	.string	"_SC_CPUTIME _SC_CPUTIME"
.LASF856:
	.string	"_LFS_LARGEFILE 1"
.LASF564:
	.string	"_SIZE_T_ "
.LASF154:
	.string	"__FLT_RADIX__ 2"
.LASF720:
	.string	"__key_t_defined "
.LASF1233:
	.string	"long long int"
.LASF923:
	.string	"_PC_FILESIZEBITS _PC_FILESIZEBITS"
.LASF49:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF869:
	.string	"_POSIX_BARRIERS 200809L"
.LASF822:
	.string	"_XOPEN_LEGACY 1"
.LASF527:
	.string	"__attr_access(x) __attribute__ ((__access__ x))"
.LASF532:
	.string	"__attribute_returns_twice__ __attribute__ ((__returns_twice__))"
.LASF199:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF350:
	.string	"__amd64__ 1"
.LASF93:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF1008:
	.string	"_SC_THREAD_STACK_MIN _SC_THREAD_STACK_MIN"
.LASF18:
	.string	"__PIC__ 2"
.LASF1037:
	.string	"_SC_INT_MAX _SC_INT_MAX"
.LASF932:
	.string	"_SC_CHILD_MAX _SC_CHILD_MAX"
.LASF679:
	.string	"__attr_dealloc_fclose __attr_dealloc (fclose, 1)"
.LASF741:
	.string	"__bswap_constant_16(x) ((__uint16_t) ((((x) >> 8) & 0xff) | (((x) & 0xff) << 8)))"
.LASF699:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF136:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF337:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF1136:
	.string	"_SC_V7_ILP32_OFFBIG _SC_V7_ILP32_OFFBIG"
.LASF1005:
	.string	"_SC_TTY_NAME_MAX _SC_TTY_NAME_MAX"
.LASF513:
	.string	"__attribute_copy__"
.LASF240:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF1056:
	.string	"_SC_NL_SETMAX _SC_NL_SETMAX"
.LASF910:
	.string	"_PC_LINK_MAX _PC_LINK_MAX"
.LASF66:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF138:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF91:
	.string	"__INT_WIDTH__ 32"
.LASF463:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF866:
	.string	"_POSIX_SPIN_LOCKS 200809L"
.LASF47:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF1027:
	.string	"_SC_XOPEN_SHM _SC_XOPEN_SHM"
.LASF95:
	.string	"__WINT_WIDTH__ 32"
.LASF32:
	.string	"__CHAR_BIT__ 8"
.LASF494:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF346:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF134:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF512:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF84:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF454:
	.string	"__PMT"
.LASF952:
	.string	"_SC_SEMAPHORES _SC_SEMAPHORES"
.LASF984:
	.string	"_SC_2_LOCALEDEF _SC_2_LOCALEDEF"
.LASF951:
	.string	"_SC_MESSAGE_PASSING _SC_MESSAGE_PASSING"
.LASF799:
	.string	"__PTHREAD_MUTEX_HAVE_PREV 1"
.LASF752:
	.string	"le32toh(x) __uint32_identity (x)"
.LASF1137:
	.string	"_SC_V7_LP64_OFF64 _SC_V7_LP64_OFF64"
.LASF685:
	.string	"__f128(x) x ##f128"
.LASF813:
	.string	"_POSIX2_SW_DEV __POSIX2_THIS_VERSION"
.LASF208:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF144:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF620:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF438:
	.string	"_ATFILE_SOURCE 1"
.LASF589:
	.string	"__SQUAD_TYPE long int"
.LASF672:
	.string	"L_ctermid 9"
.LASF37:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF121:
	.string	"__INT32_C(c) c"
.LASF276:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF44:
	.string	"__WCHAR_TYPE__ int"
.LASF76:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF411:
	.string	"__USE_FORTIFY_LEVEL"
.LASF529:
	.string	"__attr_access_none(argno) __attribute__ ((__access__ (__none__, argno)))"
.LASF1161:
	.string	"_CS_LFS_LINTFLAGS _CS_LFS_LINTFLAGS"
.LASF663:
	.string	"EOF (-1)"
.LASF45:
	.string	"__WINT_TYPE__ unsigned int"
.LASF295:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF1001:
	.string	"_SC_THREAD_SAFE_FUNCTIONS _SC_THREAD_SAFE_FUNCTIONS"
.LASF1144:
	.string	"_SC_XOPEN_STREAMS _SC_XOPEN_STREAMS"
.LASF358:
	.string	"__k8 1"
.LASF654:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF524:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF1205:
	.string	"_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS"
.LASF1191:
	.string	"_CS_POSIX_V6_LP64_OFF64_LDFLAGS _CS_POSIX_V6_LP64_OFF64_LDFLAGS"
.LASF26:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF65:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF1223:
	.string	"unsigned int"
.LASF69:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF1165:
	.string	"_CS_LFS64_LINTFLAGS _CS_LFS64_LINTFLAGS"
.LASF1022:
	.string	"_SC_XOPEN_VERSION _SC_XOPEN_VERSION"
.LASF960:
	.string	"_SC_VERSION _SC_VERSION"
.LASF157:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF250:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF455:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF1044:
	.string	"_SC_SCHAR_MAX _SC_SCHAR_MAX"
.LASF407:
	.string	"__USE_MISC"
.LASF1043:
	.string	"_SC_SSIZE_MAX _SC_SSIZE_MAX"
.LASF275:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF248:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF156:
	.string	"__FLT_DIG__ 6"
.LASF381:
	.string	"__STDC_IEC_60559_BFP__ 201404L"
.LASF435:
	.string	"__USE_XOPEN2K 1"
.LASF151:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF627:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF162:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF78:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF908:
	.string	"L_INCR SEEK_CUR"
.LASF880:
	.string	"_POSIX_TRACE -1"
.LASF262:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF586:
	.string	"__U32_TYPE unsigned int"
.LASF1102:
	.string	"_SC_2_PBS_ACCOUNTING _SC_2_PBS_ACCOUNTING"
.LASF1174:
	.string	"_CS_XBS5_LP64_OFF64_CFLAGS _CS_XBS5_LP64_OFF64_CFLAGS"
.LASF959:
	.string	"_SC_MQ_PRIO_MAX _SC_MQ_PRIO_MAX"
.LASF92:
	.string	"__LONG_WIDTH__ 64"
.LASF1231:
	.string	"pid_t"
.LASF257:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF206:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF269:
	.string	"__FLT32X_DIG__ 15"
.LASF88:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF489:
	.string	"__attribute_maybe_unused__ __attribute__ ((__unused__))"
.LASF511:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF536:
	.string	"__stub_gtty "
.LASF2:
	.string	"__STDC__ 1"
.LASF348:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF623:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF1182:
	.string	"_CS_POSIX_V6_ILP32_OFF32_CFLAGS _CS_POSIX_V6_ILP32_OFF32_CFLAGS"
.LASF38:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF929:
	.string	"_PC_SYMLINK_MAX _PC_SYMLINK_MAX"
.LASF55:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF600:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF922:
	.string	"_PC_SOCK_MAXBUF _PC_SOCK_MAXBUF"
.LASF500:
	.string	"__wur "
.LASF50:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF994:
	.string	"_SC_PII_INTERNET_STREAM _SC_PII_INTERNET_STREAM"
.LASF756:
	.string	"le64toh(x) __uint64_identity (x)"
.LASF805:
	.string	"__have_pthread_attr_t 1"
.LASF718:
	.string	"__id_t_defined "
.LASF90:
	.string	"__SHRT_WIDTH__ 16"
.LASF1173:
	.string	"_CS_XBS5_ILP32_OFFBIG_LINTFLAGS _CS_XBS5_ILP32_OFFBIG_LINTFLAGS"
.LASF761:
	.string	"__FD_ISSET(d,s) ((__FDS_BITS (s)[__FD_ELT (d)] & __FD_MASK (d)) != 0)"
.LASF314:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1069:
	.string	"_SC_C_LANG_SUPPORT_R _SC_C_LANG_SUPPORT_R"
.LASF965:
	.string	"_SC_SEM_VALUE_MAX _SC_SEM_VALUE_MAX"
.LASF715:
	.string	"__nlink_t_defined "
.LASF969:
	.string	"_SC_BC_DIM_MAX _SC_BC_DIM_MAX"
.LASF592:
	.string	"__UWORD_TYPE unsigned long int"
.LASF360:
	.string	"__code_model_small__ 1"
.LASF638:
	.string	"__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 1"
.LASF449:
	.string	"__GNU_LIBRARY__ 6"
.LASF602:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF270:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF864:
	.string	"_POSIX_SHELL 1"
.LASF963:
	.string	"_SC_RTSIG_MAX _SC_RTSIG_MAX"
.LASF330:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF611:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF461:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF517:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF108:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF467:
	.string	"__STRING(x) #x"
.LASF231:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1210:
	.string	"_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS"
.LASF514:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF698:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF760:
	.string	"__FD_CLR(d,s) ((void) (__FDS_BITS (s)[__FD_ELT(d)] &= ~__FD_MASK(d)))"
.LASF729:
	.string	"__LITTLE_ENDIAN 1234"
.LASF223:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF1076:
	.string	"_SC_FD_MGMT _SC_FD_MGMT"
.LASF1148:
	.string	"_SC_SIGSTKSZ _SC_SIGSTKSZ"
.LASF1234:
	.string	"execle"
.LASF935:
	.string	"_SC_OPEN_MAX _SC_OPEN_MAX"
.LASF692:
	.string	"__HAVE_FLOAT128X 0"
.LASF1190:
	.string	"_CS_POSIX_V6_LP64_OFF64_CFLAGS _CS_POSIX_V6_LP64_OFF64_CFLAGS"
.LASF166:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF300:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF930:
	.string	"_PC_2_SYMLINKS _PC_2_SYMLINKS"
.LASF1065:
	.string	"_SC_ADVISORY_INFO _SC_ADVISORY_INFO"
.LASF983:
	.string	"_SC_2_SW_DEV _SC_2_SW_DEV"
.LASF1229:
	.string	"char"
.LASF462:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF523:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF1164:
	.string	"_CS_LFS64_LIBS _CS_LFS64_LIBS"
.LASF559:
	.string	"_SIZE_T "
.LASF660:
	.string	"_IOLBF 1"
.LASF1244:
	.string	"GNU C17 12.2.0 -masm=intel -mtune=generic -march=x86-64 -g3 -fasynchronous-unwind-tables"
.LASF943:
	.string	"_SC_ASYNCHRONOUS_IO _SC_ASYNCHRONOUS_IO"
.LASF853:
	.string	"_LFS_ASYNCHRONOUS_IO 1"
.LASF1051:
	.string	"_SC_USHRT_MAX _SC_USHRT_MAX"
.LASF958:
	.string	"_SC_MQ_OPEN_MAX _SC_MQ_OPEN_MAX"
.LASF1128:
	.string	"_SC_LEVEL3_CACHE_ASSOC _SC_LEVEL3_CACHE_ASSOC"
.LASF646:
	.string	"____FILE_defined 1"
.LASF82:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF743:
	.ascii	"__bswap_constant_64(x) ((((x) & 0xff00000000000000ull) >> 56"
	.ascii	") | (((x) & 0x00ff000000"
	.string	"000000ull) >> 40) | (((x) & 0x0000ff0000000000ull) >> 24) | (((x) & 0x000000ff00000000ull) >> 8) | (((x) & 0x00000000ff000000ull) << 8) | (((x) & 0x0000000000ff0000ull) << 24) | (((x) & 0x000000000000ff00ull) << 40) | (((x) & 0x00000000000000ffull) << 56))"
.LASF204:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1203:
	.string	"_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS"
.LASF482:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF991:
	.string	"_SC_SELECT _SC_SELECT"
.LASF878:
	.string	"_POSIX_SPORADIC_SERVER -1"
.LASF796:
	.string	"__ONCE_ALIGNMENT "
.LASF1013:
	.string	"_SC_THREAD_PRIO_INHERIT _SC_THREAD_PRIO_INHERIT"
.LASF298:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF253:
	.string	"__FLT128_DIG__ 33"
.LASF115:
	.string	"__INT8_C(c) c"
.LASF227:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF821:
	.string	"_XOPEN_ENH_I18N 1"
.LASF1225:
	.string	"short unsigned int"
.LASF1066:
	.string	"_SC_BARRIERS _SC_BARRIERS"
.LASF173:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF563:
	.string	"__SIZE_T "
.LASF879:
	.string	"_POSIX_THREAD_SPORADIC_SERVER -1"
.LASF727:
	.string	"_ENDIAN_H 1"
.LASF53:
	.string	"__INT32_TYPE__ int"
.LASF307:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF332:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF1214:
	.string	"_CS_V6_ENV _CS_V6_ENV"
.LASF212:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF391:
	.string	"__USE_ISOC95"
.LASF861:
	.string	"_POSIX_THREAD_CPUTIME 0"
.LASF1171:
	.string	"_CS_XBS5_ILP32_OFFBIG_LDFLAGS _CS_XBS5_ILP32_OFFBIG_LDFLAGS"
.LASF390:
	.string	"__USE_ISOC99"
.LASF1188:
	.string	"_CS_POSIX_V6_ILP32_OFFBIG_LIBS _CS_POSIX_V6_ILP32_OFFBIG_LIBS"
.LASF10:
	.string	"__VERSION__ \"12.2.0\""
.LASF857:
	.string	"_LFS64_LARGEFILE 1"
.LASF1108:
	.string	"_SC_2_PBS_CHECKPOINT _SC_2_PBS_CHECKPOINT"
.LASF1147:
	.string	"_SC_MINSIGSTKSZ _SC_MINSIGSTKSZ"
.LASF398:
	.string	"__USE_XOPEN_EXTENDED"
.LASF1197:
	.string	"_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS"
.LASF1036:
	.string	"_SC_CHAR_MIN _SC_CHAR_MIN"
.LASF200:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF327:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF1157:
	.string	"_CS_POSIX_V7_WIDTH_RESTRICTED_ENVS _CS_V7_WIDTH_RESTRICTED_ENVS"
.LASF277:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF469:
	.string	"__BEGIN_DECLS "
.LASF1082:
	.string	"_SC_MONOTONIC_CLOCK _SC_MONOTONIC_CLOCK"
.LASF919:
	.string	"_PC_SYNC_IO _PC_SYNC_IO"
.LASF385:
	.string	"_STDIO_H 1"
.LASF497:
	.string	"__nonnull(params) __attribute_nonnull__ (params)"
.LASF1077:
	.string	"_SC_FIFO _SC_FIFO"
.LASF1145:
	.string	"_SC_THREAD_ROBUST_PRIO_INHERIT _SC_THREAD_ROBUST_PRIO_INHERIT"
.LASF1091:
	.string	"_SC_SIGNALS _SC_SIGNALS"
.LASF434:
	.string	"__USE_POSIX199506 1"
.LASF265:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF764:
	.string	"_SIGSET_NWORDS (1024 / (8 * sizeof (unsigned long int)))"
.LASF970:
	.string	"_SC_BC_SCALE_MAX _SC_BC_SCALE_MAX"
.LASF901:
	.string	"__intptr_t_defined "
.LASF1138:
	.string	"_SC_V7_LPBIG_OFFBIG _SC_V7_LPBIG_OFFBIG"
.LASF251:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF1159:
	.string	"_CS_LFS_LDFLAGS _CS_LFS_LDFLAGS"
.LASF34:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1004:
	.string	"_SC_LOGIN_NAME_MAX _SC_LOGIN_NAME_MAX"
.LASF630:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1232:
	.string	"long long unsigned int"
.LASF1041:
	.string	"_SC_MB_LEN_MAX _SC_MB_LEN_MAX"
.LASF97:
	.string	"__SIZE_WIDTH__ 64"
.LASF810:
	.string	"_POSIX2_C_VERSION __POSIX2_THIS_VERSION"
.LASF697:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF1101:
	.string	"_SC_2_PBS _SC_2_PBS"
.LASF79:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF203:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF1113:
	.string	"_SC_HOST_NAME_MAX _SC_HOST_NAME_MAX"
.LASF392:
	.string	"__USE_ISOCXX11"
.LASF873:
	.string	"_POSIX_CLOCK_SELECTION 200809L"
.LASF567:
	.string	"_SIZE_T_DEFINED "
.LASF85:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF1115:
	.string	"_SC_TRACE_EVENT_FILTER _SC_TRACE_EVENT_FILTER"
.LASF658:
	.string	"__ssize_t_defined "
.LASF1202:
	.string	"_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS"
.LASF1154:
	.string	"_CS_V5_WIDTH_RESTRICTED_ENVS _CS_V5_WIDTH_RESTRICTED_ENVS"
.LASF596:
	.string	"__U64_TYPE unsigned long int"
.LASF291:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF75:
	.string	"__INTPTR_TYPE__ long int"
.LASF1098:
	.string	"_SC_TYPED_MEMORY_OBJECTS _SC_TYPED_MEMORY_OBJECTS"
.LASF1074:
	.string	"_SC_DEVICE_SPECIFIC _SC_DEVICE_SPECIFIC"
.LASF1242:
	.string	"ppid"
.LASF1222:
	.string	"long unsigned int"
.LASF215:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF759:
	.string	"__FD_SET(d,s) ((void) (__FDS_BITS (s)[__FD_ELT(d)] |= __FD_MASK(d)))"
.LASF724:
	.string	"__timer_t_defined 1"
.LASF430:
	.string	"_POSIX_C_SOURCE 200809L"
.LASF993:
	.string	"_SC_IOV_MAX _SC_IOV_MAX"
.LASF911:
	.string	"_PC_MAX_CANON _PC_MAX_CANON"
.LASF855:
	.string	"_LFS64_ASYNCHRONOUS_IO 1"
.LASF64:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF925:
	.string	"_PC_REC_MAX_XFER_SIZE _PC_REC_MAX_XFER_SIZE"
.LASF865:
	.string	"_POSIX_TIMEOUTS 200809L"
.LASF48:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF299:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF843:
	.string	"_POSIX_THREAD_ATTR_STACKSIZE 200809L"
.LASF493:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF396:
	.string	"__USE_POSIX199506"
.LASF730:
	.string	"__BIG_ENDIAN 4321"
.LASF695:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF146:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF21:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1176:
	.string	"_CS_XBS5_LP64_OFF64_LIBS _CS_XBS5_LP64_OFF64_LIBS"
.LASF801:
	.string	"_RWLOCK_INTERNAL_H "
.LASF1097:
	.string	"_SC_TIMEOUTS _SC_TIMEOUTS"
.LASF666:
	.string	"SEEK_END 2"
.LASF71:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF972:
	.string	"_SC_COLL_WEIGHTS_MAX _SC_COLL_WEIGHTS_MAX"
.LASF439:
	.string	"__WORDSIZE 64"
.LASF995:
	.string	"_SC_PII_INTERNET_DGRAM _SC_PII_INTERNET_DGRAM"
.LASF776:
	.string	"FD_CLR(fd,fdsetp) __FD_CLR (fd, fdsetp)"
.LASF786:
	.string	"__SIZEOF_PTHREAD_MUTEX_T 40"
.LASF920:
	.string	"_PC_ASYNC_IO _PC_ASYNC_IO"
.LASF345:
	.string	"__SIZEOF_INT128__ 16"
.LASF17:
	.string	"__pic__ 2"
.LASF540:
	.string	"__stub_stty "
.LASF926:
	.string	"_PC_REC_MIN_XFER_SIZE _PC_REC_MIN_XFER_SIZE"
.LASF43:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF852:
	.string	"_POSIX_ASYNC_IO 1"
.LASF306:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF475:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF815:
	.string	"_XOPEN_VERSION 700"
.LASF1125:
	.string	"_SC_LEVEL2_CACHE_ASSOC _SC_LEVEL2_CACHE_ASSOC"
.LASF123:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF595:
	.string	"__S64_TYPE long int"
.LASF528:
	.string	"__fortified_attr_access(a,o,s) __attr_access ((a, o, s))"
.LASF745:
	.string	"htobe16(x) __bswap_16 (x)"
.LASF565:
	.string	"_BSD_SIZE_T_ "
.LASF472:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF361:
	.string	"__MMX__ 1"
.LASF785:
	.string	"_BITS_PTHREADTYPES_ARCH_H 1"
.LASF1168:
	.string	"_CS_XBS5_ILP32_OFF32_LIBS _CS_XBS5_ILP32_OFF32_LIBS"
.LASF1068:
	.string	"_SC_C_LANG_SUPPORT _SC_C_LANG_SUPPORT"
.LASF807:
	.string	"_POSIX_VERSION 200809L"
.LASF585:
	.string	"__S32_TYPE int"
.LASF1200:
	.string	"_CS_POSIX_V7_ILP32_OFF32_LIBS _CS_POSIX_V7_ILP32_OFF32_LIBS"
.LASF1238:
	.string	"fork"
.LASF1070:
	.string	"_SC_CLOCK_SELECTION _SC_CLOCK_SELECTION"
.LASF133:
	.string	"__UINT64_C(c) c ## UL"
.LASF542:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF968:
	.string	"_SC_BC_BASE_MAX _SC_BC_BASE_MAX"
.LASF961:
	.string	"_SC_PAGESIZE _SC_PAGESIZE"
.LASF1003:
	.string	"_SC_GETPW_R_SIZE_MAX _SC_GETPW_R_SIZE_MAX"
.LASF1092:
	.string	"_SC_SPAWN _SC_SPAWN"
.LASF170:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF1239:
	.string	"argc"
.LASF940:
	.string	"_SC_REALTIME_SIGNALS _SC_REALTIME_SIGNALS"
.LASF914:
	.string	"_PC_PATH_MAX _PC_PATH_MAX"
.LASF778:
	.string	"FD_ZERO(fdsetp) __FD_ZERO (fdsetp)"
.LASF744:
	.string	"_BITS_UINTN_IDENTITY_H 1"
.LASF444:
	.string	"__USE_ATFILE 1"
.LASF180:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF680:
	.string	"_BITS_FLOATN_H "
.LASF661:
	.string	"_IONBF 2"
.LASF1049:
	.string	"_SC_UINT_MAX _SC_UINT_MAX"
.LASF657:
	.string	"__off_t_defined "
.LASF83:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF218:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF61:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF294:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF190:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF795:
	.string	"__LOCK_ALIGNMENT "
.LASF1039:
	.string	"_SC_LONG_BIT _SC_LONG_BIT"
.LASF809:
	.string	"_POSIX2_VERSION __POSIX2_THIS_VERSION"
.LASF202:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF335:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF955:
	.string	"_SC_AIO_MAX _SC_AIO_MAX"
.LASF683:
	.string	"__HAVE_FLOAT64X 1"
.LASF278:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF534:
	.string	"__stub_chflags "
.LASF652:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF1181:
	.string	"_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS"
.LASF410:
	.string	"__USE_GNU"
.LASF573:
	.string	"_SIZET_ "
.LASF1089:
	.string	"_SC_REGEX_VERSION _SC_REGEX_VERSION"
.LASF629:
	.string	"__TIMER_T_TYPE void *"
.LASF185:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1126:
	.string	"_SC_LEVEL2_CACHE_LINESIZE _SC_LEVEL2_CACHE_LINESIZE"
.LASF716:
	.string	"__uid_t_defined "
.LASF739:
	.string	"BYTE_ORDER __BYTE_ORDER"
.LASF293:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1000:
	.string	"_SC_THREADS _SC_THREADS"
.LASF363:
	.string	"__SSE2__ 1"
.LASF263:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF946:
	.string	"_SC_FSYNC _SC_FSYNC"
.LASF622:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF522:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF687:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF1032:
	.string	"_SC_XOPEN_XPG3 _SC_XOPEN_XPG3"
.LASF505:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF321:
	.string	"__REGISTER_PREFIX__ "
.LASF320:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF172:
	.string	"__DBL_DIG__ 15"
.LASF1217:
	.string	"_GETOPT_CORE_H 1"
.LASF814:
	.string	"_POSIX2_LOCALEDEF __POSIX2_THIS_VERSION"
.LASF701:
	.string	"__f32(x) x ##f32"
.LASF495:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF31:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF246:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF990:
	.string	"_SC_POLL _SC_POLL"
.LASF470:
	.string	"__END_DECLS "
.LASF369:
	.string	"__SEG_GS 1"
.LASF113:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF673:
	.string	"FOPEN_MAX"
.LASF443:
	.string	"__USE_MISC 1"
.LASF1085:
	.string	"_SC_NETWORKING _SC_NETWORKING"
.LASF356:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF868:
	.string	"_POSIX_TIMERS 200809L"
.LASF645:
	.string	"_____fpos64_t_defined 1"
.LASF954:
	.string	"_SC_AIO_LISTIO_MAX _SC_AIO_LISTIO_MAX"
.LASF898:
	.string	"STDOUT_FILENO 1"
.LASF353:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF365:
	.string	"__SSE_MATH__ 1"
.LASF1227:
	.string	"short int"
.LASF453:
	.string	"_SYS_CDEFS_H 1"
.LASF1106:
	.string	"_SC_SYMLOOP_MAX _SC_SYMLOOP_MAX"
.LASF846:
	.string	"_POSIX_THREAD_PRIO_PROTECT 200809L"
.LASF235:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF87:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF129:
	.string	"__UINT16_C(c) c"
.LASF213:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF214:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF419:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF662:
	.string	"BUFSIZ 8192"
.LASF780:
	.string	"__blkcnt_t_defined "
.LASF288:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF750:
	.string	"htole32(x) __uint32_identity (x)"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF483:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF779:
	.string	"__blksize_t_defined "
.LASF982:
	.string	"_SC_2_FORT_RUN _SC_2_FORT_RUN"
.LASF228:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF184:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF1084:
	.string	"_SC_SINGLE_PROCESS _SC_SINGLE_PROCESS"
.LASF103:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF236:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF72:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF68:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF1086:
	.string	"_SC_READER_WRITER_LOCKS _SC_READER_WRITER_LOCKS"
.LASF520:
	.string	"__LDBL_REDIR2_DECL(name) "
.LASF1221:
	.string	"F_TEST 3"
.LASF971:
	.string	"_SC_BC_STRING_MAX _SC_BC_STRING_MAX"
.LASF1012:
	.string	"_SC_THREAD_PRIORITY_SCHEDULING _SC_THREAD_PRIORITY_SCHEDULING"
.LASF590:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF28:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1100:
	.string	"_SC_USER_GROUPS_R _SC_USER_GROUPS_R"
.LASF548:
	.string	"__GLIBC_USE_IEC_60559_EXT 0"
.LASF693:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF177:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF531:
	.string	"__attr_dealloc_free __attr_dealloc (__builtin_free, 1)"
.LASF709:
	.string	"_SYS_TYPES_H 1"
.LASF481:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF1133:
	.string	"_SC_IPV6 _SC_IPV6"
.LASF1150:
	.string	"_CS_V6_WIDTH_RESTRICTED_ENVS _CS_V6_WIDTH_RESTRICTED_ENVS"
.LASF607:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF179:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF107:
	.string	"__INT16_MAX__ 0x7fff"
.LASF1209:
	.string	"_CS_POSIX_V7_LP64_OFF64_LINTFLAGS _CS_POSIX_V7_LP64_OFF64_LINTFLAGS"
.LASF484:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF591:
	.string	"__SWORD_TYPE long int"
.LASF912:
	.string	"_PC_MAX_INPUT _PC_MAX_INPUT"
.LASF893:
	.string	"__ILP32_OFFBIG_CFLAGS \"-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64\""
.LASF676:
	.string	"stdout stdout"
.LASF492:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF1140:
	.string	"_SC_TRACE_EVENT_NAME_MAX _SC_TRACE_EVENT_NAME_MAX"
.LASF252:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF604:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF431:
	.string	"__USE_POSIX 1"
.LASF1118:
	.string	"_SC_LEVEL1_ICACHE_SIZE _SC_LEVEL1_ICACHE_SIZE"
.LASF877:
	.string	"_POSIX2_CHAR_TERM 200809L"
.LASF105:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF678:
	.string	"__attr_dealloc_fclose"
.LASF1038:
	.string	"_SC_INT_MIN _SC_INT_MIN"
.LASF530:
	.string	"__attr_dealloc(dealloc,argno) __attribute__ ((__malloc__ (dealloc, argno)))"
.LASF703:
	.string	"__f32x(x) x ##f32x"
.LASF196:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF1160:
	.string	"_CS_LFS_LIBS _CS_LFS_LIBS"
.LASF975:
	.string	"_SC_LINE_MAX _SC_LINE_MAX"
.LASF909:
	.string	"L_XTND SEEK_END"
.LASF583:
	.string	"__S16_TYPE short int"
.LASF800:
	.string	"__PTHREAD_MUTEX_INITIALIZER(__kind) 0, 0, 0, 0, __kind, 0, 0, { 0, 0 }"
.LASF347:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF723:
	.string	"__time_t_defined 1"
.LASF1047:
	.string	"_SC_SHRT_MIN _SC_SHRT_MIN"
.LASF793:
	.string	"__SIZEOF_PTHREAD_RWLOCKATTR_T 8"
.LASF746:
	.string	"htole16(x) __uint16_identity (x)"
.LASF1198:
	.string	"_CS_POSIX_V7_ILP32_OFF32_CFLAGS _CS_POSIX_V7_ILP32_OFF32_CFLAGS"
.LASF499:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF503:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF232:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF1046:
	.string	"_SC_SHRT_MAX _SC_SHRT_MAX"
.LASF301:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF58:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF840:
	.string	"_POSIX_REENTRANT_FUNCTIONS 1"
.LASF292:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF738:
	.string	"PDP_ENDIAN __PDP_ENDIAN"
.LASF30:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1081:
	.string	"_SC_FILE_SYSTEM _SC_FILE_SYSTEM"
.LASF1021:
	.string	"_SC_PASS_MAX _SC_PASS_MAX"
.LASF839:
	.string	"_POSIX_THREADS 200809L"
.LASF668:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF621:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF507:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF612:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF259:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF688:
	.string	"__HAVE_FLOAT16 0"
.LASF651:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF1053:
	.string	"_SC_NL_LANGMAX _SC_NL_LANGMAX"
.LASF1045:
	.string	"_SC_SCHAR_MIN _SC_SCHAR_MIN"
.LASF420:
	.string	"_DEFAULT_SOURCE"
.LASF243:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF572:
	.string	"_GCC_SIZE_T "
.LASF284:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF1031:
	.string	"_SC_XOPEN_XPG2 _SC_XOPEN_XPG2"
.LASF834:
	.string	"_POSIX_VDISABLE '\\0'"
.LASF211:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF81:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF1026:
	.string	"_SC_XOPEN_ENH_I18N _SC_XOPEN_ENH_I18N"
.LASF340:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF962:
	.string	"_SC_PAGE_SIZE _SC_PAGESIZE"
.LASF733:
	.string	"__BYTE_ORDER __LITTLE_ENDIAN"
.LASF885:
	.string	"_POSIX_V7_LPBIG_OFFBIG -1"
.LASF422:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF601:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF205:
	.string	"__FLT16_DIG__ 3"
.LASF148:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF357:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF1110:
	.string	"_SC_V6_ILP32_OFFBIG _SC_V6_ILP32_OFFBIG"
.LASF471:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF735:
	.string	"__LONG_LONG_PAIR(HI,LO) LO, HI"
.LASF349:
	.string	"__amd64 1"
.LASF428:
	.string	"_POSIX_SOURCE 1"
.LASF197:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF432:
	.string	"__USE_POSIX2 1"
.LASF375:
	.string	"__unix__ 1"
.LASF613:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF784:
	.string	"_THREAD_SHARED_TYPES_H 1"
.LASF526:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF1149:
	.string	"_CS_PATH _CS_PATH"
.LASF547:
	.string	"__GLIBC_USE_IEC_60559_EXT"
.LASF188:
	.string	"__LDBL_DIG__ 18"
.LASF605:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF714:
	.string	"__mode_t_defined "
.LASF86:
	.string	"__WINT_MIN__ 0U"
.LASF606:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF237:
	.string	"__FLT64_DIG__ 15"
.LASF312:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF667:
	.string	"P_tmpdir \"/tmp\""
.LASF164:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF116:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF653:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF1189:
	.string	"_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS"
.LASF819:
	.string	"_XOPEN_XPG4 1"
.LASF60:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF1143:
	.string	"_SC_TRACE_USER_EVENT_MAX _SC_TRACE_USER_EVENT_MAX"
.LASF456:
	.string	"__glibc_has_builtin(name) __has_builtin (name)"
.LASF376:
	.string	"unix 1"
.LASF725:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF194:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF233:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1192:
	.string	"_CS_POSIX_V6_LP64_OFF64_LIBS _CS_POSIX_V6_LP64_OFF64_LIBS"
.LASF918:
	.string	"_PC_VDISABLE _PC_VDISABLE"
.LASF550:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF372:
	.string	"__linux__ 1"
.LASF445:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF189:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF554:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF551:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF1132:
	.string	"_SC_LEVEL4_CACHE_LINESIZE _SC_LEVEL4_CACHE_LINESIZE"
.LASF831:
	.string	"_POSIX_MEMLOCK_RANGE 200809L"
.LASF632:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF903:
	.string	"R_OK 4"
.LASF181:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF580:
	.string	"__need___va_list"
.LASF1018:
	.string	"_SC_PHYS_PAGES _SC_PHYS_PAGES"
.LASF354:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF933:
	.string	"_SC_CLK_TCK _SC_CLK_TCK"
.LASF1034:
	.string	"_SC_CHAR_BIT _SC_CHAR_BIT"
.LASF130:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF812:
	.string	"_POSIX2_C_DEV __POSIX2_THIS_VERSION"
.LASF713:
	.string	"__gid_t_defined "
.LASF881:
	.string	"_POSIX_TRACE_EVENT_FILTER -1"
.LASF1134:
	.string	"_SC_RAW_SOCKETS _SC_RAW_SOCKETS"
.LASF476:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF1187:
	.string	"_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS"
.LASF1080:
	.string	"_SC_FILE_LOCKING _SC_FILE_LOCKING"
.LASF916:
	.string	"_PC_CHOWN_RESTRICTED _PC_CHOWN_RESTRICTED"
.LASF459:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF1153:
	.string	"_CS_GNU_LIBPTHREAD_VERSION _CS_GNU_LIBPTHREAD_VERSION"
.LASF608:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1030:
	.string	"_SC_2_UPE _SC_2_UPE"
.LASF1185:
	.string	"_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS"
.LASF999:
	.string	"_SC_T_IOV_MAX _SC_T_IOV_MAX"
.LASF412:
	.string	"__KERNEL_STRICT_NAMES"
.LASF268:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF1130:
	.string	"_SC_LEVEL4_CACHE_SIZE _SC_LEVEL4_CACHE_SIZE"
.LASF941:
	.string	"_SC_PRIORITY_SCHEDULING _SC_PRIORITY_SCHEDULING"
.LASF94:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1002:
	.string	"_SC_GETGR_R_SIZE_MAX _SC_GETGR_R_SIZE_MAX"
.LASF405:
	.string	"__USE_LARGEFILE64"
.LASF649:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF684:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF285:
	.string	"__FLT64X_DIG__ 18"
.LASF896:
	.string	"__LP64_OFF64_LDFLAGS \"-m64\""
.LASF1048:
	.string	"_SC_UCHAR_MAX _SC_UCHAR_MAX"
.LASF308:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF783:
	.string	"_BITS_PTHREADTYPES_COMMON_H 1"
.LASF1114:
	.string	"_SC_TRACE _SC_TRACE"
.LASF939:
	.string	"_SC_SAVED_IDS _SC_SAVED_IDS"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF147:
	.string	"__INTPTR_WIDTH__ 64"
.LASF734:
	.string	"__FLOAT_WORD_ORDER __BYTE_ORDER"
.LASF371:
	.string	"__linux 1"
.LASF174:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF139:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF198:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF1014:
	.string	"_SC_THREAD_PRIO_PROTECT _SC_THREAD_PRIO_PROTECT"
.LASF830:
	.string	"_POSIX_MEMLOCK 200809L"
.LASF182:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF775:
	.string	"FD_SET(fd,fdsetp) __FD_SET (fd, fdsetp)"
.LASF290:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF541:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF1211:
	.string	"_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS"
.LASF1090:
	.string	"_SC_SHELL _SC_SHELL"
.LASF637:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF907:
	.string	"L_SET SEEK_SET"
.LASF788:
	.string	"__SIZEOF_PTHREAD_RWLOCK_T 56"
.LASF429:
	.string	"_POSIX_C_SOURCE"
.LASF1028:
	.string	"_SC_2_CHAR_TERM _SC_2_CHAR_TERM"
.LASF171:
	.string	"__DBL_MANT_DIG__ 53"
.LASF631:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF1196:
	.string	"_CS_POSIX_V6_LPBIG_OFFBIG_LIBS _CS_POSIX_V6_LPBIG_OFFBIG_LIBS"
.LASF141:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF510:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF80:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF132:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF1083:
	.string	"_SC_MULTI_PROCESS _SC_MULTI_PROCESS"
.LASF670:
	.string	"TMP_MAX 238328"
.LASF816:
	.string	"_XOPEN_XCU_VERSION 4"
.LASF1099:
	.string	"_SC_USER_GROUPS _SC_USER_GROUPS"
.LASF781:
	.string	"__fsblkcnt_t_defined "
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/user/OSBase/sem3/sem1/task3"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
