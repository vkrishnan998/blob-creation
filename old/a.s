	.syntax unified
	.eabi_attribute	6, 1
	.eabi_attribute	8, 1
	.eabi_attribute	20, 1
	.eabi_attribute	21, 1
	.eabi_attribute	23, 3
	.eabi_attribute	24, 1
	.eabi_attribute	25, 1
	.file	"a.bc"
	.text
	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
@ BB#0:
	push	{lr}
	sub	sp, sp, #68
	ldr	r1, .LCPI0_0
	mov	r12, #0
	str	r12, [sp]
	str	r12, [sp, #64]
	str	r12, [sp]
	add	r12, sp, #44
	ldr	lr, [r1]
	ldr	r3, [r1, #4]
	ldr	r0, [r1, #8]
	ldr	r2, [r1, #12]
	ldr	r1, [r1, #16]
	str	r1, [sp, #60]
	str	r2, [sp, #56]
	str	r0, [sp, #52]
	str	r3, [sp, #48]
	str	lr, [sp, #44]
	add	r0, sp, #24
	add	lr, sp, #4
	b	.LBB0_2
.LBB0_1:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r3, [sp]
	ldr	r2, [r12, r3, lsl #2]
	ldr	r1, [r0, r3, lsl #2]
	add	r2, r2, r2, lsl #2
	add	r1, r1, r2, lsl #1
	str	r1, [r0, r3, lsl #2]
	ldr	r1, [sp]
	ldr	r2, [r0, r1, lsl #2]
	str	r2, [lr, r1, lsl #2]
	ldr	r1, [sp]
	add	r1, r1, #1
	str	r1, [sp]
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r3, [sp]
	cmp	r3, #19
	ble	.LBB0_1
@ BB#3:
	ldr	r0, [sp, #64]
	add	sp, sp, #68
	pop	{lr}
	mov	pc, lr
	.align	2
@ BB#4:
.LCPI0_0:
	.long	.Lmain.elements
.Ltmp0:
	.size	main, .Ltmp0-main

	.type	.Lmain.elements,%object @ @main.elements
	.section	.rodata,"a",%progbits
	.align	2
.Lmain.elements:
	.long	1                       @ 0x1
	.long	2                       @ 0x2
	.long	3                       @ 0x3
	.long	4                       @ 0x4
	.long	5                       @ 0x5
	.size	.Lmain.elements, 20


	.ident	"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"
