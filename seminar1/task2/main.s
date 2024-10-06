	.file	"main.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.file 0 "/home/user/OSBase/sem1/task2" "main.c"
	.globl	abs1
	.type	abs1, @function
abs1:
.LFB0:
	.file 1 "main.c"
	.loc 1 3 23
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -8[rbp], xmm0
	.loc 1 4 5
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	jbe	.L6
	.loc 1 5 10
	movsd	xmm0, QWORD PTR -8[rbp]
	jmp	.L4
.L6:
	.loc 1 7 11
	movsd	xmm0, QWORD PTR -8[rbp]
	movq	xmm1, QWORD PTR .LC1[rip]
	xorpd	xmm0, xmm1
.L4:
	.loc 1 9 1
	movq	rax, xmm0
	movq	xmm0, rax
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	abs1, .-abs1
	.section	.rodata
.LC3:
	.string	"%lf"
.LC6:
	.string	"%lf/n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 11 11
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	.loc 1 12 9
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	.loc 1 14 10
	lea	rax, -40[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], eax
	.loc 1 16 8
	movsd	xmm1, QWORD PTR -40[rbp]
	.loc 1 16 5
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	ja	.L8
	.loc 1 16 12 discriminator 2
	cmp	DWORD PTR -28[rbp], 0
	jne	.L9
.L8:
	.loc 1 16 31 discriminator 3
	mov	eax, -1
	jmp	.L13
.L9:
	.loc 1 18 9
	movsd	xmm0, QWORD PTR .LC4[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	.loc 1 19 30
	movsd	xmm0, QWORD PTR -40[rbp]
	divsd	xmm0, QWORD PTR -8[rbp]
	.loc 1 19 25
	addsd	xmm0, QWORD PTR -8[rbp]
	.loc 1 19 9
	movsd	xmm1, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	.loc 1 21 8
	jmp	.L11
.L12:
	.loc 1 22 9
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	.loc 1 23 24
	movsd	xmm0, QWORD PTR -40[rbp]
	divsd	xmm0, QWORD PTR -8[rbp]
	.loc 1 23 19
	addsd	xmm0, QWORD PTR -8[rbp]
	.loc 1 23 10
	movsd	xmm1, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
.L11:
	.loc 1 21 9
	movsd	xmm0, QWORD PTR -16[rbp]
	subsd	xmm0, QWORD PTR -8[rbp]
	movq	rax, xmm0
	movq	xmm0, rax
	call	abs1
	movq	rax, xmm0
	.loc 1 21 30
	movq	xmm2, rax
	comisd	xmm2, QWORD PTR -24[rbp]
	jnb	.L12
	.loc 1 26 2
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 1
	call	printf@PLT
	.loc 1 27 9
	mov	eax, 0
.L13:
	.loc 1 28 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1073741824
	.text
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x143
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x6
	.long	.LASF722
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
	.long	.LASF709
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF710
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF711
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF712
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF713
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF714
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF715
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF716
	.uleb128 0x8
	.long	0x6a
	.uleb128 0x9
	.long	.LASF723
	.byte	0x2
	.value	0x164
	.byte	0xc
	.long	0x5c
	.long	0x8e
	.uleb128 0x3
	.long	0x8e
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x71
	.uleb128 0xb
	.long	.LASF724
	.byte	0x2
	.value	0x1b5
	.byte	0xc
	.long	.LASF725
	.long	0x5c
	.long	0xb0
	.uleb128 0x3
	.long	0x8e
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF720
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.long	0x5c
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x113
	.uleb128 0x2
	.string	"eps"
	.byte	0xc
	.byte	0x9
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"a"
	.byte	0xd
	.byte	0x9
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"r"
	.byte	0xe
	.byte	0x6
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF717
	.byte	0x12
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF718
	.byte	0x13
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF719
	.uleb128 0xd
	.long	.LASF721
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.long	0x113
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x3
	.byte	0x14
	.long	0x113
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.file 3 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro4
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF387
	.file 5 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro5
	.file 6 "/usr/include/features-time64.h"
	.byte	0x3
	.uleb128 0x188
	.uleb128 0x6
	.file 7 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 8 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x7
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
	.file 9 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1e9
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x3
	.uleb128 0x231
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 10 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x232
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x15
	.long	.LASF515
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x201
	.uleb128 0xb
	.file 12 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xc
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
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF579
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x18
	.long	.LASF582
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF442
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro15
	.file 16 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.file 17 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x6
	.uleb128 0xe2
	.long	.LASF642
	.byte	0x4
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x2
	.long	.LASF643
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x2
	.long	.LASF644
	.byte	0x4
	.byte	0x4
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x2
	.long	.LASF645
	.byte	0x4
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x2
	.long	.LASF646
	.byte	0x4
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x2
	.long	.LASF647
	.byte	0x4
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.file 24 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro21
	.file 25 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x1ae
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro22
	.file 26 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0x15
	.long	.LASF687
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x15
	.long	.LASF515
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
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
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.baf119258a1e53d8dba67ceac44ab6bc,comdat
.Ldebug_macro6:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF439
	.byte	0x5
	.uleb128 0xc
	.long	.LASF440
	.byte	0x5
	.uleb128 0xe
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF212:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF564:
	.string	"_SIZE_T_ "
.LASF103:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF250:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF567:
	.string	"_SIZE_T_DEFINED "
.LASF646:
	.string	"____FILE_defined 1"
.LASF195:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF207:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF233:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF698:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF240:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF158:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF600:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF294:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF272:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF446:
	.string	"__GLIBC_USE_DEPRECATED_GETS 0"
.LASF338:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF634:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF312:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF182:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF146:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF477:
	.string	"__flexarr []"
.LASF220:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF328:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF578:
	.string	"__need_NULL"
.LASF503:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF423:
	.string	"__USE_ISOC11 1"
.LASF484:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF665:
	.string	"SEEK_CUR 1"
.LASF274:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF359:
	.string	"__k8__ 1"
.LASF173:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF140:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF331:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF676:
	.string	"stdout stdout"
.LASF705:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF453:
	.string	"_SYS_CDEFS_H 1"
.LASF275:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF510:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF347:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF417:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF260:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF559:
	.string	"_SIZE_T "
.LASF508:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF591:
	.string	"__SWORD_TYPE long int"
.LASF488:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF414:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF8:
	.string	"__GNUC_MINOR__ 2"
.LASF228:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF405:
	.string	"__USE_LARGEFILE64"
.LASF545:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF517:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF49:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF710:
	.string	"unsigned int"
.LASF452:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF556:
	.string	"__need_NULL "
.LASF245:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF93:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF427:
	.string	"_POSIX_SOURCE"
.LASF166:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF48:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF31:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF475:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF35:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF659:
	.string	"_IOFBF 0"
.LASF340:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF392:
	.string	"__USE_ISOCXX11"
.LASF563:
	.string	"__SIZE_T "
.LASF133:
	.string	"__UINT64_C(c) c ## UL"
.LASF448:
	.string	"__GNU_LIBRARY__"
.LASF171:
	.string	"__DBL_MANT_DIG__ 53"
.LASF169:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF534:
	.string	"__stub_chflags "
.LASF80:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF170:
	.string	"__FLT_IS_IEC_60559__ 2"
.LASF205:
	.string	"__FLT16_DIG__ 3"
.LASF535:
	.string	"__stub_fchflags "
.LASF52:
	.string	"__INT16_TYPE__ short int"
.LASF378:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF219:
	.string	"__FLT16_IS_IEC_60559__ 2"
.LASF305:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF569:
	.string	"_SIZE_T_DECLARED "
.LASF473:
	.string	"__glibc_objsize0(__o) __bos0 (__o)"
.LASF188:
	.string	"__LDBL_DIG__ 18"
.LASF288:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF432:
	.string	"__USE_POSIX2 1"
.LASF425:
	.string	"__USE_ISOC95 1"
.LASF725:
	.string	"__isoc99_scanf"
.LASF27:
	.string	"__SIZEOF_SHORT__ 2"
.LASF552:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF58:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF138:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF59:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF574:
	.string	"__size_t "
.LASF65:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF539:
	.string	"__stub_sigreturn "
.LASF468:
	.string	"__ptr_t void *"
.LASF585:
	.string	"__S32_TYPE int"
.LASF73:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF37:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF197:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF373:
	.string	"linux 1"
.LASF223:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF183:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF62:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF84:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF463:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF657:
	.string	"__off_t_defined "
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF630:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF489:
	.string	"__attribute_maybe_unused__ __attribute__ ((__unused__))"
.LASF117:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF66:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF407:
	.string	"__USE_MISC"
.LASF78:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF528:
	.string	"__fortified_attr_access(a,o,s) __attr_access ((a, o, s))"
.LASF40:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF505:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF237:
	.string	"__FLT64_DIG__ 15"
.LASF67:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF20:
	.string	"__PIE__ 2"
.LASF203:
	.string	"__LDBL_IS_IEC_60559__ 2"
.LASF553:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF281:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF399:
	.string	"__USE_UNIX98"
.LASF265:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF437:
	.string	"_ATFILE_SOURCE"
.LASF367:
	.string	"__MMX_WITH_SSE__ 1"
.LASF63:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF345:
	.string	"__SIZEOF_INT128__ 16"
.LASF462:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF681:
	.string	"__HAVE_FLOAT128 1"
.LASF525:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF115:
	.string	"__INT8_C(c) c"
.LASF562:
	.string	"_T_SIZE "
.LASF259:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF100:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF438:
	.string	"_ATFILE_SOURCE 1"
.LASF703:
	.string	"__f32x(x) x ##f32x"
.LASF61:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF119:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF514:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF658:
	.string	"__ssize_t_defined "
.LASF561:
	.string	"_T_SIZE_ "
.LASF582:
	.string	"_BITS_TYPES_H 1"
.LASF455:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF504:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF572:
	.string	"_GCC_SIZE_T "
.LASF251:
	.string	"__FLT64_IS_IEC_60559__ 2"
.LASF232:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF375:
	.string	"__unix__ 1"
.LASF325:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF286:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF640:
	.string	"_BITS_TIME64_H 1"
.LASF565:
	.string	"_BSD_SIZE_T_ "
.LASF538:
	.string	"__stub_setlogin "
.LASF156:
	.string	"__FLT_DIG__ 6"
.LASF137:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF19:
	.string	"__pie__ 2"
.LASF204:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF693:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF385:
	.string	"_STDIO_H 1"
.LASF660:
	.string	"_IOLBF 1"
.LASF148:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF383:
	.string	"__STDC_IEC_60559_COMPLEX__ 201404L"
.LASF149:
	.string	"__GCC_IEC_559 2"
.LASF254:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF691:
	.string	"__HAVE_FLOAT32X 1"
.LASF234:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF568:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF128:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF145:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF196:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF7:
	.string	"__GNUC__ 12"
.LASF126:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF542:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF315:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF416:
	.string	"__KERNEL_STRICT_NAMES "
.LASF44:
	.string	"__WCHAR_TYPE__ int"
.LASF106:
	.string	"__INT8_MAX__ 0x7f"
.LASF454:
	.string	"__PMT"
.LASF319:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF396:
	.string	"__USE_POSIX199506"
.LASF389:
	.string	"__USE_ISOC11"
.LASF523:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF481:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF256:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF637:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF154:
	.string	"__FLT_RADIX__ 2"
.LASF279:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF465:
	.string	"__PMT(args) args"
.LASF603:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF30:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF185:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF500:
	.string	"__wur "
.LASF299:
	.string	"__FLT64X_IS_IEC_60559__ 2"
.LASF199:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF611:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF249:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF142:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF356:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF191:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF46:
	.string	"__INTMAX_TYPE__ long int"
.LASF536:
	.string	"__stub_gtty "
.LASF598:
	.string	"_BITS_TYPESIZES_H 1"
.LASF623:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF515:
	.string	"__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0"
.LASF75:
	.string	"__INTPTR_TYPE__ long int"
.LASF311:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF668:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF335:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF548:
	.string	"__GLIBC_USE_IEC_60559_EXT 0"
.LASF697:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF361:
	.string	"__MMX__ 1"
.LASF614:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF487:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF285:
	.string	"__FLT64X_DIG__ 18"
.LASF125:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF526:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF252:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF34:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF435:
	.string	"__USE_XOPEN2K 1"
.LASF348:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF314:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF424:
	.string	"__USE_ISOC99 1"
.LASF53:
	.string	"__INT32_TYPE__ int"
.LASF412:
	.string	"__KERNEL_STRICT_NAMES"
.LASF586:
	.string	"__U32_TYPE unsigned int"
.LASF360:
	.string	"__code_model_small__ 1"
.LASF391:
	.string	"__USE_ISOC95"
.LASF296:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF351:
	.string	"__x86_64 1"
.LASF661:
	.string	"_IONBF 2"
.LASF390:
	.string	"__USE_ISOC99"
.LASF433:
	.string	"__USE_POSIX199309 1"
.LASF558:
	.string	"__SIZE_T__ "
.LASF612:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF215:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF669:
	.string	"L_tmpnam 20"
.LASF382:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF287:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF384:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF566:
	.string	"_SIZE_T_DEFINED_ "
.LASF469:
	.string	"__BEGIN_DECLS "
.LASF632:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF342:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF576:
	.string	"NULL"
.LASF257:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF261:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF624:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF666:
	.string	"SEEK_END 2"
.LASF135:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF239:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF643:
	.string	"_____fpos_t_defined 1"
.LASF527:
	.string	"__attr_access(x) __attribute__ ((__access__ x))"
.LASF178:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF421:
	.string	"_DEFAULT_SOURCE 1"
.LASF636:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF350:
	.string	"__amd64__ 1"
.LASF551:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF644:
	.string	"____mbstate_t_defined 1"
.LASF206:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF226:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF253:
	.string	"__FLT128_DIG__ 33"
.LASF56:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF690:
	.string	"__HAVE_FLOAT64 1"
.LASF94:
	.string	"__WCHAR_WIDTH__ 32"
.LASF330:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF722:
	.string	"GNU C17 12.2.0 -masm=intel -mtune=generic -march=x86-64 -g3 -fasynchronous-unwind-tables"
.LASF684:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF82:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF594:
	.string	"__ULONG32_TYPE unsigned int"
.LASF64:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF160:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF650:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF278:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF208:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF701:
	.string	"__f32(x) x ##f32"
.LASF426:
	.string	"__USE_POSIX_IMPLICITLY 1"
.LASF324:
	.string	"__NO_INLINE__ 1"
.LASF507:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF98:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF442:
	.string	"__TIMESIZE __WORDSIZE"
.LASF626:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF242:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF327:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF222:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF42:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF631:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF153:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF662:
	.string	"BUFSIZ 8192"
.LASF213:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF672:
	.string	"L_ctermid 9"
.LASF174:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF716:
	.string	"char"
.LASF656:
	.string	"_VA_LIST_DEFINED "
.LASF190:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF77:
	.string	"__GXX_ABI_VERSION 1017"
.LASF248:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF151:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF292:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF280:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF352:
	.string	"__x86_64__ 1"
.LASF696:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF645:
	.string	"_____fpos64_t_defined 1"
.LASF718:
	.string	"next_x"
.LASF479:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF617:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF291:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF308:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF520:
	.string	"__LDBL_REDIR2_DECL(name) "
.LASF620:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF434:
	.string	"__USE_POSIX199506 1"
.LASF627:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF123:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF116:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF518:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF110:
	.string	"__UINT8_MAX__ 0xff"
.LASF502:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF111:
	.string	"__UINT16_MAX__ 0xffff"
.LASF688:
	.string	"__HAVE_FLOAT16 0"
.LASF419:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF422:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF70:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF675:
	.string	"stdin stdin"
.LASF491:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF112:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF102:
	.string	"__INTMAX_WIDTH__ 64"
.LASF304:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF186:
	.string	"__DBL_IS_IEC_60559__ 2"
.LASF87:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF395:
	.string	"__USE_POSIX199309"
.LASF60:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF224:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF370:
	.string	"__gnu_linux__ 1"
.LASF597:
	.string	"__STD_TYPE typedef"
.LASF606:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF444:
	.string	"__USE_ATFILE 1"
.LASF400:
	.string	"__USE_XOPEN2K"
.LASF172:
	.string	"__DBL_DIG__ 15"
.LASF114:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF583:
	.string	"__S16_TYPE short int"
.LASF23:
	.string	"__LP64__ 1"
.LASF441:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF336:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF269:
	.string	"__FLT32X_DIG__ 15"
.LASF268:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF519:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF22:
	.string	"_LP64 1"
.LASF388:
	.string	"_FEATURES_H 1"
.LASF221:
	.string	"__FLT32_DIG__ 6"
.LASF608:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF587:
	.string	"__SLONGWORD_TYPE long int"
.LASF540:
	.string	"__stub_stty "
.LASF413:
	.string	"__GLIBC_USE_ISOC2X"
.LASF289:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF180:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF283:
	.string	"__FLT32X_IS_IEC_60559__ 2"
.LASF723:
	.string	"printf"
.LASF329:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF144:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF21:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF584:
	.string	"__U16_TYPE unsigned short int"
.LASF243:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF557:
	.string	"__size_t__ "
.LASF639:
	.string	"__FD_SETSIZE 1024"
.LASF403:
	.string	"__USE_XOPEN2K8XSI"
.LASF707:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF357:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF679:
	.string	"__attr_dealloc_fclose __attr_dealloc (fclose, 1)"
.LASF132:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF717:
	.string	"cur_x"
.LASF590:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF377:
	.string	"__ELF__ 1"
.LASF277:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF76:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF118:
	.string	"__INT16_C(c) c"
.LASF343:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF28:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF306:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF298:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF168:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF497:
	.string	"__nonnull(params) __attribute_nonnull__ (params)"
.LASF642:
	.string	"__STD_TYPE"
.LASF217:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF605:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF449:
	.string	"__GNU_LIBRARY__ 6"
.LASF2:
	.string	"__STDC__ 1"
.LASF478:
	.string	"__glibc_c99_flexarr_available 1"
.LASF363:
	.string	"__SSE2__ 1"
.LASF593:
	.string	"__SLONG32_TYPE int"
.LASF175:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF25:
	.string	"__SIZEOF_LONG__ 8"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF406:
	.string	"__USE_FILE_OFFSET64"
.LASF229:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF45:
	.string	"__WINT_TYPE__ unsigned int"
.LASF663:
	.string	"EOF (-1)"
.LASF107:
	.string	"__INT16_MAX__ 0x7fff"
.LASF430:
	.string	"_POSIX_C_SOURCE 200809L"
.LASF89:
	.string	"__SCHAR_WIDTH__ 8"
.LASF131:
	.string	"__UINT32_C(c) c ## U"
.LASF69:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF581:
	.string	"__GNUC_VA_LIST "
.LASF29:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF9:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF127:
	.string	"__UINT8_C(c) c"
.LASF680:
	.string	"_BITS_FLOATN_H "
.LASF615:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF210:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF411:
	.string	"__USE_FORTIFY_LEVEL"
.LASF541:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF86:
	.string	"__WINT_MIN__ 0U"
.LASF187:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF457:
	.string	"__glibc_has_extension(ext) 0"
.LASF472:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF163:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF198:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF235:
	.string	"__FLT32_IS_IEC_60559__ 2"
.LASF638:
	.string	"__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 1"
.LASF494:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF501:
	.string	"__always_inline"
.LASF702:
	.string	"__f64(x) x ##f64"
.LASF686:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF201:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF431:
	.string	"__USE_POSIX 1"
.LASF635:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF150:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF104:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF700:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF704:
	.string	"__f64x(x) x ##f64x"
.LASF346:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF673:
	.string	"FOPEN_MAX"
.LASF492:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF255:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF38:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF326:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF706:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF300:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF231:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF532:
	.string	"__attribute_returns_twice__ __attribute__ ((__returns_twice__))"
.LASF143:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF512:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF580:
	.string	"__need___va_list"
.LASF108:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF571:
	.string	"___int_size_t_h "
.LASF529:
	.string	"__attr_access_none(argno) __attribute__ ((__access__ (__none__, argno)))"
.LASF474:
	.string	"__glibc_objsize(__o) __bos (__o)"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF129:
	.string	"__UINT16_C(c) c"
.LASF109:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF555:
	.string	"__need_size_t "
.LASF471:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF616:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF10:
	.string	"__VERSION__ \"12.2.0\""
.LASF369:
	.string	"__SEG_GS 1"
.LASF365:
	.string	"__SSE_MATH__ 1"
.LASF607:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF322:
	.string	"__USER_LABEL_PREFIX__ "
.LASF216:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF496:
	.string	"__attribute_nonnull__(params) __attribute__ ((__nonnull__ params))"
.LASF575:
	.string	"__need_size_t"
.LASF708:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF458:
	.string	"__LEAF , __leaf__"
.LASF316:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF685:
	.string	"__f128(x) x ##f128"
.LASF506:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF105:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF466:
	.string	"__CONCAT(x,y) x ## y"
.LASF493:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF79:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF333:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF530:
	.string	"__attr_dealloc(dealloc,argno) __attribute__ ((__malloc__ (dealloc, argno)))"
.LASF655:
	.string	"_IO_USER_LOCK 0x8000"
.LASF36:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF47:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF695:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF670:
	.string	"TMP_MAX 238328"
.LASF161:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF592:
	.string	"__UWORD_TYPE unsigned long int"
.LASF241:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF467:
	.string	"__STRING(x) #x"
.LASF647:
	.string	"__FILE_defined 1"
.LASF189:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF95:
	.string	"__WINT_WIDTH__ 32"
.LASF546:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF293:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF134:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF24:
	.string	"__SIZEOF_INT__ 4"
.LASF230:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF386:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF724:
	.string	"scanf"
.LASF714:
	.string	"short int"
.LASF651:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF451:
	.string	"__GLIBC_MINOR__ 36"
.LASF81:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF266:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF309:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF271:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF394:
	.string	"__USE_POSIX2"
.LASF715:
	.string	"long int"
.LASF609:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF101:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF649:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF313:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF570:
	.string	"__DEFINED_size_t "
.LASF297:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF445:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF317:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF270:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF486:
	.string	"__attribute_alloc_align__(param) __attribute__ ((__alloc_align__ param))"
.LASF147:
	.string	"__INTPTR_WIDTH__ 64"
.LASF604:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF339:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF71:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF121:
	.string	"__INT32_C(c) c"
.LASF619:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF202:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF51:
	.string	"__INT8_TYPE__ signed char"
.LASF85:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF371:
	.string	"__linux 1"
.LASF549:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF513:
	.string	"__attribute_copy__"
.LASF516:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF699:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF57:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF408:
	.string	"__USE_ATFILE"
.LASF402:
	.string	"__USE_XOPEN2K8"
.LASF547:
	.string	"__GLIBC_USE_IEC_60559_EXT"
.LASF303:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF667:
	.string	"P_tmpdir \"/tmp\""
.LASF480:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF397:
	.string	"__USE_XOPEN"
.LASF262:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF674:
	.string	"FOPEN_MAX 16"
.LASF429:
	.string	"_POSIX_C_SOURCE"
.LASF460:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF26:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF214:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF55:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF90:
	.string	"__SHRT_WIDTH__ 16"
.LASF366:
	.string	"__SSE2_MATH__ 1"
.LASF380:
	.string	"__STDC_IEC_559__ 1"
.LASF595:
	.string	"__S64_TYPE long int"
.LASF244:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF99:
	.string	"__INTMAX_C(c) c ## L"
.LASF618:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF692:
	.string	"__HAVE_FLOAT128X 0"
.LASF139:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF409:
	.string	"__USE_DYNAMIC_STACK_SIZE"
.LASF694:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF436:
	.string	"__USE_XOPEN2K8 1"
.LASF554:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF490:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF39:
	.string	"__SIZEOF_POINTER__ 8"
.LASF246:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF284:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF420:
	.string	"_DEFAULT_SOURCE"
.LASF83:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF579:
	.string	"__need___va_list "
.LASF155:
	.string	"__FLT_MANT_DIG__ 24"
.LASF439:
	.string	"__WORDSIZE 64"
.LASF91:
	.string	"__INT_WIDTH__ 32"
.LASF194:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF341:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF533:
	.string	"__stub___compat_bdflush "
.LASF577:
	.string	"NULL ((void *)0)"
.LASF720:
	.string	"main"
.LASF368:
	.string	"__SEG_FS 1"
.LASF464:
	.string	"__P(args) args"
.LASF622:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF72:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF450:
	.string	"__GLIBC__ 2"
.LASF3:
	.string	"__STDC_VERSION__ 201710L"
.LASF709:
	.string	"long unsigned int"
.LASF641:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF524:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF332:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF511:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF374:
	.string	"__unix 1"
.LASF32:
	.string	"__CHAR_BIT__ 8"
.LASF621:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF355:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF6:
	.string	"__STDC_HOSTED__ 1"
.LASF97:
	.string	"__SIZE_WIDTH__ 64"
.LASF522:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF381:
	.string	"__STDC_IEC_60559_BFP__ 201404L"
.LASF682:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF483:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF218:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF92:
	.string	"__LONG_WIDTH__ 64"
.LASF113:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF589:
	.string	"__SQUAD_TYPE long int"
.LASF401:
	.string	"__USE_XOPEN2KXSI"
.LASF485:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF358:
	.string	"__k8 1"
.LASF337:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF159:
	.string	"__FLT_MAX_EXP__ 128"
.LASF509:
	.string	"__restrict_arr __restrict"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF495:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF711:
	.string	"unsigned char"
.LASF652:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF302:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF54:
	.string	"__INT64_TYPE__ long int"
.LASF164:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF596:
	.string	"__U64_TYPE unsigned long int"
.LASF683:
	.string	"__HAVE_FLOAT64X 1"
.LASF531:
	.string	"__attr_dealloc_free __attr_dealloc (__builtin_free, 1)"
.LASF410:
	.string	"__USE_GNU"
.LASF689:
	.string	"__HAVE_FLOAT32 1"
.LASF364:
	.string	"__FXSR__ 1"
.LASF459:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF122:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF41:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF418:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF599:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF372:
	.string	"__linux__ 1"
.LASF18:
	.string	"__PIC__ 2"
.LASF648:
	.string	"__struct_FILE_defined 1"
.LASF301:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF560:
	.string	"_SYS_SIZE_T_H "
.LASF428:
	.string	"_POSIX_SOURCE 1"
.LASF447:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF543:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF88:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF602:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF498:
	.string	"__returns_nonnull __attribute__ ((__returns_nonnull__))"
.LASF588:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF334:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF290:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF664:
	.string	"SEEK_SET 0"
.LASF398:
	.string	"__USE_XOPEN_EXTENDED"
.LASF136:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF687:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF165:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF671:
	.string	"FILENAME_MAX 4096"
.LASF677:
	.string	"stderr stderr"
.LASF387:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF152:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF184:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF499:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF124:
	.string	"__INT64_C(c) c ## L"
.LASF470:
	.string	"__END_DECLS "
.LASF162:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF238:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF43:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF628:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF68:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF179:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF320:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF379:
	.string	"_STDC_PREDEF_H 1"
.LASF653:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF404:
	.string	"__USE_LARGEFILE"
.LASF713:
	.string	"signed char"
.LASF353:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF282:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF176:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF443:
	.string	"__USE_MISC 1"
.LASF712:
	.string	"short unsigned int"
.LASF17:
	.string	"__pic__ 2"
.LASF323:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF362:
	.string	"__SSE__ 1"
.LASF550:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF33:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF573:
	.string	"_SIZET_ "
.LASF263:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF544:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF537:
	.string	"__stub_revoke "
.LASF625:
	.string	"__SUSECONDS64_T_TYPE __SQUAD_TYPE"
.LASF157:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF354:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF476:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF318:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF321:
	.string	"__REGISTER_PREFIX__ "
.LASF521:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF610:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF719:
	.string	"double"
.LASF211:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF601:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF633:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF130:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF456:
	.string	"__glibc_has_builtin(name) __has_builtin (name)"
.LASF678:
	.string	"__attr_dealloc_fclose"
.LASF482:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF273:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF349:
	.string	"__amd64 1"
.LASF209:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF276:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF247:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF440:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF225:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF258:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF96:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF120:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF74:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF629:
	.string	"__TIMER_T_TYPE void *"
.LASF654:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF461:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF192:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF310:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF227:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF181:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF177:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF376:
	.string	"unix 1"
.LASF344:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF50:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF295:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF393:
	.string	"__USE_POSIX"
.LASF264:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF415:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF267:
	.string	"__FLT128_IS_IEC_60559__ 2"
.LASF200:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF613:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF721:
	.string	"abs1"
.LASF236:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF307:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF167:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF141:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF193:
	.string	"__DECIMAL_DIG__ 21"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/user/OSBase/sem1/task2"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
