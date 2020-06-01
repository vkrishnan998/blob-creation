	.file	"test.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %vector.ph
	xorl	%eax, %eax
	movdqa	.LCPI0_0(%rip), %xmm0
	pshufd	$49, %xmm0, %xmm1       # xmm1 = xmm0[1,0,3,0]
	.align	16, 0x90
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	.Lmain.elements(,%rax,4), %xmm2
	pshufd	$49, %xmm2, %xmm3       # xmm3 = xmm2[1,0,3,0]
	pmuludq	%xmm0, %xmm2
	pmuludq	%xmm1, %xmm3
	shufps	$-120, %xmm3, %xmm2     # xmm2 = xmm2[0,2],xmm3[0,2]
	pshufd	$-40, %xmm2, %xmm2      # xmm2 = xmm2[0,2,1,3]
	paddd	-24(%rsp,%rax,4), %xmm2
	movdqa	%xmm2, -24(%rsp,%rax,4)
	addq	$4, %rax
	cmpq	$20, %rax
	jne	.LBB0_1
# BB#2:                                 # %middle.block
	xorl	%eax, %eax
	ret
.Ltmp0:
	.size	main, .Ltmp0-main
	.cfi_endproc

	.type	.Lmain.elements,@object # @main.elements
	.section	.rodata,"a",@progbits
	.align	16
.Lmain.elements:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	.Lmain.elements, 20


	.ident	"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"
	.section	".note.GNU-stack","",@progbits
