	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/longlong.c"
	.section	.text.alpha_ep_extbl_i_eq_0,"ax",@progbits
	.hidden	alpha_ep_extbl_i_eq_0
	.globl	alpha_ep_extbl_i_eq_0
	.type	alpha_ep_extbl_i_eq_0,@function
alpha_ep_extbl_i_eq_0:                  # @alpha_ep_extbl_i_eq_0
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$2=, 0
	i32.load	$0=, pars($2)
	i32.const	$3=, 31
	i32.and 	$1=, $0, $3
	block
	i32.eq  	$push0=, $1, $3
	br_if   	$pop0, 0        # 0: down to label0
# BB#1:                                 # %if.then
	i32.load	$3=, r($2)
	i32.const	$2=, 248
	i32.const	$push18=, 3
	i32.shl 	$push19=, $1, $pop18
	i32.add 	$push20=, $3, $pop19
	i32.const	$push1=, 2
	i32.shr_u	$push2=, $0, $pop1
	i32.and 	$push3=, $pop2, $2
	i32.add 	$push4=, $3, $pop3
	i64.load	$push5=, 0($pop4)
	i32.const	$push6=, 24
	i32.shr_u	$push7=, $0, $pop6
	i32.and 	$push8=, $pop7, $2
	i32.add 	$push9=, $3, $pop8
	i64.load	$push10=, 0($pop9)
	i64.const	$push11=, 3
	i64.shl 	$push12=, $pop10, $pop11
	i64.const	$push13=, 56
	i64.and 	$push14=, $pop12, $pop13
	i64.shr_u	$push15=, $pop5, $pop14
	i64.const	$push16=, 255
	i64.and 	$push17=, $pop15, $pop16
	i64.store	$discard=, 0($pop20), $pop17
.LBB0_2:                                # %if.end
	end_block                       # label0:
	return
.Lfunc_end0:
	.size	alpha_ep_extbl_i_eq_0, .Lfunc_end0-alpha_ep_extbl_i_eq_0

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %alpha_ep_extbl_i_eq_0.exit
	i32.const	$0=, 0
	i32.const	$push2=, -2013265854
	i32.store	$discard=, pars($0), $pop2
	i32.load	$1=, r($0)
	block
	i64.const	$push0=, 3160194
	i64.store	$discard=, b+136($0), $pop0
	i64.const	$push1=, 6003104017374052362
	i64.store	$discard=, b+16($0), $pop1
	i64.load	$push3=, 16($1)
	i64.load	$push4=, 136($1)
	i64.const	$push5=, 3
	i64.shl 	$push6=, $pop4, $pop5
	i64.const	$push7=, 56
	i64.and 	$push8=, $pop6, $pop7
	i64.shr_u	$push9=, $pop3, $pop8
	i64.const	$push10=, 255
	i64.and 	$push11=, $pop9, $pop10
	i64.store	$discard=, 16($1), $pop11
	i64.load	$push12=, b+16($0)
	i64.const	$push13=, 77
	i64.ne  	$push14=, $pop12, $pop13
	br_if   	$pop14, 0       # 0: down to label1
# BB#1:                                 # %if.end
	call    	exit@FUNCTION, $0
	unreachable
.LBB1_2:                                # %if.then
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	b                       # @b
	.type	b,@object
	.section	.bss.b,"aw",@nobits
	.globl	b
	.align	4
b:
	.skip	256
	.size	b, 256

	.hidden	r                       # @r
	.type	r,@object
	.section	.data.r,"aw",@progbits
	.globl	r
	.align	2
r:
	.int32	b
	.size	r, 4

	.hidden	pars                    # @pars
	.type	pars,@object
	.section	.bss.pars,"aw",@nobits
	.globl	pars
	.align	2
pars:
	.int32	0                       # 0x0
	.size	pars, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
