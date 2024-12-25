	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_ft_atoi                ## -- Begin function ft_atoi
	.p2align	4, 0x90
_ft_atoi:                               ## @ft_atoi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$32, %edx
	movb	$1, %sil
	movb	%sil, -37(%rbp)         ## 1-byte Spill
	je	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	cmpl	$9, %esi
	movb	%al, -38(%rbp)          ## 1-byte Spill
	jl	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$13, %edx
	setle	%sil
	movb	%sil, -38(%rbp)         ## 1-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-38(%rbp), %al          ## 1-byte Reload
	movb	%al, -37(%rbp)          ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-37(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_1
LBB0_7:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$45, %edx
	je	LBB0_9
## %bb.8:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$43, %edx
	jne	LBB0_12
LBB0_9:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$45, %edx
	jne	LBB0_11
## %bb.10:
	movl	$-1, -36(%rbp)
LBB0_11:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_12:
	jmp	LBB0_13
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	cmpl	$48, %esi
	movb	%al, -39(%rbp)          ## 1-byte Spill
	jl	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$57, %edx
	setle	%sil
	movb	%sil, -39(%rbp)         ## 1-byte Spill
LBB0_15:                                ##   in Loop: Header=BB0_13 Depth=1
	movb	-39(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_16
	jmp	LBB0_19
LBB0_16:                                ##   in Loop: Header=BB0_13 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	_overflow_handle
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	LBB0_18
## %bb.17:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_20
LBB0_18:                                ##   in Loop: Header=BB0_13 Depth=1
	imulq	$10, -32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	subl	$48, %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	jmp	LBB0_13
LBB0_19:
	movslq	-36(%rbp), %rax
	imulq	-32(%rbp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
LBB0_20:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function overflow_handle
_overflow_handle:                       ## @overflow_handle
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movabsq	$922337203685477580, %rax ## imm = 0xCCCCCCCCCCCCCCC
	cmpq	%rax, -16(%rbp)
	jg	LBB1_3
## %bb.1:
	movabsq	$922337203685477580, %rax ## imm = 0xCCCCCCCCCCCCCCC
	cmpq	%rax, -16(%rbp)
	jne	LBB1_6
## %bb.2:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rax
	cmpq	$7, %rax
	jle	LBB1_6
LBB1_3:
	cmpl	$-1, -20(%rbp)
	jne	LBB1_5
## %bb.4:
	movl	$0, -4(%rbp)
	jmp	LBB1_7
LBB1_5:
	movl	$-1, -4(%rbp)
	jmp	LBB1_7
LBB1_6:
	movl	$1, -4(%rbp)
LBB1_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
