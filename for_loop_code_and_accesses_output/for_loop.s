	.syntax unified
	.eabi_attribute	6, 1
	.eabi_attribute	8, 1
	.eabi_attribute	20, 1
	.eabi_attribute	21, 1
	.eabi_attribute	23, 3
	.eabi_attribute	24, 1
	.eabi_attribute	25, 1
	.file	"for_loop.bc"
	.text
	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	bic	sp, sp, #7
	mov	r4, #0
	mov	r1, #8
	str	r4, [sp, #36]
	ldr	r0, .LCPI0_0
	str	r0, [sp, #28]
	ldr	r0, .LCPI0_1
	str	r0, [sp, #24]
	mov	r0, #10
	bl	calloc
	str	r0, [sp, #20]
	mov	r0, #10
	mov	r1, #8
	bl	calloc
	str	r0, [sp, #16]
	mov	r0, #10
	mov	r1, #8
	bl	calloc
	str	r4, [sp, #8]
	str	r0, [sp, #12]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	b	.LBB0_2
.LBB0_1:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r4, [sp, #8]
	mov	r0, r4
	bl	__floatsidf
	ldr	r2, [sp, #16]
	str	r0, [r2, r4, lsl #3]!
	str	r1, [r2, #4]
	ldr	r4, [sp, #8]
	mov	r0, r4
	bl	__floatsidf
	ldr	r2, [sp, #12]
	str	r0, [r2, r4, lsl #3]!
	str	r1, [r2, #4]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #9
	ble	.LBB0_1
@ BB#3:
	ldr	r4, .LCPI0_2
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_4:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r5, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r2, [r0, r5, lsl #3]!
	ldr	r1, [sp, #28]
	ldr	r3, [r0, #4]
	ldr	r0, [sp, #24]
	bl	__muldf3
	ldr	r3, [sp, #12]
	ldr	r2, [r3, r5, lsl #3]!
	ldr	r3, [r3, #4]
	bl	__adddf3
	ldr	r2, [sp, #20]
	str	r0, [r2, r5, lsl #3]!
	str	r1, [r2, #4]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	ldr	r2, [r0, r1, lsl #3]!
	ldr	r3, [r0, #4]
	mov	r0, r4
	bl	printf
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #9
	ble	.LBB0_4
@ BB#6:
	mov	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	mov	pc, lr
	.align	2
@ BB#7:
.LCPI0_0:
	.long	1074340347              @ 0x400921fb
.LCPI0_1:
	.long	1293080650              @ 0x4d12d84a
.LCPI0_2:
	.long	.L.str
.Ltmp0:
	.size	main, .Ltmp0-main

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"result[%d]: %f\n"
	.size	.L.str, 16


	.ident	"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"
