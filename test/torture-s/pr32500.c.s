	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr32500.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.store	$discard=, x($pop0), $0
	return
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %if.then4
	i32.const	$push0=, 57005
	call    	foo@FUNCTION, $pop0
	i32.const	$push1=, 48879
	call    	foo@FUNCTION, $pop1
	i32.const	$push2=, 4919
	call    	foo@FUNCTION, $pop2
	i32.const	$push3=, 16962
	call    	foo@FUNCTION, $pop3
	call    	bar@FUNCTION
	unreachable
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	x                       # @x
	.type	x,@object
	.section	.bss.x,"aw",@nobits
	.globl	x
	.align	2
x:
	.int32	0                       # 0x0
	.size	x, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
