	.file	"a.c"
	.text
	.p2align 4,,15
	.globl	_a
	.def	_a;	.scl	2;	.type	32;	.endef
_a:
LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	movl	$1, 4(%eax)
	ret
	.cfi_endproc
LFE0:
	.p2align 4,,15
	.globl	_b
	.def	_b;	.scl	2;	.type	32;	.endef
_b:
LFB1:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	movb	$0, (%edx)
	movl	(%eax), %eax
	movb	$1, 1(%eax)
	ret
	.cfi_endproc
LFE1:
	.p2align 4,,15
	.globl	_c
	.def	_c;	.scl	2;	.type	32;	.endef
_c:
LFB2:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	(%edx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE2:
	.p2align 4,,15
	.globl	_d
	.def	_d;	.scl	2;	.type	32;	.endef
_d:
LFB3:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %ecx
	.p2align 4,,7
L6:
	movl	(%ecx), %edx
	leal	(%edx,%edx,4), %edx
	addl	%edx, %edx
	imull	%eax, %edx
	addl	$1, %eax
	cmpl	$1000, %eax
	movl	%edx, (%ebx)
	jne	L6
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4,,15
	.globl	_c_1
	.def	_c_1;	.scl	2;	.type	32;	.endef
_c_1:
LFB4:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	(%edx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE4:
	.p2align 4,,15
	.globl	_c_2
	.def	_c_2;	.scl	2;	.type	32;	.endef
_c_2:
LFB5:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	(%edx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE5:
	.p2align 4,,15
	.globl	_c_3
	.def	_c_3;	.scl	2;	.type	32;	.endef
_c_3:
LFB6:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	(%eax), %edx
	movl	4(%esp), %eax
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE6:
	.p2align 4,,15
	.globl	_d_1
	.def	_d_1;	.scl	2;	.type	32;	.endef
_d_1:
LFB7:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	4(%esp), %eax
	addl	%edx, %edx
	imull	$999, %edx, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE7:
	.p2align 4,,15
	.globl	_d_2
	.def	_d_2;	.scl	2;	.type	32;	.endef
_d_2:
LFB8:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	movl	(%ebx), %ecx
	.p2align 4,,7
L15:
	movl	(%esi), %edx
	leal	(%edx,%edx,4), %edx
	addl	%edx, %edx
	imull	%eax, %edx
	addl	$1, %eax
	addl	%edx, %ecx
	cmpl	$1000, %eax
	movl	%ecx, (%ebx)
	jne	L15
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4,,15
	.globl	_d_3
	.def	_d_3;	.scl	2;	.type	32;	.endef
_d_3:
LFB9:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	16(%esp), %eax
	movl	12(%esp), %esi
	movl	(%eax), %eax
	movl	(%esi), %ecx
	leal	(%eax,%eax,4), %ebx
	movl	$1000, %eax
	addl	%ebx, %ebx
	.p2align 4,,7
L19:
	addl	%edx, %ecx
	addl	%ebx, %edx
	subl	$1, %eax
	jne	L19
	movl	%ecx, (%esi)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4,,15
	.globl	_c_short
	.def	_c_short;	.scl	2;	.type	32;	.endef
_c_short:
LFB10:
	.cfi_startproc
	movl	8(%esp), %eax
	movswl	(%eax), %edx
	movl	4(%esp), %eax
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE10:
	.p2align 4,,15
	.globl	_c_char
	.def	_c_char;	.scl	2;	.type	32;	.endef
_c_char:
LFB11:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movsbl	(%edx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movsbl	(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE11:
	.p2align 4,,15
	.globl	_e
	.def	_e;	.scl	2;	.type	32;	.endef
_e:
LFB12:
	.cfi_startproc
	movl	4(%esp), %eax
	xorl	%edx, %edx
	movw	%dx, (%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE12:
	.p2align 4,,15
	.globl	_e_char
	.def	_e_char;	.scl	2;	.type	32;	.endef
_e_char:
LFB13:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	movb	$0, (%eax)
	movl	(%eax), %eax
	subl	%edx, %eax
	ret
	.cfi_endproc
LFE13:
	.p2align 4,,15
	.globl	_b_1
	.def	_b_1;	.scl	2;	.type	32;	.endef
_b_1:
LFB14:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	movb	$0, (%edx)
	movl	(%eax), %eax
	movb	$1, 1(%eax)
	ret
	.cfi_endproc
LFE14:
	.p2align 4,,15
	.globl	_b_2
	.def	_b_2;	.scl	2;	.type	32;	.endef
_b_2:
LFB15:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	movb	$0, (%edx)
	movl	(%eax), %eax
	movb	$1, 1(%eax)
	ret
	.cfi_endproc
LFE15:
	.p2align 4,,15
	.globl	_c_const
	.def	_c_const;	.scl	2;	.type	32;	.endef
_c_const:
LFB16:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	(%edx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%eax)
	movl	(%edx), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	ret
	.cfi_endproc
LFE16:
	.p2align 4,,15
	.globl	_a_modified
	.def	_a_modified;	.scl	2;	.type	32;	.endef
_a_modified:
LFB17:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	movl	$1, 4(%eax)
	ret
	.cfi_endproc
LFE17:
	.p2align 4,,15
	.globl	_b_modified
	.def	_b_modified;	.scl	2;	.type	32;	.endef
_b_modified:
LFB18:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movb	$0, (%eax)
	movb	$1, 1(%eax)
	ret
	.cfi_endproc
LFE18:
	.p2align 4,,15
	.globl	_c_array
	.def	_c_array;	.scl	2;	.type	32;	.endef
_c_array:
LFB19:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	_array(,%edx,4), %ecx
	addl	$1, %ecx
	movl	%ecx, _array(,%eax,4)
	movl	_array(,%edx,4), %edx
	addl	$1, %edx
	movl	%edx, _array(,%eax,4)
	ret
	.cfi_endproc
LFE19:
	.comm	_array, 4000, 5
	.ident	"GCC: (GNU) 4.8.1"
