	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr41919.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	return  	$pop0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	g_23                    # @g_23
	.type	g_23,@object
	.section	.bss.g_23,"aw",@nobits
	.globl	g_23
	.align	2
g_23:
	.int32	0                       # 0x0
	.size	g_23, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
