	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr28403.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32, i32, i32, i32, i32, i32, i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push7=, 0
	i32.add 	$push0=, $1, $0
	i32.add 	$push1=, $pop0, $2
	i32.add 	$push2=, $pop1, $3
	i32.add 	$push3=, $pop2, $4
	i32.add 	$push4=, $pop3, $5
	i32.add 	$push5=, $pop4, $6
	i32.add 	$push6=, $pop5, $7
	i32.store	$discard=, global($pop7), $pop6
	return  	$7
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i64
	.result 	i64
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 1
	i32.const	$push3=, 2
	i32.const	$push2=, 3
	i32.const	$push1=, 4
	i32.const	$push0=, 5
	i32.call	$discard=, foo@FUNCTION, $1, $pop3, $1, $pop2, $1, $pop1, $1, $pop0
	i32.const	$push4=, 0
	i64.load32_u	$push5=, global($pop4)
	i64.shr_u	$push6=, $0, $pop5
	return  	$pop6
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block
	i64.const	$push0=, 81985529216486895
	i64.call	$push1=, bar@FUNCTION, $pop0
	i64.const	$push2=, 312749974122
	i64.ne  	$push3=, $pop1, $pop2
	br_if   	$pop3, 0        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push4=, 0
	call    	exit@FUNCTION, $pop4
	unreachable
.LBB2_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	global                  # @global
	.type	global,@object
	.section	.bss.global,"aw",@nobits
	.globl	global
	.align	2
global:
	.int32	0                       # 0x0
	.size	global, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
