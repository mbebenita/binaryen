	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20001108-1.c"
	.section	.text.signed_poly,"ax",@progbits
	.hidden	signed_poly
	.globl	signed_poly
	.type	signed_poly,@function
signed_poly:                            # @signed_poly
	.param  	i64, i32
	.result 	i64
	.local  	i64
# BB#0:                                 # %entry
	i64.const	$2=, 32
	i64.shl 	$push0=, $0, $2
	i64.shr_s	$push1=, $pop0, $2
	i64.extend_s/i32	$push2=, $1
	i64.mul 	$push3=, $pop1, $pop2
	i64.add 	$push4=, $pop3, $0
	return  	$pop4
.Lfunc_end0:
	.size	signed_poly, .Lfunc_end0-signed_poly

	.section	.text.unsigned_poly,"ax",@progbits
	.hidden	unsigned_poly
	.globl	unsigned_poly
	.type	unsigned_poly,@function
unsigned_poly:                          # @unsigned_poly
	.param  	i64, i32
	.result 	i64
# BB#0:                                 # %entry
	i64.extend_u/i32	$push2=, $1
	i64.const	$push0=, 4294967295
	i64.and 	$push1=, $0, $pop0
	i64.mul 	$push3=, $pop2, $pop1
	i64.add 	$push4=, $pop3, $0
	return  	$pop4
.Lfunc_end1:
	.size	unsigned_poly, .Lfunc_end1-unsigned_poly

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end4
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end2:
	.size	main, .Lfunc_end2-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
