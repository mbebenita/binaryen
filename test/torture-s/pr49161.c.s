	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr49161.c"
	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$1=, 0
	i32.load	$2=, c($1)
	block
	i32.const	$push0=, 1
	i32.add 	$push1=, $2, $pop0
	i32.store	$discard=, c($1), $pop1
	i32.ne  	$push2=, $2, $0
	br_if   	$pop2, 0        # 0: down to label0
# BB#1:                                 # %if.end
	return
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar

	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 2
	block
	block
	block
	block
	i32.const	$push0=, -3
	i32.add 	$push1=, $0, $pop0
	i32.ge_u	$push2=, $pop1, $1
	br_if   	$pop2, 0        # 0: down to label4
# BB#1:                                 # %l4
	i32.const	$push8=, 0
	call    	bar@FUNCTION, $pop8
	i32.const	$push9=, 4
	i32.eq  	$push10=, $0, $pop9
	br_if   	$pop10, 1       # 1: down to label3
# BB#2:                                 # %if.then.thread
	i32.const	$push11=, 1
	call    	bar@FUNCTION, $pop11
	br      	2               # 2: down to label2
.LBB1_3:                                # %entry
	end_block                       # label4:
	i32.const	$push3=, 6
	i32.ne  	$push4=, $0, $pop3
	br_if   	$pop4, 2        # 2: down to label1
# BB#4:                                 # %if.then
	i32.const	$push5=, -1
	call    	bar@FUNCTION, $pop5
	i32.const	$push6=, 0
	call    	bar@FUNCTION, $pop6
	i32.const	$push7=, 1
	call    	bar@FUNCTION, $pop7
.LBB1_5:                                # %if.then4
	end_block                       # label3:
	i32.const	$push12=, -1
	call    	bar@FUNCTION, $pop12
.LBB1_6:                                # %if.end5
	end_block                       # label2:
	call    	bar@FUNCTION, $1
.LBB1_7:                                # %return
	end_block                       # label1:
	return
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 3
	call    	foo@FUNCTION, $0
	i32.const	$1=, 0
	block
	i32.load	$push0=, c($1)
	i32.ne  	$push1=, $pop0, $0
	br_if   	$pop1, 0        # 0: down to label5
# BB#1:                                 # %if.end
	return  	$1
.LBB2_2:                                # %if.then
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	c                       # @c
	.type	c,@object
	.section	.bss.c,"aw",@nobits
	.globl	c
	.align	2
c:
	.int32	0                       # 0x0
	.size	c, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
