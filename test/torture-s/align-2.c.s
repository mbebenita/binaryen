	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/align-2.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i64
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block
	i32.load8_u	$push0=, s_c_s($0)
	i32.const	$push1=, 97
	i32.ne  	$push2=, $pop0, $pop1
	br_if   	$pop2, 0        # 0: down to label0
# BB#1:                                 # %if.end
	block
	i32.load16_u	$push3=, s_c_s+2($0)
	i32.const	$push4=, 13
	i32.ne  	$push5=, $pop3, $pop4
	br_if   	$pop5, 0        # 0: down to label1
# BB#2:                                 # %if.end6
	block
	i32.load8_u	$push6=, s_c_i($0)
	i32.const	$push7=, 98
	i32.ne  	$push8=, $pop6, $pop7
	br_if   	$pop8, 0        # 0: down to label2
# BB#3:                                 # %if.end11
	block
	i32.load	$push9=, s_c_i+4($0)
	i32.const	$push10=, 14
	i32.ne  	$push11=, $pop9, $pop10
	br_if   	$pop11, 0       # 0: down to label3
# BB#4:                                 # %if.end15
	block
	i32.load16_u	$push12=, s_s_i($0)
	i32.const	$push13=, 15
	i32.ne  	$push14=, $pop12, $pop13
	br_if   	$pop14, 0       # 0: down to label4
# BB#5:                                 # %if.end20
	block
	i32.load	$push15=, s_s_i+4($0)
	i32.const	$push16=, 16
	i32.ne  	$push17=, $pop15, $pop16
	br_if   	$pop17, 0       # 0: down to label5
# BB#6:                                 # %if.end24
	block
	i32.load8_u	$push18=, s_c_f($0)
	i32.const	$push19=, 99
	i32.ne  	$push20=, $pop18, $pop19
	br_if   	$pop20, 0       # 0: down to label6
# BB#7:                                 # %if.end29
	block
	f32.load	$push21=, s_c_f+4($0)
	f32.const	$push22=, 0x1.1p4
	f32.ne  	$push23=, $pop21, $pop22
	br_if   	$pop23, 0       # 0: down to label7
# BB#8:                                 # %if.end34
	block
	i32.load16_u	$push24=, s_s_f($0)
	i32.const	$push25=, 18
	i32.ne  	$push26=, $pop24, $pop25
	br_if   	$pop26, 0       # 0: down to label8
# BB#9:                                 # %if.end39
	block
	f32.load	$push27=, s_s_f+4($0)
	f32.const	$push28=, 0x1.3p4
	f32.ne  	$push29=, $pop27, $pop28
	br_if   	$pop29, 0       # 0: down to label9
# BB#10:                                # %if.end44
	block
	i32.load8_u	$push30=, s_c_d($0)
	i32.const	$push31=, 100
	i32.ne  	$push32=, $pop30, $pop31
	br_if   	$pop32, 0       # 0: down to label10
# BB#11:                                # %if.end49
	block
	f64.load	$push33=, s_c_d+8($0)
	f64.const	$push34=, 0x1.4p4
	f64.ne  	$push35=, $pop33, $pop34
	br_if   	$pop35, 0       # 0: down to label11
# BB#12:                                # %if.end53
	block
	i32.load16_u	$push36=, s_s_d($0)
	i32.const	$push37=, 21
	i32.ne  	$push38=, $pop36, $pop37
	br_if   	$pop38, 0       # 0: down to label12
# BB#13:                                # %if.end58
	block
	f64.load	$push39=, s_s_d+8($0)
	f64.const	$push40=, 0x1.6p4
	f64.ne  	$push41=, $pop39, $pop40
	br_if   	$pop41, 0       # 0: down to label13
# BB#14:                                # %if.end62
	block
	i32.load	$push42=, s_i_d($0)
	i32.const	$push43=, 23
	i32.ne  	$push44=, $pop42, $pop43
	br_if   	$pop44, 0       # 0: down to label14
# BB#15:                                # %if.end66
	block
	f64.load	$push45=, s_i_d+8($0)
	f64.const	$push46=, 0x1.8p4
	f64.ne  	$push47=, $pop45, $pop46
	br_if   	$pop47, 0       # 0: down to label15
# BB#16:                                # %if.end70
	block
	f32.load	$push48=, s_f_d($0)
	f32.const	$push49=, 0x1.9p4
	f32.ne  	$push50=, $pop48, $pop49
	br_if   	$pop50, 0       # 0: down to label16
# BB#17:                                # %if.end75
	block
	f64.load	$push51=, s_f_d+8($0)
	f64.const	$push52=, 0x1.ap4
	f64.ne  	$push53=, $pop51, $pop52
	br_if   	$pop53, 0       # 0: down to label17
# BB#18:                                # %if.end79
	block
	i32.load8_u	$push54=, s_c_ld($0)
	i32.const	$push55=, 101
	i32.ne  	$push56=, $pop54, $pop55
	br_if   	$pop56, 0       # 0: down to label18
# BB#19:                                # %if.end84
	i64.const	$1=, 0
	block
	i64.load	$push58=, s_c_ld+16($0)
	i64.load	$push57=, s_c_ld+24($0)
	i64.const	$push59=, 4612723957404008448
	i32.call	$push60=, __eqtf2@FUNCTION, $pop58, $pop57, $1, $pop59
	br_if   	$pop60, 0       # 0: down to label19
# BB#20:                                # %if.end88
	block
	i32.load16_u	$push61=, s_s_ld($0)
	i32.const	$push62=, 28
	i32.ne  	$push63=, $pop61, $pop62
	br_if   	$pop63, 0       # 0: down to label20
# BB#21:                                # %if.end93
	block
	i64.load	$push65=, s_s_ld+16($0)
	i64.load	$push64=, s_s_ld+24($0)
	i64.const	$push66=, 4612759141776097280
	i32.call	$push67=, __eqtf2@FUNCTION, $pop65, $pop64, $1, $pop66
	br_if   	$pop67, 0       # 0: down to label21
# BB#22:                                # %if.end97
	block
	i32.load	$push68=, s_i_ld($0)
	i32.const	$push69=, 30
	i32.ne  	$push70=, $pop68, $pop69
	br_if   	$pop70, 0       # 0: down to label22
# BB#23:                                # %if.end101
	block
	i64.load	$push72=, s_i_ld+16($0)
	i64.load	$push71=, s_i_ld+24($0)
	i64.const	$push73=, 4612794326148186112
	i32.call	$push74=, __eqtf2@FUNCTION, $pop72, $pop71, $1, $pop73
	br_if   	$pop74, 0       # 0: down to label23
# BB#24:                                # %if.end105
	block
	f32.load	$push75=, s_f_ld($0)
	f32.const	$push76=, 0x1p5
	f32.ne  	$push77=, $pop75, $pop76
	br_if   	$pop77, 0       # 0: down to label24
# BB#25:                                # %if.end110
	block
	i64.load	$push79=, s_f_ld+16($0)
	i64.load	$push78=, s_f_ld+24($0)
	i64.const	$push80=, 4612820714427252736
	i32.call	$push81=, __eqtf2@FUNCTION, $pop79, $pop78, $1, $pop80
	br_if   	$pop81, 0       # 0: down to label25
# BB#26:                                # %if.end114
	block
	f64.load	$push82=, s_d_ld($0)
	f64.const	$push83=, 0x1.1p5
	f64.ne  	$push84=, $pop82, $pop83
	br_if   	$pop84, 0       # 0: down to label26
# BB#27:                                # %if.end118
	block
	i64.load	$push86=, s_d_ld+16($0)
	i64.load	$push85=, s_d_ld+24($0)
	i64.const	$push87=, 4612838306613297152
	i32.call	$push88=, __eqtf2@FUNCTION, $pop86, $pop85, $1, $pop87
	br_if   	$pop88, 0       # 0: down to label27
# BB#28:                                # %if.end122
	return  	$0
.LBB0_29:                               # %if.then121
	end_block                       # label27:
	call    	abort@FUNCTION
	unreachable
.LBB0_30:                               # %if.then117
	end_block                       # label26:
	call    	abort@FUNCTION
	unreachable
.LBB0_31:                               # %if.then113
	end_block                       # label25:
	call    	abort@FUNCTION
	unreachable
.LBB0_32:                               # %if.then109
	end_block                       # label24:
	call    	abort@FUNCTION
	unreachable
.LBB0_33:                               # %if.then104
	end_block                       # label23:
	call    	abort@FUNCTION
	unreachable
.LBB0_34:                               # %if.then100
	end_block                       # label22:
	call    	abort@FUNCTION
	unreachable
.LBB0_35:                               # %if.then96
	end_block                       # label21:
	call    	abort@FUNCTION
	unreachable
.LBB0_36:                               # %if.then92
	end_block                       # label20:
	call    	abort@FUNCTION
	unreachable
.LBB0_37:                               # %if.then87
	end_block                       # label19:
	call    	abort@FUNCTION
	unreachable
.LBB0_38:                               # %if.then83
	end_block                       # label18:
	call    	abort@FUNCTION
	unreachable
.LBB0_39:                               # %if.then78
	end_block                       # label17:
	call    	abort@FUNCTION
	unreachable
.LBB0_40:                               # %if.then74
	end_block                       # label16:
	call    	abort@FUNCTION
	unreachable
.LBB0_41:                               # %if.then69
	end_block                       # label15:
	call    	abort@FUNCTION
	unreachable
.LBB0_42:                               # %if.then65
	end_block                       # label14:
	call    	abort@FUNCTION
	unreachable
.LBB0_43:                               # %if.then61
	end_block                       # label13:
	call    	abort@FUNCTION
	unreachable
.LBB0_44:                               # %if.then57
	end_block                       # label12:
	call    	abort@FUNCTION
	unreachable
.LBB0_45:                               # %if.then52
	end_block                       # label11:
	call    	abort@FUNCTION
	unreachable
.LBB0_46:                               # %if.then48
	end_block                       # label10:
	call    	abort@FUNCTION
	unreachable
.LBB0_47:                               # %if.then43
	end_block                       # label9:
	call    	abort@FUNCTION
	unreachable
.LBB0_48:                               # %if.then38
	end_block                       # label8:
	call    	abort@FUNCTION
	unreachable
.LBB0_49:                               # %if.then33
	end_block                       # label7:
	call    	abort@FUNCTION
	unreachable
.LBB0_50:                               # %if.then28
	end_block                       # label6:
	call    	abort@FUNCTION
	unreachable
.LBB0_51:                               # %if.then23
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
.LBB0_52:                               # %if.then19
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
.LBB0_53:                               # %if.then14
	end_block                       # label3:
	call    	abort@FUNCTION
	unreachable
.LBB0_54:                               # %if.then10
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
.LBB0_55:                               # %if.then5
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
.LBB0_56:                               # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	s_c_s                   # @s_c_s
	.type	s_c_s,@object
	.section	.data.s_c_s,"aw",@progbits
	.globl	s_c_s
	.align	1
s_c_s:
	.int8	97                      # 0x61
	.skip	1
	.int16	13                      # 0xd
	.size	s_c_s, 4

	.hidden	s_c_i                   # @s_c_i
	.type	s_c_i,@object
	.section	.data.s_c_i,"aw",@progbits
	.globl	s_c_i
	.align	2
s_c_i:
	.int8	98                      # 0x62
	.skip	3
	.int32	14                      # 0xe
	.size	s_c_i, 8

	.hidden	s_s_i                   # @s_s_i
	.type	s_s_i,@object
	.section	.data.s_s_i,"aw",@progbits
	.globl	s_s_i
	.align	2
s_s_i:
	.int16	15                      # 0xf
	.skip	2
	.int32	16                      # 0x10
	.size	s_s_i, 8

	.hidden	s_c_f                   # @s_c_f
	.type	s_c_f,@object
	.section	.data.s_c_f,"aw",@progbits
	.globl	s_c_f
	.align	2
s_c_f:
	.int8	99                      # 0x63
	.skip	3
	.int32	1099431936              # float 17
	.size	s_c_f, 8

	.hidden	s_s_f                   # @s_s_f
	.type	s_s_f,@object
	.section	.data.s_s_f,"aw",@progbits
	.globl	s_s_f
	.align	2
s_s_f:
	.int16	18                      # 0x12
	.skip	2
	.int32	1100480512              # float 19
	.size	s_s_f, 8

	.hidden	s_c_d                   # @s_c_d
	.type	s_c_d,@object
	.section	.data.s_c_d,"aw",@progbits
	.globl	s_c_d
	.align	3
s_c_d:
	.int8	100                     # 0x64
	.skip	7
	.int64	4626322717216342016     # double 20
	.size	s_c_d, 16

	.hidden	s_s_d                   # @s_s_d
	.type	s_s_d,@object
	.section	.data.s_s_d,"aw",@progbits
	.globl	s_s_d
	.align	3
s_s_d:
	.int16	21                      # 0x15
	.skip	6
	.int64	4626885667169763328     # double 22
	.size	s_s_d, 16

	.hidden	s_i_d                   # @s_i_d
	.type	s_i_d,@object
	.section	.data.s_i_d,"aw",@progbits
	.globl	s_i_d
	.align	3
s_i_d:
	.int32	23                      # 0x17
	.skip	4
	.int64	4627448617123184640     # double 24
	.size	s_i_d, 16

	.hidden	s_f_d                   # @s_f_d
	.type	s_f_d,@object
	.section	.data.s_f_d,"aw",@progbits
	.globl	s_f_d
	.align	3
s_f_d:
	.int32	1103626240              # float 25
	.skip	4
	.int64	4628011567076605952     # double 26
	.size	s_f_d, 16

	.hidden	s_c_ld                  # @s_c_ld
	.type	s_c_ld,@object
	.section	.data.s_c_ld,"aw",@progbits
	.globl	s_c_ld
	.align	4
s_c_ld:
	.int8	101                     # 0x65
	.skip	15
	.int64	0                       # fp128 27
	.int64	4612723957404008448
	.size	s_c_ld, 32

	.hidden	s_s_ld                  # @s_s_ld
	.type	s_s_ld,@object
	.section	.data.s_s_ld,"aw",@progbits
	.globl	s_s_ld
	.align	4
s_s_ld:
	.int16	28                      # 0x1c
	.skip	14
	.int64	0                       # fp128 29
	.int64	4612759141776097280
	.size	s_s_ld, 32

	.hidden	s_i_ld                  # @s_i_ld
	.type	s_i_ld,@object
	.section	.data.s_i_ld,"aw",@progbits
	.globl	s_i_ld
	.align	4
s_i_ld:
	.int32	30                      # 0x1e
	.skip	12
	.int64	0                       # fp128 31
	.int64	4612794326148186112
	.size	s_i_ld, 32

	.hidden	s_f_ld                  # @s_f_ld
	.type	s_f_ld,@object
	.section	.data.s_f_ld,"aw",@progbits
	.globl	s_f_ld
	.align	4
s_f_ld:
	.int32	1107296256              # float 32
	.skip	12
	.int64	0                       # fp128 33
	.int64	4612820714427252736
	.size	s_f_ld, 32

	.hidden	s_d_ld                  # @s_d_ld
	.type	s_d_ld,@object
	.section	.data.s_d_ld,"aw",@progbits
	.globl	s_d_ld
	.align	4
s_d_ld:
	.int64	4629981891913580544     # double 34
	.skip	8
	.int64	0                       # fp128 35
	.int64	4612838306613297152
	.size	s_d_ld, 32


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
