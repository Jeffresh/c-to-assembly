	.file	"mcd_main.c"
	.text
	.globl	y
	.bss
	.align 4
y:
	.space 4
	.text
	.globl	_Z3mcdii
	.def	_Z3mcdii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3mcdii
_Z3mcdii:
.LFB28:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
.L3:
	cmpl	$0, 24(%rbp)
	je	.L2
	movl	16(%rbp), %eax
	cltd
	idivl	24(%rbp)
	movl	%edx, -4(%rbp)
	movl	24(%rbp), %eax
	movl	%eax, 16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, 24(%rbp)
	jmp	.L3
.L2:
	movl	16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "introduce dos enteros :\0"
.LC1:
	.ascii "%d%d\0"
.LC2:
	.ascii "El mcd de %d y %d vale %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB29:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-4(%rbp), %rax
	leaq	y(%rip), %r8
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	y(%rip), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	_Z3mcdii
	movl	%eax, %ecx
	movl	y(%rip), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
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
