	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20060929-1.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
	.local  	i32
# BB#0:                                 # %entry
	i32.load	$2=, 0($0)
	i32.load	$1=, 0($1)
	i32.const	$push0=, 4
	i32.add 	$push1=, $2, $pop0
	i32.store	$discard=, 0($0), $pop1
	i32.store	$discard=, 0($2), $1
	return
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32, i32
	.local  	i32
# BB#0:                                 # %entry
	i32.load	$2=, 0($0)
	i32.load	$push0=, 0($1)
	i32.store	$discard=, 0($2), $pop0
	i32.const	$push1=, 4
	i32.add 	$push2=, $2, $pop1
	i32.store	$discard=, 0($0), $pop2
	return
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar

	.section	.text.baz,"ax",@progbits
	.hidden	baz
	.globl	baz
	.type	baz,@function
baz:                                    # @baz
	.param  	i32, i32
	.local  	i32
# BB#0:                                 # %entry
	i32.load	$2=, 0($0)
	i32.load	$push0=, 0($1)
	i32.store	$discard=, 0($2), $pop0
	i32.const	$push1=, 4
	i32.add 	$push2=, $2, $pop1
	i32.store	$discard=, 0($0), $pop2
	return
.Lfunc_end2:
	.size	baz, .Lfunc_end2-baz

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end19
	i32.const	$push0=, 0
	return  	$pop0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
