	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr44828.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block
	i32.load8_u	$push0=, a($0)
	i32.const	$push1=, -939524096
	i32.mul 	$push2=, $pop0, $pop1
	i32.const	$push3=, 24
	i32.shr_s	$push4=, $pop2, $pop3
	i32.const	$push5=, 1
	i32.ge_s	$push6=, $pop4, $pop5
	br_if   	$pop6, 0        # 0: down to label0
# BB#1:                                 # %if.end
	return  	$0
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	a                       # @a
	.type	a,@object
	.section	.data.a,"aw",@progbits
	.globl	a
	.align	2
a:
	.int32	274686410               # 0x105f61ca
	.size	a, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
