printf:
	pushq	%rbp
	pushq	%rbx
	subq	$56, %rsp
	leaq	48(%rsp), %rbp
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LC0:
	.ascii "Year: %d\12\0"
.LC1:
	.ascii "Heap Year: %d at Address: %p\12\0"

main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	call	__main
	movl	$2025, -20(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	getYear
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	changeInteger
	cmpq	$0, -16(%rbp)
	je	.L4
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %r8
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	$0, -16(%rbp)
.L4:
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret

changeInteger:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	ret

getYear:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$4, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$2026, (%rax)
	movq	-8(%rbp), %rax
.L9:
	addq	$48, %rsp
	popq	%rbp
	ret
