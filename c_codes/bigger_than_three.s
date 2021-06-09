	.file	"bigger_than_three.c"
	.text
	.globl	a
	.bss
	.align 4
a:
	.space 4
	.globl	b
	.align 4
b:
	.space 4
	.globl	c
	.align 4
c:
	.space 4
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Teclea tres enteros: \0"
.LC1:
	.ascii "%d%d%d\0"
.LC2:
	.ascii "El mayor es %d = %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB28:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	c(%rip), %r9
	leaq	b(%rip), %r8
	leaq	a(%rip), %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jl	.L2
	movl	a(%rip), %edx
	movl	c(%rip), %eax
	cmpl	%eax, %edx
	jl	.L2
	movl	a(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L2:
	movl	b(%rip), %edx
	movl	a(%rip), %eax
	cmpl	%eax, %edx
	jl	.L4
	movl	b(%rip), %edx
	movl	c(%rip), %eax
	cmpl	%eax, %edx
	jl	.L4
	movl	b(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L4:
	movl	c(%rip), %eax
	movl	%eax, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
