	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr34070-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 31
	i32.shr_s	$push1=, $0, $pop0
	i32.const	$push2=, 30
	i32.shr_u	$push3=, $pop1, $pop2
	i32.add 	$push4=, $0, $pop3
	i32.const	$push5=, -4
	i32.and 	$push6=, $pop4, $pop5
	i32.sub 	$push7=, $0, $pop6
	return  	$pop7
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	return  	$pop0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
