	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/builtin-types-compatible-p.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	i                       # @i
	.type	i,@object
	.section	.bss.i,"aw",@nobits
	.globl	i
	.align	2
i:
	.int32	0                       # 0x0
	.size	i, 4

	.hidden	d                       # @d
	.type	d,@object
	.section	.bss.d,"aw",@nobits
	.globl	d
	.align	3
d:
	.int64	0                       # double 0
	.size	d, 8

	.hidden	rootbeer                # @rootbeer
	.type	rootbeer,@object
	.section	.bss.rootbeer,"aw",@nobits
	.globl	rootbeer
	.align	2
rootbeer:
	.skip	4
	.size	rootbeer, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
