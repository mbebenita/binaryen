	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/float-floor.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	f64, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$1=, 0
	f64.load	$push0=, d($1)
	f64.floor	$0=, $pop0
	i32.trunc_s/f64	$2=, $0
	i32.const	$3=, 1023
	block
	i32.ne  	$push1=, $2, $3
	br_if   	$pop1, 0        # 0: down to label0
# BB#1:                                 # %lor.lhs.false
	f32.demote/f64	$push2=, $0
	i32.trunc_s/f32	$push3=, $pop2
	i32.ne  	$push4=, $pop3, $3
	br_if   	$pop4, 0        # 0: down to label0
# BB#2:                                 # %if.end
	return  	$1
.LBB0_3:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	d                       # @d
	.type	d,@object
	.section	.data.d,"aw",@progbits
	.globl	d
	.align	3
d:
	.int64	4652218414805286912     # double 1023.9999694824219
	.size	d, 8


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
