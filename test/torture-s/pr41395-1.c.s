	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr41395-1.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$2=, 1
	i32.shl 	$push0=, $1, $2
	i32.add 	$push1=, $0, $pop0
	i32.const	$push2=, 8
	i32.add 	$1=, $pop1, $pop2
	i32.const	$push3=, 0
	i32.store16	$discard=, 0($1), $pop3
	i32.const	$push4=, 24
	i32.add 	$push5=, $0, $pop4
	i32.store16	$discard=, 0($pop5), $2
	i32.load16_s	$push6=, 0($1)
	return  	$pop6
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block
	i32.const	$push0=, 268
	i32.call	$push1=, malloc@FUNCTION, $pop0
	i32.const	$push2=, 8
	i32.call	$push3=, foo@FUNCTION, $pop1, $pop2
	i32.const	$push4=, 65535
	i32.and 	$push5=, $pop3, $pop4
	i32.const	$push6=, 1
	i32.ne  	$push7=, $pop5, $pop6
	br_if   	$pop7, 0        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push8=, 0
	return  	$pop8
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
